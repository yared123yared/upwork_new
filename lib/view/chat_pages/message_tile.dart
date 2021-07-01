import 'dart:convert';

import 'package:complex/data/models/response/channel_model/message_model.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/time_ago_provider/time_ago_provider.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/// Here are some logic behind the codes
/// 0 ~> is for text message
/// 1 ~> is for image
/// 2 ~> is for videos

class MessageTile extends StatelessWidget {
  final MessageModel messageModel;
  final bool isMine;

  MessageTile({@required this.messageModel, @required this.isMine});

  @override
  Widget build(BuildContext context) {
    return isMine
        ? myMsgTile(messageModel.dateTime, messageModel.msg, context)
        : otherMsgTile(messageModel.from, messageModel.dateTime,
            messageModel.msg, context);
  }

  Widget otherMsgTile(
      String name, DateTime dateTime, String message, BuildContext context) {
    var messageDecode = json.decode(message);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: ColorConstants.primaryColor,
                foregroundColor: Colors.white,
                child: Text(
                  name.substring(0, 2).toUpperCase(),
                  style: Styles.normalText(color: Colors.white),
                ),
              ),
              Utility.size(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Styles.normalText(
                        color: ColorConstants.secondaryTextBlue),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 3),
                    /*constraints: BoxConstraints(
                      maxWidth: width * 60,
                    ),*/
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorConstants.secondaryTextBlue.withOpacity(0.1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: messageDecode['type'] == 0
                        ? Text(
                            messageDecode['msg'],
                            style: Styles.normalText(color: Colors.black),
                          )
                        : messageDecode['type'] == 1
                            ? ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                ),
                                child: FadeInImage.assetNetwork(
                                  height: MediaQuery.of(context).size.width / 2,
                                  width: MediaQuery.of(context).size.width / 2,
                                  placeholder: 'assets/logo.png',
                                  image: messageDecode['msg'],
                                  fit: BoxFit.cover,
                                ),
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                ),
                                child: VideoThumbnil(messageDecode['msg']),
                              ),
                  )
                ],
              ),
            ],
          ),
          Text(
            format(dateTime),
            style: Styles.normalText(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget myMsgTile(DateTime dateTime, String message, BuildContext context) {
    var messageDecode = json.decode(message);
    // print(dateTime);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 3),
            /*constraints: BoxConstraints(
              maxWidth: width * 60,
            ),*/
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorConstants.secondaryTextBlue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            child: messageDecode['type'] == 0
                ? Text(
                    messageDecode['msg'],
                    style: Styles.normalText(color: Colors.white),
                  )
                : messageDecode['type'] == 1
                    ? ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        child: FadeInImage.assetNetwork(
                          height: MediaQuery.of(context).size.width / 2,
                          width: MediaQuery.of(context).size.width / 2,
                          placeholder: 'assets/logo.png',
                          image: messageDecode['msg'],
                          fit: BoxFit.cover,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        child: VideoThumbnil(messageDecode['msg']),
                      ),
          ),
          Text(
            format(dateTime),
            style: Styles.normalText(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class VideoThumbnil extends StatefulWidget {
  final String url;

  VideoThumbnil(this.url);

  @override
  _VideoThumbnilState createState() => _VideoThumbnilState();
}

class _VideoThumbnilState extends State<VideoThumbnil> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 2,
      width: MediaQuery.of(context).size.width / 2,
      child: _controller.value.isInitialized
          ? AspectRatio(
              key: GlobalKey(debugLabel: widget.url),
              aspectRatio: _controller.value.aspectRatio,
              child: TapWidget(
                onTap: () {
                  Navigator.push(context, NextPageRoute(VideoPlay(widget.url)));
                },
                child: VideoPlayer(_controller),
              ),
            )
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }
}

class VideoPlay extends StatefulWidget {
  final String url;

  VideoPlay(this.url);

  @override
  _VideoPlaylState createState() => _VideoPlaylState();
}

class _VideoPlaylState extends State<VideoPlay> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: TapWidget(
                onTap: () {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                },
                child: VideoPlayer(_controller),
              ),
            )
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }
}
