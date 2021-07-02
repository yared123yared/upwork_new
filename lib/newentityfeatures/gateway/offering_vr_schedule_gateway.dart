import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';

import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/Models/registered_id_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/attendance_model.dart';

class OfferingsVrManagementGateway {
  static Future<List<OfferingModelGroup>> getKindListForGrade(
      {@required String grade,
      @required String entitytype,
      @required String entityid}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    List<OfferingModelGroup> kindlist = [];
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "GRADEKINDLIST",
      "grade": grade,
    });

    print(resp.data);
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return kindlist;

    kindlist = <OfferingModelGroup>[];
    for (dynamic d in mdata['l'])
      kindlist.add(OfferingModelGroup.fromString(d));

    return kindlist;
  }

  static Future<List<OfferingModelGroup>> getIndependentKindListForGrade(
      {@required String grade,
      @required String entitytype,
      @required String entityid}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    List<OfferingModelGroup> kindlist = [];
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "GRADEINDEKINDLIST",
      "grade": grade,
    });

    print(resp.data);
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return kindlist;

    kindlist = <OfferingModelGroup>[];
    for (dynamic d in mdata['l'])
      kindlist.add(OfferingModelGroup.fromString(d));

    return kindlist;
  }

  static Future<List<String>> getVirtualRoomsListForGrade({
    @required String grade,
    @required String entitytype,
    @required String entityid,
  }) async {
    List<String> abc = [];
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "GRADEVRLIST",
      "grade": grade,
    });
    List<String> kindlist = [];
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return kindlist;

    List<String> v = List<String>.from(mdata['l']);
    return v;
  }

  static Future<List<RegisteredIdModel>> getListOfRegisteredIdForVirtualRoom(
      {@required String virtualroomname,
      @required String sessionterm,
      @required String entitytype,
      @required String entityid}) async {
    List<String> abc = [];
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "STUFORVR",
      "virtualroomname": virtualroomname,
      "sessionterm": sessionterm
    });
    List<RegisteredIdModel> rm = [];
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return rm;
    rm = <RegisteredIdModel>[];
    for (dynamic d in mdata['lm'])
      rm.add(RegisteredIdModel.fromData(data: Map<String, dynamic>.from(d)));

    return rm;
  }

  static Future<List<RegisteredIdModel>> getListOfRegisteredIdForOffering(
      {@required String offeringname,
      @required String sessionterm,
      @required String entitytype,
      @required String entityid}) async {
    List<String> abc = [];
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "STUFOROFR",
      "offeringname": offeringname,
      "sessionterm": sessionterm
    });
    List<RegisteredIdModel> rm = [];
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return rm;
    rm = <RegisteredIdModel>[];
    for (dynamic d in mdata['lm'])
      rm.add(RegisteredIdModel.fromData(data: Map<String, dynamic>.from(d)));

    return rm;
  }

  static Future<List<SchoolOwner>> getListOfStaff({
    @required String staffcategory,
    @required String entitytype,
    @required String entityid,
  }) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "staffcategory",
      "staffcategory": staffcategory,
    });

    List<SchoolOwner> rm = [];
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return rm;
    rm = <SchoolOwner>[];
    mdata['lm'].forEach((j) {
      rm.add(SchoolOwner.fromData(Map<String, dynamic>.from(j)));
    });

    //for(dynamic d in mdata['lm'])
    //  rm.add(SchoolOwner.fromData(d));

    return rm;
  }

  static Future offeringModelGroupDBActions(
      {@required OfferingModelGroup data,
      @required String actiontype,
      @required String entitytype,
      @required String entityid}) async {
    final HttpsCallable callable = FirebaseFunctions.instance
        .httpsCallable('GenericDBStorageActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "colname": "OFFERINGMODEL",
      "docdata": data.toJson(),
      "key": data.getKey(),
      "actiontype": actiontype
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());

    //m = resp.data
  }

  static Future offeringWeeklyScheduleDBActions({
    @required OfferingWeeklySchedule data,
    @required String actiontype,
    @required String entitytype,
    @required String entityid,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance
        .httpsCallable('GenericDBStorageActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "colname": "OFFERINGWEEKLYSCHEDULE",
      "docdata": data.toJson(),
      "key": data.offeringgroupid,
      "actiontype": actiontype
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());

    //m = resp.data
  }

  static Future addVirtualRoomActionRequest({
    @required VirtualRoomModelNewFormat virtualRoomsModelMod,
    @required String serviceID,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'VirtualRoomActionRequestNewFormat',
    );
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "virtualroomdata": virtualRoomsModelMod.toJson(),
      "olddata": "None",
      "newdata": "None",
      "virtualroomname": virtualRoomsModelMod.virtualRoomName,
      "actiontype": "add"
    });
  }

  static Future updateVirtualRoom({
    @required VirtualRoomModelNewFormat newdata,
    @required VirtualRoomModelNewFormat oldData,
    @required String serviceID,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance
        .httpsCallable('VirtualRoomActionRequestNewFormat');
    print("CloudFunction " + "end");
    // var newdata12 =
    //     VirtualRoomModelNewFormat.toUpdateDataVrMod(oldData, newdata);
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "virtualroomdata": null,
      "olddata": oldData.toJson(),
      // "newdata": VirtualRoomModelNewFormat.toUpdateDataVrMod(oldData, newdata),
      "newdata": newdata.toJson(),
      "virtualroomname": oldData.virtualRoomName,
      "actiontype": "update"
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future deleteVirtualRoom(
      {@required String virtualroomname, @required String serviceID}) async {
    final HttpsCallable callable = FirebaseFunctions.instance
        .httpsCallable('VirtualRoomActionRequestNewFormat');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "virtualroomdata": null,
      "olddata": null,
      "newdata": null,
      "virtualroomname": virtualroomname,
      "actiontype": "remove"
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future createTeacherOfferingsAssignment(
      {@required TeacherOfferingsAssignment model,
      @required String serviceID}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'OfferingScheduleActionRequestNewFormat',
    );
    dynamic resp = await callable.call(<String, dynamic>{
      "newdata": null,
      "olddata": null,
      "offeringschdata": model.toJson(),
      "offeringschkey": model.offeringgroupname,
      'actiontype': "add",
      'entitytype': "SERVICEPROVIDERINFO",
      'entityid': serviceID,
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future deleteOfferingSchedule(
      {@required TeacherOfferingsAssignment model,
      @required String serviceID}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'OfferingScheduleActionRequestNewFormat',
    );
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "newdata": null,
      "olddata": null,
      "offeringschdata": null,
      "offeringschkey": model.offeringgroupname,
      'actiontype': "remove",
      'entitytype': "SERVICEPROVIDERINFO",
      'entityid': serviceID,
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future updateOfferingSchedule(
      {@required TeacherOfferingsAssignment oldData,
      @required TeacherOfferingsAssignment newData,
      @required serviceID}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'OfferingScheduleActionRequestNewFormat',
    );
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "newdata": TeacherOfferingsAssignment.toUpdateDataOfr(oldData, newData),
      // "newdata": newData.toJson(),
      "olddata": oldData.toJson(),
      // "offeringschdata": newData.toJson(),
      "offeringschdata": null,
      "offeringschkey": oldData.offeringgroupname,
      'actiontype': "update",
      'entitytype': "SERVICEPROVIDERINFO",
      'entityid': serviceID,
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

/*
IDCARD-EVENT Data
[{'key': 'f_1594008000', 'value': [{'name': 'HINDI', 'value': 'hello from HINDI    1594008000'}, {'name': 'MATH', 'value': 'hello from MATH    1594008000'}, {'name': 'SCIENCE', 'value': 'hello from SCIENCE    1594008000'}, {'name': 'ENGLISH', 'value': 'hello from ENGLISH    1594008000'}]}]
IDCARD-PROGRESS Data
[{'key': 'f_SCIENCE_d_mainterm1_a_Subterm1', 'value': [{'name': 'f_un', 'value': '91/100'}]}, {'key': 'f_SCIENCE_d_mainterm1_a_Subterm2', 'value': [{'name': 'f_un', 'value': '91/100'}]}, {'key': 'f_HINDI_d_mainterm1_a_Subterm1', 'value': [{'name': 'f_un', 'value': '81/100'}]}, {'key': 'f_HINDI_d_mainterm1_a_Subterm2', 'value': [{'name': 'f_un', 'value': '81/100'}]}, {'key': 'f_ENGLISH_d_mainterm1_a_Subterm1', 'value': [{'name': 'f_un', 'value': '81/100'}]}, {'key': 'f_ENGLISH_d_mainterm1_a_Subterm2', 'value': [{'name': 'f_un', 'value': '81/100'}]}, {'key': 'f_MATH_d_mainterm1_a_Subterm1', 'value': [{'name': 'f_un', 'value': '81/100'}]}, {'key': 'f_MATH_d_mainterm1_a_Subterm2', 'value': [{'name': 'f_un', 'value': '81/100'}]}]
IDCARD-ATTENDENCE Data
[{'key': 'f_1594008000', 'value': [{'name': 'f_FIRST', 'value': 'A'}, {'name': 'f_SCIENCE', 'value': 'A'}]}, {'key': 'f_1594008001', 'value': [{'name': 'f_FIRST', 'value': 'A'}, {'name': 'f_SCIENCE', 'value': 'A'}]}]



 */
  static Future<Map<String, Map<String, dynamic>>>
      getAttendenceForIDCardGaurdian(
          {@required String idcardnum,
          @required String sessionterm,
          @required int startdate,
          @required int enddate,
          @required String entitytype,
          @required String entityid}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "IDCARDATTENDENCE",
      "id": idcardnum,
      "sessionterm": sessionterm,
      "startdate": startdate,
      "enddate": enddate
    });
    Map<String, Map<String, dynamic>> mydata =
        new Map<String, Map<String, dynamic>>();
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return mydata;

    for (dynamic d in mdata['lm']) {
      var p = Map<String, dynamic>.from(d);
      for (String s1 in p.keys) {
        String keyname = s1; //json['key'];
        keyname = keyname.replaceAll("f_", "");
        Map<String, dynamic> data = Map<String, dynamic>();
        mydata[keyname] = data;
        if (p[s1] != null) {
          for (dynamic s2 in p[s1]) {
            Map<String, dynamic> m = Map<String, dynamic>.from(s2);
            for (String s3 in m.keys) {
              data[s3] = m[s3];
            }
          }
        }
      }
    }

    return mydata;
  }

  static Future<Map<String, Map<String, dynamic>>> getProgressForGaurdian({
    @required String idcardnum,
    @required String sessionterm,
    @required String entitytype,
    @required String entityid,
  }) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");

    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "IDCARDPROGRESS",
      "id": idcardnum,
      "sessionterm": sessionterm,
    });
    Map<String, Map<String, dynamic>> mydata =
        new Map<String, Map<String, dynamic>>();

    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return mydata;

    for (dynamic d in mdata['lm']) {
      var p = Map<String, dynamic>.from(d);
      for (String s1 in p.keys) {
        String keyname = s1; //json['key'];
        keyname = keyname.replaceAll("f_", "");
        Map<String, dynamic> data = Map<String, dynamic>();
        mydata[keyname] = data;
        if (p[s1] != null) {
          for (dynamic s2 in p[s1]) {
            Map<String, dynamic> m = Map<String, dynamic>.from(s2);
            for (String s3 in m.keys) {
              data[s3] = m[s3];
            }
          }
        }
      }
    }

    return mydata;
  }

  static Future<Map<String, Map<String, dynamic>>> getEventForIDCardGaurdian(
      {@required String virtualroomname,
      @required String sessionterm,
      @required int startdate,
      @required int enddate,
      @required String entitytype,
      @required String entityid}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "IDCARDEVENT",
      "virtualroomname": virtualroomname,
      "sessionterm": sessionterm,
      "startdate": startdate,
      "enddate": enddate
    });
    Map<String, Map<String, dynamic>> mydata =
        new Map<String, Map<String, dynamic>>();
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return mydata;

    for (dynamic d in mdata['lm']) {
      var p = Map<String, dynamic>.from(d);
      for (String s1 in p.keys) {
        String keyname = s1; //json['key'];
        keyname = keyname.replaceAll("f_", "");
        Map<String, dynamic> data = Map<String, dynamic>();
        mydata[keyname] = data;
        if (p[s1] != null) {
          for (dynamic s2 in p[s1]) {
            Map<String, dynamic> m = Map<String, dynamic>.from(s2);
            for (String s3 in m.keys) {
              data[s3] = m[s3];
            }
          }
        }
      }
    }

    return mydata;
  }

  static Future submitAttendanceVirtualRoom(
      {@required AttendanceModel attendanceModel,
      @required String virtualroomname,
      @required String sessionTermName,
      @required String serviceID}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'SubmitAttendenceRequest',
    );
    print("CloudFunction " + "end");
    Map<String, dynamic> data = {
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "virtualroomname": virtualroomname,
      "actiontype": "vr",
      "date": HelpUtil.toTimeStamp(dateTime: attendanceModel.date),
      "kind": attendanceModel.kind,
      "sessionterm": sessionTermName,
      "studentInfo": attendanceModel.attendanceList
          .map((attendance) => attendance.toData())
          .toList()
    };
    dynamic resp = await callable.call(data);
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future submitAttendanceOfr(
      {@required AttendanceModel attendanceModel,
      @required String offeringname,
      @required String sessionTermName,
      @required String serviceID}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('SubmitAttendenceRequest');
    print("CloudFunction " + "end");
    Map<String, dynamic> data = {
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "offeringname": offeringname,
      "virtualroomname": null,
      "actiontype": "ofr",
      "date": HelpUtil.toTimeStamp(dateTime: attendanceModel.date),
      "kind": attendanceModel.kind,
      "sessionterm": sessionTermName,
      "studentInfo": attendanceModel.attendanceList
          .map((attendance) => attendance.toData())
          .toList()
    };
    dynamic resp = await callable.call(data);
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  //{'sti': [{'id': '1', 'val': 'A'}, {'id': '2', 'val': 'A'}, {'id': '3', 'val': 'A'}, {'id': '4', 'val': 'A'}, {'id': '5', 'val': 'A'}, {'id': '6', 'val': 'A'}], 'kind': 'FIRST', 'mdate': 1594008000}
  static Future<AttendanceModel> getAttendanceVR({
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
      "qtype": "ATTENDENCEVRSTAFF",
      "kind": kind,
      'mdate': HelpUtil.toTimeStamp(dateTime: dateTime),
      "sessionterm": sessionTerm,
      "virtualroomname": virtualroomname
    });
    AttendanceModel _attendanceModel;
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return _attendanceModel;

    Map<String, dynamic> data = Map<String, dynamic>.from(mdata['m']);
    //Map<String,dynamic> attendencedata =data['sti'];
    List<AttendanceInfo> attendanceList = [];
    if (data['sti'] != null) {
      attendanceList = <AttendanceInfo>[];
      data['sti'].forEach((element) {
        attendanceList.add(AttendanceInfo.fromDataDB(
            data: Map<String, dynamic>.from(element)));
      });
    }
    _attendanceModel = AttendanceModel(
        date: dateTime,
        virtualrooname: virtualroomname,
        atttype: "vr",
        attendanceList: attendanceList,
        kind: kind);
    return _attendanceModel;
  }

  static Future<AttendanceModel> getAttendanceOFR(
      {@required String offeringname,
      @required String sessionTerm,
      @required String serviceID,
      @required DateTime dateTime,
      @required String kind}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "qtype": "ATTENDENCEMULTISTAFF",
      "kind": kind,
      'mdate': HelpUtil.toTimeStamp(dateTime: dateTime),
      "sessionterm": sessionTerm,
      "offeringname": offeringname
    });
    AttendanceModel _attendanceModel;
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return _attendanceModel;

    Map<String, dynamic> data = Map<String, dynamic>.from(mdata['m']);
    //Map<String,dynamic> attendencedata =data['sti'];
    List<AttendanceInfo> attendanceList = [];
    if (data['sti'] != null) {
      attendanceList = <AttendanceInfo>[];
      data['sti'].forEach((element) {
        attendanceList.add(AttendanceInfo.fromDataDB(
            data: Map<String, dynamic>.from(element)));
      });
    }
    _attendanceModel = AttendanceModel(
      date: dateTime,
      offeringname: offeringname,
      atttype: "of",
      attendanceList: attendanceList,
      kind: kind,
    );

    return _attendanceModel;
  }

  static Future<String> getEventVR(
      {@required String virtualroomname,
      @required String sessionTerm,
      @required String serviceID,
      @required DateTime dateTime,
      @required String kind}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "qtype": "EVENTVRSTAFF",
      "kind": kind,
      'mdate': HelpUtil.toTimeStamp(dateTime: dateTime),
      "sessionterm": sessionTerm,
      "virtualroomname": virtualroomname
    });
    String evtdata;
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return evtdata;

    Map<String, dynamic> data = Map<String, dynamic>.from(mdata['m']);
    return data['sti'];
  }

  static Future<String> getEventOFR(
      {@required String offeringname,
      @required String sessionTerm,
      @required String serviceID,
      @required DateTime dateTime,
      @required String kind}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "qtype": "EVENTMULTISTAFF",
      "kind": kind,
      'mdate': HelpUtil.toTimeStamp(dateTime: dateTime),
      "sessionterm": sessionTerm,
    });
    String evtdata;
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return evtdata;

    Map<String, dynamic> data = Map<String, dynamic>.from(mdata['m']);
    return data['sti'];
  }

  static Future submitEventVirtualRoom(
      {@required String mdata,
      @required String virtualroomname,
      @required String sessionTermName,
      @required String kind,
      DateTime mdate,
      @required String serviceID}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('SubmitEventRequest');
    print("CloudFunction " + "end");
    Map<String, dynamic> data = {
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "virtualroomname": virtualroomname,
      "info": mdata,
      "offeringkeyname": null,
      "vrlist": null,
      "actiontype": "vr",
      "mdate": HelpUtil.toTimeStamp(dateTime: mdate),
      "kind": kind,
      "sessionterm": sessionTermName,
    };
    dynamic resp = await callable.call(data);
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future submitEventOfr(
      {@required String mdata,
      @required String offeringname,
      @required List<String> vrlist,
      @required String sessionTermName,
      @required String kind,
      DateTime mdate,
      @required String serviceID}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('SubmitEventRequest');
    print("CloudFunction " + "end");
    Map<String, dynamic> data = {
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "virtualroomname": null,
      "info": mdata,
      "offeringkeyname": offeringname,
      "vrlist": vrlist,
      "actiontype": "ofr",
      "mdate": HelpUtil.toTimeStamp(dateTime: mdate),
      "kind": kind,
      "sessionterm": sessionTermName,
    };
    dynamic resp = await callable.call(data);
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future<List<OfferingModelGroup>> getOfferingMdelList({
    @required String serviceID,
    @required String grade,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/OFFERINGMODEL")
          .where('grade', isEqualTo: grade)
          .get()
          .then((x) {
        return OfferingModelGroup.listFromJson(
          x.docs.map((d) => d.data).toList(),
          x.docs.map((d) => d.id).toList(),
        );
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<TeacherOfferingsAssignment>>
      getTeacherOfferingsAssignmentList(String serviceID, String grade) async {
    try {
      return await FirebaseFirestore.instance
          .collection(
              "SERVICEPROVIDERINFO/$serviceID/TEACHEROFFERINGASSIGNMENT")
          .where('grade', isEqualTo: grade)
          .get()
          .then((x) {
        return TeacherOfferingsAssignment.listFromJson(
          x.docs.map((d) => d.data).toList(),
          x.docs.map((d) => d.id).toList(),
        );
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<OfferingWeeklySchedule>> getOfferingWeeklyScheduleList(
      String serviceID, String grade) async {
    try {
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/OFFERINGWEEKLYSCHEDULE")
          .where('grade', isEqualTo: grade)
          .get()
          .then((x) {
        return OfferingWeeklySchedule.listFromJson(
          x.docs.map((d) => d.data).toList(),
          x.docs.map((d) => d.id).toList(),
        );
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<OfferingWeeklySchedule>> getOfferingScheduleGradeList(
      {String grade, String serviceID}) async {
    try {
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/OFFERINGWEEKLYSCHEDULE")
          .where('grade', isEqualTo: grade)
          .get()
          .then((x) {
        return OfferingWeeklySchedule.listFromJson(
          x.docs.map((d) => d.data).toList(),
          x.docs.map((d) => d.id).toList(),
        );
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<VirtualRoomModelNewFormat>>
      getVirtualRoomModelNewFormatList(String serviceID, String grade) async {
    return await FirebaseFirestore.instance
        .collection("SERVICEPROVIDERINFO/$serviceID/VIRTUALROOMS")
        .where('grade', isEqualTo: grade)
        .get()
        .then((x) {
      return VirtualRoomModelNewFormat.listFromJson(
        x.docs.map((d) => d.data()).toList(),
      );
    });
  }

  static Future<InstructorOfferingDataModel> getInstructorScheduleData(
    String serviceID,
    String staffid,
  ) async {
    print("SERVICEPROVIDERINFO/$serviceID/STAFFEXTRADATA/$staffid");
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/STAFFEXTRADATA/$staffid")
        .get()
        .then((x) {
      print(x.data());
      if (x.data() == null) return null;
      return InstructorOfferingDataModel.fromJson(x.data());
    });
  }
}
