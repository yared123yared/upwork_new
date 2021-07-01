import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/blocs/channels_bloc.dart';
import 'package:complex/data/models/response/channel_model/channel_model.dart';
import 'package:complex/data/models/response/channel_model/message_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/main.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/utils/local_db_util.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

import 'message_tile.dart';

class ChatPage extends StatefulWidget {
  final ChannelModel channelMetaModel;
  final UserModel user;

  ChatPage({
    @required this.channelMetaModel,
    @required this.user,
  });

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>
    with SingleTickerProviderStateMixin {
  final _messageController = TextEditingController();
  final ScrollController _controller = ScrollController();
  bool valid = true;
  List<MessageModel> oldMsgList = [];
  List<MessageModel> msgList = [];
  ChannelsBloc _bloc;
  ChannelsProvider _channelsProvider =
      Injector.appInstance.get<ChannelsProvider>();
  var _key = GlobalKey<ScaffoldState>();
  StreamSubscription<QuerySnapshot> _messageSubscription;
  AnimationController controller;
  Animation<double> animation;
  bool _showProgress = false;
  LocalDbUtil _dbUtil = LocalDbUtil.getInstance();

  void listToDown() {
    _controller.animateTo(
      _controller.position.minScrollExtent,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  void initState() {
    super.initState();
    /* _dbUtil.getChatFromChannel(widget.channelMetaModel.id).then((value) {
      if (value != null) {
        print("LOCAL DB ==> ${value}");
        oldMsgList = MessageModel.listFromLocalDb(value);
        print("LOCAL DB List ==> ${oldMsgList.length}");
      }
    });*/
    _messageSubscription = _channelsProvider
        .getChatList(channelMetaModel: widget.channelMetaModel)
        .listen((event) {
      event.docChanges.forEach((element) {
        print("Listen to data ${element.doc.data()}");
      });
      setState(() {
        var _msgList = MessageModel.listFromSnapshot(event.docs.toList());
        msgList.clear();
        msgList.addAll(_msgList);
        msgList.addAll(oldMsgList);
      });
      listToDown();
    });
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    Application(context);
    _bloc = Provider.of<ChannelsBloc>(context);
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, true);
        return false;
      },
      child: BlocListener<ChannelsBloc, ChannelsState>(
        listener: (BuildContext context, ChannelsState state) {},
        child: BlocBuilder<ChannelsBloc, ChannelsState>(
          builder: (BuildContext context, ChannelsState channelsState) {
            return Scaffold(
              key: _key,
              appBar: AppBar(
                title: Text(widget.channelMetaModel.roomName),
                leading: TapWidget(
                  onTap: () {
                    Navigator.pop(context, true);
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      shrinkWrap: true,
                      controller: _controller,
                      itemCount: msgList.length,
                      padding: EdgeInsets.all(10.0),
                      itemBuilder: (context, index) {
                        return MessageTile(
                          messageModel: msgList[index],
                          isMine: msgList[index].from == widget.user.name,
                        );
                      },
                    ),
                  ),
                  // widget.channelMetaModel.right == ChannelRights.rw ?
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 65,
                    child: Column(
                      children: [
                        Visibility(
                          child: LinearProgressIndicator(
                            value: animation.value,
                          ),
                          visible: _showProgress,
                        ),
                        Utility.size(),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(35.0),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        blurRadius: 5,
                                        color: Colors.grey)
                                  ],
                                ),
                                child: TextFormField(
                                  controller: _messageController,
                                  decoration: InputDecoration(
                                    prefixIcon: imageButton(),
                                    hintText: "Type Something...",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            sendButton(context)
                          ],
                        ),
                      ],
                    ),
                  )
                  // : const SizedBox.shrink(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  imageButton() {
    return IconButton(
      icon: Icon(Icons.photo_camera),
      color: ColorConstants.primaryColor,
      onPressed: () {
        print("qwerty");
        if (_showProgress) {
          Utility.showSnackBar(
              key: _key, message: "Please wait while one media is sharing");
          return;
        }
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TapWidget(
                    onTap: () {
                      Navigator.pop(context);
                      sendImage();
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Image",
                        style: Styles.boldText(
                            size: 18, color: ColorConstants.primaryColor),
                      ),
                    ),
                  ),
                  Divider(),
                  TapWidget(
                    onTap: () {
                      Navigator.pop(context);
                      sendVideo();
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Video",
                        style: Styles.boldText(
                            size: 18, color: ColorConstants.primaryColor),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  Container sendButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        child: Icon(
          Icons.send,
          color: ColorConstants.primaryColor,
        ),
        onTap: sendMessage,
      ),
    );
  }

  sendMessage() {
    if (_showProgress) {
      Utility.showSnackBar(
          key: _key, message: "Please wait while one media is sharing");
      return;
    }
    if (_messageController.text.trim().isNotEmpty) {
      MessageModel msg = MessageModel(
        from: widget.user.name,
        msg: json.encode({"type": 0, "msg": _messageController.text.trim()}),
        to: "",
        version: 0,
      );
      print("save data value  ${FieldValue.serverTimestamp().toString()}");
      _channelsProvider.sendNewMsg(
          msg: msg, channelMetaModel: widget.channelMetaModel);
      _dbUtil.addDataToChannel('rqItG6fJZKF9fnlrZI7A', msg.toLocalData());
      _messageController.text = "";
      listToDown();
    }
  }

  sendImage() async {
    var permission = await Permission.storage.request();

    if (permission.isGranted) {
      var files = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.image,
      );

      if (files?.files?.first != null) {
        setState(() {
          _showProgress = true;
          controller.repeat();
        });
        var image = await _channelsProvider.sendFile(
            widget.channelMetaModel.id, files?.files?.first?.path);
        if (image != null) {
          MessageModel msg = MessageModel(
            from: widget.user.name,
            msg: json.encode({"type": 1, "msg": image}),
            to: "",
            version: 0,
          );
          _channelsProvider.sendNewMsg(
              msg: msg, channelMetaModel: widget.channelMetaModel);
          setState(() {
            _showProgress = false;
            controller.stop();
          });
          listToDown();
        } else {
          setState(() {
            _showProgress = false;
            controller.stop();
          });
          Utility.showSnackBar(key: _key, message: 'Something went wrong');
        }
      }
    } else {
      Utility.showSnackBar(key: _key, message: 'Storage permission is denied');
    }
  }

  sendVideo() async {
    var permission = await Permission.storage.request();

    if (permission.isGranted) {
      var files = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.video,
      );

      if (files?.files?.first != null) {
        if (!files?.files?.first?.path?.contains(".mp4")) {
          Utility.showSnackBar(key: _key, message: 'Only Mp4 video is allowed');
          return;
        }
        setState(() {
          _showProgress = true;
          controller.repeat();
        });
        var video = await _channelsProvider.sendFile(
            widget.channelMetaModel.id, files?.files?.first?.path);
        if (video != null) {
          MessageModel msg = MessageModel(
            from: widget.user.name,
            msg: json.encode({"type": 2, "msg": video}),
            to: "",
            version: 0,
          );
          _channelsProvider.sendNewMsg(
              msg: msg, channelMetaModel: widget.channelMetaModel);
          setState(() {
            _showProgress = false;
            controller.stop();
          });
          listToDown();
        } else {
          setState(() {
            _showProgress = false;
            controller.stop();
          });
          Utility.showSnackBar(key: _key, message: 'Something went wrong');
        }
      }
    } else {
      Utility.showSnackBar(key: _key, message: 'Storage permission is denied');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _messageController.dispose();
    _messageSubscription.cancel();
    Utility.hideKeyboard();
    super.dispose();
  }
}
