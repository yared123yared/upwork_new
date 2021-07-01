import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';

class CreateNewChatLauncher extends StatefulWidget {
  @override
  _CreateNewChatLauncherState createState() => _CreateNewChatLauncherState();
}

class _CreateNewChatLauncherState extends State<CreateNewChatLauncher> {
  UserRepository _userRepository = Injector.appInstance.get<UserRepository>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: TapWidget(
          onTap: () {
            createChannel(
              CreateChatRequest(
                channelowner: _userRepository.getUser().userID,
                channelownername:"Check Channel",
                channelownertype: "USER",
                requestorid: _userRepository.getUser().userID,
                requestoriginentityid: _userRepository.getUser().userID,
                requestoriginentitytype: "USER",
                requestorignatingname:  _userRepository.getUser().name,
              ),
            ).then((value) {
              if (value != null) {
                /*_userRepository
                    .setUser(_userRepository.getUser().userID)
                    .then((a) {
                      // var user  = IndividualChannels.fromJson(value);
                  Navigator.push(
                    context,
                    NextPageRoute(
                      ChatPage(
                        channelMetaModel: ChannelModel(
                            id: value['channel'],
                            roomName: value['cname'],
                            right: value['rights'].toString().toUpperCase() ==
                                    'rw'.toUpperCase()
                                ? ChannelRights.rw
                                : ChannelRights.r),
                        user: _userRepository.getUser(),
                      ),
                    ),
                  );
                });*/
              }
            });
          },
          child: Icon(
            Icons.message,
            size: 50,
          ),
        ),
      ),
    );
  }

  Future<dynamic> createChannel(CreateChatRequest request) async {
    final HttpsCallable userProfileCreationRequest =
        FirebaseFunctions.instance.httpsCallable(
      'CreateChannelforProductRelatedCommunicationRequest',
    );
    try {
      final HttpsCallableResult result =
          await userProfileCreationRequest.call(request.toJson());
      print("CreatedRedponse ${result.data}");
      return result.data['id'];
    } on FirebaseFunctionsException catch (e) {
      print('caught firebase functions exception');
      print(e.code);
      print(e.message);
      print(e.details);
      return null;
    } catch (e) {
      print('caught generic exception');
      print(e);
      return null;
    }
  }
}

class CreateChatRequest {
  String requestorignatingname;
  String requestoriginentitytype;
  String requestoriginentityid;
  String channelownername;
  String channelowner;
  String channelownertype;
  String requestorid;

  CreateChatRequest({
    this.requestorignatingname,
    this.requestoriginentitytype,
    this.requestoriginentityid,
    this.channelownername,
    this.channelowner,
    this.channelownertype,
    this.requestorid,
  });

  CreateChatRequest.fromJson(Map<String, dynamic> json) {
    requestorignatingname = json['requestorignatingname'];
    requestoriginentitytype = json['requestoriginentitytype'];
    requestoriginentityid = json['requestoriginentityid'];
    channelownername = json['channelownername'];
    channelowner = json['channelowner'];
    channelownertype = json['channelownertype'];
    requestorid = json['requestorid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['requestorignatingname'] = this.requestorignatingname;
    data['requestoriginentitytype'] = this.requestoriginentitytype;
    data['requestoriginentityid'] = this.requestoriginentityid;
    data['channelownername'] = this.channelownername;
    data['channelowner'] = this.channelowner;
    data['channelownertype'] = this.channelownertype;
    data['requestorid'] = this.requestorid;
    return data;
  }
}
