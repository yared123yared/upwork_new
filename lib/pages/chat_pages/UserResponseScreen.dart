import 'dart:io';

import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/utils/notification_helper.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';

class UserResponseScreen extends StatefulWidget {
  @override
  _UserResponseScreenState createState() => _UserResponseScreenState();
}

class _UserResponseScreenState extends State<UserResponseScreen> {
  String _msg;
  String _id;
  String _reqtype;
  NotificationHelper _helper = NotificationHelper.getInstance();
  String _reqidentifier;
  var _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    if (UserSession.notificationData != null) {
      var message = UserSession.notificationData;
      _msg = Platform.isIOS
          ? message['requestmsg']
          : message['data']['requestmsg'];
      _id = Platform.isIOS
          ? message['reqresponsetype']
          : message['data']['reqresponsetype'];
      if (_id.toString() == "2") {
        _reqidentifier = Platform.isIOS
            ? message['reqidentifier']
            : message['data']['reqidentifier'];
      }
      _reqtype =
          Platform.isIOS ? message['reqtype'] : message['data']['reqtype'];
    }
    UserSession.notificationData = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _msg ?? "",
              style: Styles.normalText(),
            ),
            SizedBox(
              height: 50,
            ),
            Visibility(
              visible: _id == "2",
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    text: "Accept",
                    onTap: () {
                      _helper.sendNotificationResponse(
                        reqtype: _reqtype,
                        userresponse: "ACCEPT",
                        reqidentifier: _reqidentifier,
                      ).then((value){
                        if(value!=null && value){
                          Navigator.pop(context);
                        }
                      });
                    },
                    width: MediaQuery.of(context).size.width / 2.5,
                    borderColor: ColorConstants.primaryColor,
                  ),
                  CustomButton(
                    text: "Reject",
                    onTap: () {
                      _helper.sendNotificationResponse(
                        reqtype: _reqtype,
                        userresponse: "ACCEPT",
                        reqidentifier: _reqidentifier,
                      ).then((value){
                        if(value!=null && value){

                          Navigator.pop(context);
                        }
                      });
                    },
                    width: MediaQuery.of(context).size.width / 2.5,
                    borderColor: ColorConstants.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
