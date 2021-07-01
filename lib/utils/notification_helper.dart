import 'dart:async';
import 'dart:io';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/blocs/channels_bloc.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/main.dart';
import 'package:complex/view/chat_pages/channel_list_page.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:device_info/device_info.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:overlay_support/overlay_support.dart';

import 'log.dart';

class NotificationHelper {
  static NotificationHelper _notificationHelper;
  static FirebaseMessaging _firebaseMessaging;

  static getInstance() {
    if (_notificationHelper == null) {
      _firebaseMessaging = FirebaseMessaging();
      _notificationHelper = new NotificationHelper._();
    }
    return _notificationHelper;
  }

  NotificationHelper._();

  void updateToken() async {
    UserRepository _repo = Injector.appInstance.get<UserRepository>();
    var token = await _firebaseMessaging.getToken();
    var deviceToken = await _getDeviceID();
    _saveTokenForEntity(
      userId: _repo.getUser().userID,
      deviceId: deviceToken,
      token: token,
    );
    Log.v("Firebase Token : $token \n ${_repo.getUser().userID}");
  }

  void setFcm() {
    _firebaseMessaging.requestNotificationPermissions(
        // sound: true,
        // badge: true,
        // alert: true,
        // provisional: false,
        );

    _firebaseMessaging.configure(onMessage: _onMessage, onResume: _onResume);
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   _onMessage(message);
    // });
    // FirebaseMessaging.onMessageOpenedApp.listen((event) {
    //   _onResume(event.data);
    // });
  }

  Future<dynamic> _onResume(Map<String, dynamic> message) {
    Log.v('onResume --> $message');
    _refreshUserData(message, true);
    return null;
  }

  Future<dynamic> _onMessage(Map<String, dynamic> message) {
    Log.v('onMessage called --> ${message}');
    _refreshUserData(message, false);
    _shownotification(message);
    return null;
  }

  Future<dynamic> _shownotification(Map<String, dynamic> message) {
    try {
      showOverlayNotification((context) {
        return SafeArea(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                OverlaySupportEntry.of(context).dismiss();
                UserSession.notificationData = message;
                Navigator.push(Application.getContext(),
                    NextPageRoute(ChannelsListPage()));
              },
              child: SafeArea(
                child: ListTile(
                  title: Text(
                    message['title'],
                    maxLines: 2,
                  ),
                  subtitle: Text(
                    'message.notification.body',
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
        );
      }, duration: Duration(milliseconds: 4000));
    } catch (e) {}
  }

  _refreshUserData(Map<String, dynamic> message, bool isClicked) {
    UserRepository _repo = Injector.appInstance.get<UserRepository>();
    _repo.setUser(_repo.getUser().userID).then((value) {
      BlocProvider.of<ChannelsBloc>(Application.getContext())
          .add(GetChannelsEvent(request: _repo.getUser()));
      hasChanges.add(true);
      if (isClicked) {
        Navigator.push(
            Application.getContext(), NextPageRoute(ChannelsListPage()));
      }
    });
  }

  Future _saveTokenForEntity({
    @required String userId,
    @required String deviceId,
    @required String token,
  }) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'SaveTokenInEntityModified',
      );
      await callable.call(<String, dynamic>{
        'appuserid': userId,
        'action': "add",
        'token': token,
        'deviceid': deviceId,
      });
    } catch (e) {}
  }

  Future<bool> sendNotificationResponse({
    @required String reqtype,
    @required String userresponse,
    @required String reqidentifier,
  }) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'NotificationResponse',
      );
      await callable.call(<String, dynamic>{
        'reqtype': reqtype,
        'userresponse': userresponse,
        'reqidentifier': reqidentifier
      });
      return true;
    } catch (e) {
      print("sendNotificationResponse EX $e");
      return false;
    }
  }

  Future<String> _getDeviceID() async {
    String deviceID;
    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceID = build.androidId;
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceID = data.identifierForVendor;
      }
    } on PlatformException {
      print('Failed to get platform version');
    }
    return deviceID;
  }
}
/*{notification: {title: CHAT Request, body: A user has requested to chat with you},
 data: {reqresponsetype: 4, requestmsg: A user has requested to chat with you, cinfo:
 {"cname": "USER:Tushar Dubey", "channel": "LtqQYdQUir1YJFNqilgE", "rights": "rw", "uniqueid":
  "U_ypnDg9k0pVg5DW0KrEUZeh3wAcE3@@@U_ypnDg9k0pVg5DW0KrEUZeh3wAcE3", "enabled": true, "uid": 2},
   reqtype: CHATROOMCREATE}}
*/

/*{notification: {title: CHAT Request, body: A user has disabled chat with you},
 data: {reqresponsetype: 6, requestmsg: A user has disabled chat with you, cinfo:
  {"channel": "8TNGzNx7C6tPiyxHuTcf", "rights": "rw", "uniqueid": "U_79gE5SnVjQPtQ2weFsncv19TWrY2@@@U_ypnDg9k0pVg5DW0KrEUZeh3wAcE3",
   "enabled": false, "cname": "USER:Tushar Dubey", "uid": 2}, reqtype: CHATROOMDISABLED}}*/

/*{notification: {title: CHAT Request, body: A user has enabled-requested chat with you},
 data: {reqresponsetype: 5, requestmsg: A user has enabled-requested chat with you, cinfo:
 {"channel": "8TNGzNx7C6tPiyxHuTcf", "rights": "rw", "uniqueid": "U_79gE5SnVjQPtQ2weFsncv19TWrY2@@@U_ypnDg9k0pVg5DW0KrEUZeh3wAcE3",
 "enabled": true, "cname": "USER:Tushar Dubey", "uid": 2}, reqtype: CHATROOMENABLED}}*/

/*{notification: {title: ADHOCVISITOR, body: TEST MESSAGE},
data: {reqidentifier: /SERVICEPROVIDERINFO/AaYe2dncEy4k9Iz6T5LT/FEEPLANS/a,
 reqresponsenotification: TOKENFORFCM, reqresponsetype: 2, requestmsg: TEST MESSAGE,
 reqtype: ADHOCVISITOR}}*/
