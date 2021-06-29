import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/blocs/bloc_manager.dart';
import 'package:complex/blocs/channels_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/models/response/channel_model/channel_model.dart';
import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/main.dart';
import 'package:complex/pages/chat_pages/UserResponseScreen.dart';
import 'package:complex/pages/chat_pages/chat_page.dart';
import 'package:complex/pages/chat_pages/common_list_tile.dart';
import 'package:complex/pages/chat_pages/list_state.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:provider/provider.dart';

enum EntitySetupMenu { Hidden, Complex, Service }

class ChannelsListPage extends StatefulWidget {
  final EntitySetupMenu entitySetupMenu;

  ChannelsListPage({
    this.entitySetupMenu = EntitySetupMenu.Hidden,
  });

  static _ChannelsListPageState of(BuildContext context, {bool root = false}) =>
      root
          ? context.findRootAncestorStateOfType()
          : context.findAncestorStateOfType();

  @override
  _ChannelsListPageState createState() => _ChannelsListPageState();
}

Map<String, List<ChannelModel>> channelsList;

class _ChannelsListPageState extends State<ChannelsListPage> {
  var _key = GlobalKey<ScaffoldState>();
  bool _isLoading = false;
  final String demoDetails =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,";
  ChannelsBloc _channelsBloc;
  UserRepository _userRepository = Injector.appInstance.get<UserRepository>();

  @override
  void initState() {
    super.initState();
    if (SchedulerBinding.instance.schedulerPhase ==
        SchedulerPhase.persistentCallbacks) {
      SchedulerBinding.instance.addPostFrameCallback((duration) {
        Utility.waitForMili(500).then((value) => _ifNotificationHasData());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Application(context);
    _channelsBloc = Provider.of<ChannelsBloc>(context);
    return BlocManager(
      initState: (context) {
        _channelsBloc.add(GetChannelsEvent(request: _userRepository.getUser()));
      },
      child: BlocListener<ChannelsBloc, ChannelsState>(
        listener: (context, state) {
          if (state is GetChannelsState) _handleChannelsListResponse(state);
          if (state is ActivateDeactivateChannelState)
            _handleChannelActivateDeactivateResponse(state);
        },
        child: BlocBuilder<ChannelsBloc, ChannelsState>(
          builder: (context, state) {
            return Scaffold(
              key: _key,
              appBar: AppBar(
                title: Text("Channels"),
              ),
              body: ScreenWithLoader(
                isLoading: _isLoading,
                body: channelsList == null
                    ? null
                    : SingleChildScrollView(
                        child: Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: channelsList?.length,
                              itemBuilder:
                                  (BuildContext context, int keyIndex) {
                                String currentKey =
                                    channelsList.keys.toList()[keyIndex];
                                return ExtentionWidgetTile(
                                    channelsList[currentKey],
                                    currentKey,
                                    _channelsBloc);
                              },
                            ),
                          ],
                        ),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleChannelsListResponse(GetChannelsState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        if (state.response != null && state.response.data != null){
          print("Newwwwwwwwwwwwwwwwwwwwwwwwww data");
          channelsList = state.response.data;
        }
        _isLoading = false;
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  void _handleChannelActivateDeactivateResponse(
      ActivateDeactivateChannelState state) {
    print("state ActivateDeactivateChannelState ${state.apiState}");
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _userRepository.setUser(_userRepository.getUser().userID).then(
            (value) => _channelsBloc
                .add(GetChannelsEvent(request: _userRepository.getUser())));
        // _isLoading = false;
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  ///1 show only message
  ///2 show msg and get response from user in Accept/Reject
  ///3 not clear ask to Rajesh
  ///4 ho to chat room
  ///4 is also not clear ask to Rajesh
  void _ifNotificationHasData() {
    if (UserSession.notificationData != null) {
      var id = Platform.isIOS
          ? UserSession.notificationData['reqresponsetype']
          : UserSession.notificationData['data']['reqresponsetype'];
      if (id.toString() == "1") {
        Navigator.push(context, NextPageRoute(UserResponseScreen()));
      } else if (id.toString() == "2") {
        Navigator.push(context, NextPageRoute(UserResponseScreen()));
      } else if (id.toString() == "3") {
        Navigator.push(context, NextPageRoute(UserResponseScreen()));
      } else if (id.toString() == "4") {
        UserSession.notificationData = null;
      } else if (id.toString() == "5") {
        var cname = Platform.isIOS
            ? UserSession.notificationData['cinfo']['reqresponsetype']
            : UserSession.notificationData['data']['cinfo']['reqresponsetype'];
        var channel = Platform.isIOS
            ? UserSession.notificationData['cinfo']['reqresponsetype']
            : UserSession.notificationData['data']['cinfo']['reqresponsetype'];
        var rights = Platform.isIOS
            ? UserSession.notificationData['cinfo']['reqresponsetype']
            : UserSession.notificationData['data']['cinfo']['reqresponsetype'];
        var enabled = Platform.isIOS
            ? UserSession.notificationData['cinfo']['reqresponsetype']
            : UserSession.notificationData['data']['cinfo']['reqresponsetype'];
        var uniqueid = Platform.isIOS
            ? UserSession.notificationData['cinfo']['reqresponsetype']
            : UserSession.notificationData['data']['cinfo']['reqresponsetype'];
        UserSession.notificationData = null;
        Navigator.push(
          context,
          NextPageRoute(
            ChatPage(
              channelMetaModel: ChannelModel(
                id: channel,
                isActive: enabled,
                right: rights.toString().toUpperCase() == "RW"
                    ? ChannelRights.rw
                    : ChannelRights.r,
                roomName: cname,
              ),
              user: _userRepository.getUser(),
            ),
          ),
        );
      }
    }
  }
}

class ExtentionWidgetTile extends StatefulWidget {
  List<ChannelModel> channelsList;
  String currentKey;
  ChannelsBloc channelsBloc;

  ExtentionWidgetTile(this.channelsList, this.currentKey, this.channelsBloc);

  @override
  _ExtentionWidgetTileState createState() => _ExtentionWidgetTileState();
}

StreamController<bool> hasChanges = StreamController<bool>.broadcast();

class _ExtentionWidgetTileState extends State<ExtentionWidgetTile> {
  var _userRepository = Injector.appInstance.get<UserRepository>();
  var _hasNewMessage = false;
  ChannelsProvider _channelsProvider =
      Injector.appInstance.get<ChannelsProvider>();
  var _isOpen = false;
  String _userChannelId;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          StreamBuilder(
            stream: hasChanges.stream,
            builder: (context, snapshot) {
              return Container(
                decoration: BoxDecoration(
                    color: _hasNewMessage
                        ? ColorConstants.blue.withOpacity(0.2)
                        : Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(_isOpen ? 0 : 10),
                        bottomRight: Radius.circular(_isOpen ? 0 : 10))),
                child: TapWidget(
                  onTap: () {
                    setState(() {
                      _isOpen = !_isOpen;
                      if (_isOpen) _hasNewMessage = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.currentKey,
                          style: Styles.semiBoldText(
                              color: ColorConstants.primaryColor),
                        ),
                        Icon(
                          _isOpen
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down_outlined,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          _childItems()
        ],
      ),
    );
  }

  _childItems() {
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: Column(
        children: widget.channelsList
            .asMap()
            .map(
              (index, channel) => MapEntry(
                index,
                StreamBuilder(
                  stream:
                      _channelsProvider.listenToChannelChange(id: channel.id),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (mounted) {
                      var original = snapshot?.data?.docs;
                      var changes = snapshot?.data?.docChanges;
                      if (changes?.length != original?.length) {
                        _hasNewMessage =
                            (changes?.length != original?.length);
                        _userChannelId = channel.id;
                      } else {
                        _hasNewMessage = (changes?.length != original?.length);
                      }
                      hasChanges.add(true);
                    }
                    return Visibility(
                      visible: _isOpen,
                      child: CommonListTile(
                        hasNewMessage: _userChannelId == channel.id,
                        isEnabled: channel.isActive,
                        listState: ListStateClass(
                          title: channel.roomName,
                          tapAction: () {
                            if (channel.isActive) {
                              _goToChat(channel);
                            } else {
                              Utility.showSnackBar(
                                  key: ChannelsListPage.of(context)._key,
                                  message: "Channel is deactivated");
                            }
                          },
                          deleteAction: () {
                            widget.channelsBloc.add(
                              ActivateDeactivateChannelEvent(
                                channel: channel,
                                userID: _userRepository.getUser().userID,
                                status: !channel.isActive,
                              ),
                            );
                          },
                          // editAction: (){}
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
            .values
            .toList(),
      ),
    );
  }

  Future<void> _goToChat(ChannelModel channel) async {
    _userChannelId = null;
    final result = await Navigator.push(
      context,
      NextPageRoute(
        ChatPage(
          channelMetaModel: channel,
          user: _userRepository.getUser(),
        ),
      ),
    );
    widget.channelsBloc
        .add(GetChannelsEvent(request: _userRepository.getUser()));
  }
}
