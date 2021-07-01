import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/channel_model/channel_model.dart';
import 'package:complex/data/models/response/channel_model/message_model.dart';
import 'package:complex/data/models/response/user_response/user_channel_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/providers/user_provider.dart';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:injector/injector.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

class ChannelsProvider {
  UserProvider _userProvider = Injector.appInstance.get<UserProvider>();
  Map<String, List<ChannelModel>> _channels = {};
  ApiService api;

  ChannelsProvider(this.api);

  void clearChatRoom() => _channels = {};

  List<String> getExistingMetaChannels() {
    List<String> existingmetachannel = new List<String>();
    for (String entityname in _channels.keys) {
      for (var mc in _channels[entityname]) existingmetachannel.add(mc.metaid);
    }
    return existingmetachannel;
  }

  Future<void> setChatRoomsInOneGo({@required UserModel user}) async {
    _channels.clear();
    var mchannellistinfo = user.getChannelList();
    List<UserChannelsModel> myuserchannelmodellist =
        mchannellistinfo.myuserchannelmodellist;
    Map<String, String> channelwithname = mchannellistinfo.channelwithname;
    Map<String, List<String>> entitywithchannellist =
        mchannellistinfo.entitywithchannellist;

    List<String> existingmetachannel = getExistingMetaChannels();
    List<UserChannelsModel> toremovechannels = new List<UserChannelsModel>();
    for (String mid in existingmetachannel) {
      for (UserChannelsModel uc in myuserchannelmodellist) {
        if (uc.channel == mid) toremovechannels.add(uc);
      }
    }

    for (UserChannelsModel uc in toremovechannels) {
      myuserchannelmodellist.remove(uc);
    }
    List<ChannelModel> mycmdata =
        await getChatMetadata(mylist: myuserchannelmodellist);
    for (var curmeta in mycmdata) {
      String entityName = channelwithname[curmeta.metaid]; //entitynamemap[]

      if (_channels[entityName] == null)
        _channels[entityName] = List<ChannelModel>();

      List<ChannelModel> chalist = _channels[entityName];
      bool addtolist = true;
      for (ChannelModel c in chalist) {
        if (c.id == curmeta.id) {
          addtolist = false;
          break;
        }
      }
      if (addtolist) {
        _channels[entityName].add(curmeta);
      }
    }
    if (user.individualChannels != null) {
      for (var data in user.individualChannels) {
        var roomOwnerList = data.uniqueid.split('@@@');
        var owner = data.uId == 1
            ? roomOwnerList.first.replaceAll("U_", "")
            : roomOwnerList.last.replaceAll("U_", "");
        _channels[data.cname] = [
          ChannelModel(
            right: data.rights.toUpperCase() == "rw".toUpperCase()
                ? ChannelRights.rw
                : ChannelRights.r,
            id: data.channel,
            roomName: data.cname,
            isActive: data.enabled,
            roomOwnerId: owner,
          )
        ];
      }
    }
  }

  Future<List<ChannelModel>> getChatMetadata(
      {@required List<UserChannelsModel> mylist}) async {
    List<Stream<List<ChannelModel>>> mystreamlist =
        new List<Stream<List<ChannelModel>>>();
    List<Stream<QuerySnapshot>> mystreamlist1 =
        new List<Stream<QuerySnapshot>>();

    List<List<String>> mydocidlist = new List<List<String>>();
    int mcount = 0;
    List<String> mk = new List<String>();
    Map<String, UserChannelsModel> mymap = new Map<String, UserChannelsModel>();
    for (UserChannelsModel ucm in mylist) {
      if (mk.length == 10) {
        mydocidlist.add(mk);
        mk = new List<String>();
      }
      mk.add(ucm.channel);
      if (!mymap.containsKey(ucm.channel)) mymap[ucm.channel] = ucm;
    }
    if (mk.length > 0) {
      mydocidlist.add(mk);
    }

    var futures = <Future>[];
    for (var kd in mydocidlist) {
      var pk = getChannelMetaFinal(kd, mymap);
      futures.add(pk);
    }

    List<Object> mji = new List<Object>();

    List<dynamic> mresultFuture = await Future.wait(futures);
    List<ChannelModel> resultdata = new List<ChannelModel>();
    for (var qrysnp in mresultFuture) {
      QuerySnapshot qs = qrysnp as QuerySnapshot;
      for (var doc in qs.docs) {
        resultdata.add(ChannelModel.fromDataForStream(
            doc.data(), doc.id, mymap[doc.id].rights));
      }
    }
    return resultdata;
  }

  Future<QuerySnapshot> getChannelMetaFinal(
      List<String> myIdList, Map<String, UserChannelsModel> mdict) {
    try {
      var products = FirebaseFirestore.instance
          .collection('CROOMMETA')
          .where(FieldPath.documentId, whereIn: myIdList)
          .get();
      return products;
    } on PlatformException catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> setChatRoom({
    @required UserChannelsModel userChannelsModel,
    @required String entityName,
    @required EntityType entityType,
  }) async {
    try {
      ChannelModel _channelMetaModel = await FirebaseFirestore.instance
          .doc("CROOMMETA/${userChannelsModel.channel}")
          .get()
          .then((x) => ChannelModel.fromData(
                x.data(),
                userChannelsModel.rights,
                entityType,
              ));

      if (_channels[entityName] == null)
        _channels[entityName] = List<ChannelModel>();

      List<ChannelModel> chalist = _channels[entityName];
      bool addtolist = true;

      for (ChannelModel c in chalist) {
        if (c.id == _channelMetaModel.id) {
          addtolist = false;
          break;
        }
      }
      if (addtolist) {
        _channels[entityName].add(_channelMetaModel);
      }
    } catch (e) {
      print('channel repo error: $e');
    }
  }

  Map<String, List<ChannelModel>> getChatRooms() => _channels;

  Stream<QuerySnapshot> getChatList({@required ChannelModel channelMetaModel}) {
    int _timeStamp =
        ((DateTime.now().millisecondsSinceEpoch / 1000) - 60).round();
    var time = DateTime.fromMillisecondsSinceEpoch(_timeStamp * 1000);
    try {
      return FirebaseFirestore.instance
          .collection("CROOM/${channelMetaModel.id}/MESSAGES")
          // .where('servertimestamps', isGreaterThanOrEqualTo: time)
          .orderBy('servertimestamps', descending: false)
          .snapshots();
    } catch (e) {
      print("chatlist get error: $e");
      throw e;
    }
  }

  Stream<QuerySnapshot> listenToChannelChange({@required String id}) {
    var date7dayold = DateTime.now().add(new Duration(days: -7));

    var greterthanTimestamp = HelpUtil.converttoTimeStamp(date7dayold);
    try {
      return FirebaseFirestore.instance
          .collection("CROOM/$id/MESSAGES")
          .snapshots();
    } catch (e) {
      print("chatlist get error: $e");
      throw e;
    }
  }

  Future sendNewMsg({
    MessageModel msg,
    ChannelModel channelMetaModel,
  }) async {
    print("CROOM/${channelMetaModel.id}/MESSAGES");
    try {
      return await FirebaseFirestore.instance
          .collection("CROOM/${channelMetaModel.id}/MESSAGES")
          .add(msg.toData())
          .whenComplete(() => print('sent'));
    } catch (e) {
      print("error: $e");
    }
  }

  Future<String> sendFile(String variantName, String fileName) async {
    try {
      String _fileName = DateTime.now().millisecondsSinceEpoch.toString() +
          '.' +
          fileName.split('.').last;
      var resp = await _userProvider.uploadFileStorage(
        fileName: _fileName,
        variantName: variantName,
        uploadType: "chat",
        entityid: 'None',
      );
      String downloadURL = resp.data["downloadfileurl"].toString();
      String uploadURL = resp.data["uploadfileurl"]["url"].toString();
      String policy = resp.data["uploadfileurl"]["fields"]["policy"].toString();
      String awsAccessKeyID =
          resp.data["uploadfileurl"]["fields"]["AWSAccessKeyId"].toString();
      String signature =
          resp.data["uploadfileurl"]["fields"]["signature"].toString();
      String key = resp.data["uploadfileurl"]["fields"]["key"].toString();
      var file = File(fileName);
      print(downloadURL);
      var result = await _uploadFile(
        file,
        uploadURL,
        policy,
        awsAccessKeyID,
        signature,
        key,
      );
      if (result)
        return downloadURL;
      else
        return null;
    } catch (e) {
      print("upload exception $e");
      return null;
    }
  }

  Future<bool> _uploadFile(
    File uploadableFile,
    String uploadURL,
    String policy,
    String awsAccessKeyID,
    String signature,
    String key,
  ) async {
    try {
      var _uploadableFile = await uploadableFile.readAsBytes();
      var req = http.MultipartRequest('POST', Uri.parse(uploadURL));
      req.fields["policy"] = policy;
      req.fields["AWSAccessKeyId"] = awsAccessKeyID;
      req.fields["signature"] = signature;
      req.fields["key"] = key;
      req.files.add(http.MultipartFile.fromBytes(
        'file',
        _uploadableFile,
        filename: '_fileName', //tofo get file name
      ));
      var res = await req.send();
      print("Response data =>${res.statusCode}");
      if (res.statusCode >= 200 || res.statusCode < 300) {
        print("upload completed");
        return true;
      } else {
        print("upload fail");
        return false;
      }
    } catch (e) {
      if (e is HttpException) print("upload fail ${e.uri} : ${e.message}");
      return false;
    }
  }

  Future<dynamic> activateDeactivateChannel(
      ChannelModel channel, String userID, bool status) async {
    final HttpsCallable userProfileCreationRequest =
        FirebaseFunctions.instance.httpsCallable(
      'ChangeChannelAvailabilityFlagforProductRCRequest',
    );
    try {
      var type = channel.entityType == EntityType.Complex
          ? "COMPLEXES"
          : channel.entityType == EntityType.Service
              ? "SERVICEPROVIDERINFO"
              : "USER";
      final HttpsCallableResult result =
          await userProfileCreationRequest.call(<String, dynamic>{
        'requestoriginentitytype': type,
        'requestoriginentityid': type == "USER" ? userID : channel.roomOwnerId,
        'requestorid': userID,
        'chatmetaid': channel.id,
        'isenableflag': status,
      });
      print("result ${result.data}");
      return result.data;
    } on FirebaseFunctionsException catch (e) {
      print('caught firebase functions exception');
      print(e.code);
      print(e.message);
      print(e.details);
    } catch (e) {
      print('caught generic exception');
      print(e);
    }
  }
}

extension DateTimeExtension on DateTime {
  String toFormattedString(DateTimeMode dateTimeMode) {
    final dateTime = DateFormat('dd-MM-yyyy hh:mm a');
    final jusTime = DateFormat('hh:mm a');
    final justDate = DateFormat('dd-MM-yyyy');
    String _return;
    switch (dateTimeMode) {
      case DateTimeMode.DATE:
        _return = justDate.format(this);
        break;
      case DateTimeMode.TIME:
        _return = jusTime.format(this);
        break;
      case DateTimeMode.DATETIME:
        _return = dateTime.format(this);
        break;
    }
    return _return;
  }

  int toTimeStamp() {
    var ms = this.millisecondsSinceEpoch;
    return (ms / 1000).round();
  }
}
