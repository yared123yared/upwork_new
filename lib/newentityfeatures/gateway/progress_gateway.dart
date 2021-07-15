import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/offering_schedule_model.dart';
import 'package:complex/newentityfeatures/Models/progress_model.dart';
import 'package:complex/newentityfeatures/Models/virtual_room_model.dart';
import 'package:complex/common/helputil.dart';

class ProgressGateway {
  static Future submitProgressOfrSch(
      {@required OfferingsScheduleModel offeringsScheduleModel,
      @required ProgressModel progressModel}) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'SubmitProgressRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": "AefWmZc5Z3HwLhBd6nRU",
        "virtualroomname": "None",
        "actiontype": "ofr",
        "date": progressModel.date,
        "kind": progressModel.kind,
        "totalscore": progressModel.totalScore,
        "sessionterm": offeringsScheduleModel.sessionTermName,
        "studentInfo": progressModel.progressList
            .map((progress) => progress.toData())
            .toList(),
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Future<ProgressModel> getProgress({
    @required VirtualRoomModel virtualRoom,
    @required String sessionTerm,
    @required String serviceID,
    @required String kind,
  }) async {

      return await FirebaseFirestore.instance
          .doc(
              "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionTerm/VIRTUALROOMS/${virtualRoom.virtualRoomName}/PROGRESS/$kind")
          .get()
          .then((x) {
        ProgressModel _progress;
        if (x.exists) {
          _progress =
              ProgressModel.fromJson(json: x.data(), virtualRoom: virtualRoom);
        } else {
          _progress = ProgressModel.fromJson(json: {
            'kind': kind,
            'date': HelpUtil.formattedDateToString(
                DateTime.now(), DateTimeMode.DATE),
          }, virtualRoom: virtualRoom);
        }
        return _progress;
      });

  }

  static Future<ProgressModel> getProgressVR({
    @required String virtualroomname,
    @required String sessionTerm,
    @required String serviceID,
    @required DateTime dateTime,
    @required String kind,
  }) async {

      final HttpsCallable callable =
          FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID,
        "qtype": "PROGRESSVRSTAFF",
        "kind": kind,
        'mdate': HelpUtil.toTimeStamp(dateTime: dateTime),
        "sessionterm": sessionTerm,
        "virtualroomname": virtualroomname
      });

      ProgressModel promod;
      Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
      if (mdata['error'] != null) return promod;

      Map<String, dynamic> data = Map<String, dynamic>.from(mdata['m']);
      //Map<String,dynamic> attendencedata =data['sti'];
      List<ProgressInfo> pio = [];
      if (data['sti'] != null) {
        pio = <ProgressInfo>[];
        data['sti'].forEach((element) {
          pio.add(
              ProgressInfo.fromJson(data: Map<String, dynamic>.from(element)));
        });
      }
      int totalscore =
          data.containsKey('totalscore') && data['totalscore'] != null
              ? data['totalscore']
              : 0;
      //String mkind =data['kind'];
      promod = ProgressModel(
          date: dateTime,
          progressList: pio,
          virtualrooname: virtualroomname,
          offeringname: null,
          atttype: "vr",
          totalScore: totalscore,
          kind: kind);
      return promod;

  }

  static Future<ProgressModel> getProgressOFR({
    @required String offeringname,
    @required String sessionTerm,
    @required String serviceID,
    @required DateTime dateTime,
    @required String kind,
  }) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'GenericQueryActionRequest',
      );

      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID,
        "qtype": "PROGRESSMULTISTAFF",
        "kind": kind,
        'mdate': HelpUtil.toTimeStamp(dateTime: dateTime),
        "sessionterm": sessionTerm,
        "offeringname": offeringname
      });
      Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
      if (mdata['error'] != null) return null;

      Map<String, dynamic> data = Map<String, dynamic>.from(mdata['m']);
      //Map<String,dynamic> attendencedata =data['sti'];
      List<ProgressInfo> pio = [];
      if (data['sti'] != null) {
        pio = <ProgressInfo>[];
        data['sti'].forEach((element) {
          pio.add(
              ProgressInfo.fromJson(data: Map<String, dynamic>.from(element)));
        });
      }
      int totalscore =
          data.containsKey('totalscore') && data['totalscore'] != null
              ? data['totalscore']
              : 0;
      var promod = ProgressModel(
        date: dateTime,
        progressList: pio,
        virtualrooname: null,
        offeringname: offeringname,
        atttype: "of",
        totalScore: totalscore,
        kind: kind,
      );
      return promod;

  }

  static Future submitProgressVirtualRoom({
    @required ProgressModel progressModel,
    @required String virtualroomname,
    @required String sessionTermName,
    @required String serviceID,
  }) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'SubmitProgressRequest',
      );
      print("CloudFunction " + "end");
      Map<String, dynamic> data = {
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID,
        "virtualroomname": virtualroomname,
        "offeringkeyname": null,
        "actiontype": "vr",
        "mdate": HelpUtil.toTimeStamp(dateTime: progressModel.date),
        "kind": progressModel.kind,
        "totalscore": 200,
        "sessionterm": sessionTermName,
        "studentInfo": progressModel.progressList
            .map((attendance) => attendance.toData())
            .toList()
      };
      dynamic resp = await callable.call(data);
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Future submitProgressOfr(
      {@required ProgressModel progressModel,
      @required String offeringname,
      @required String sessionTermName,
      @required String serviceID}) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'SubmitProgressRequest',
      );
      print("CloudFunction " + "end");
      Map<String, dynamic> data = {
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID,
        "virtualroomname": null,
        "offeringkeyname": offeringname,
        "actiontype": "ofr",
        "totalscore": progressModel.totalScore,
        "mdate": HelpUtil.toTimeStamp(dateTime: progressModel.date),
        "kind": progressModel.kind,
        "sessionterm": sessionTermName,
        "studentInfo": progressModel.progressList
            .map((attendance) => attendance.toData())
            .toList()
      };
      dynamic resp = await callable.call(data);
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }
}
