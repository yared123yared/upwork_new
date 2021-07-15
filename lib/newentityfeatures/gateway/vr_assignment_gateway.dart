import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';

import 'package:complex/newentityfeatures/Models/vrassignment_score_model.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';

class VrAssignmentGateway {
  static Future<List<VrAssignmentModel>> getVrAssignmentListOffering({
    @required String serviceID,
    @required String sessionTerm,
    @required String offering,
  }) async {
    return await FirebaseFirestore.instance
        .collection(
          "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/${sessionTerm..replaceAll('/', '\/')}/VRASSIGNMENT",
        )
        .where("offering", isEqualTo: offering)
        .get()
        .then((x) {
      return VrAssignmentModel.listFromJson(
        x.docs.map((d) => d.data).toList(),
        x.docs.map((d) => d.id).toList(),
      );
    });
  }

  static Future<List<VrAssignmentModel>> getVrAssignmentListForGrade({
    @required String serviceID,
    @required String sessionTerm,
    @required String grade,
  }) async {
    try {} catch (e) {
      return [];
    }
    return await FirebaseFirestore.instance
        .collection(
          "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionTerm/VRASSIGNMENT",
        )
        .where("grade", isEqualTo: grade)
        .get()
        .then((x) {
      return VrAssignmentModel.listFromJson(
        x.docs.map((d) => d.data).toList(),
        x.docs.map((d) => d.id).toList(),
      );
    });
  }

  static Future<List<VrAssignmentModel>> getVrAssignmentListForOfferingGroup({
    @required String serviceID,
    @required String sessionTerm,
    @required String offering,
  }) async {
    try {} catch (e) {
      return [];
    }
    return await FirebaseFirestore.instance
        .collection(
          "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionTerm/VRASSIGNMENT",
        )
        .where("offering", isEqualTo: offering)
        .get()
        .then((x) {
      return VrAssignmentModel.listFromJson(
        x.docs.map((d) => d.data).toList(),
        x.docs.map((d) => d.id).toList(),
      );
    });
  }

  static Future<List<VrAssignmentModel>> getVrAssignmentListVirtualRoom({
    @required String serviceID,
    @required String sessionTerm,
    @required String virtualroomname,
  }) async {
    try {} catch (e) {
      return [];
    }
    return await FirebaseFirestore.instance
        .collection(
          "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionTerm/VRASSIGNMENT",
        )
        .where("virtualRoom", arrayContains: virtualroomname)
        .get()
        .then((x) {
      return VrAssignmentModel.listFromJson(
        x.docs.map((d) => d.data).toList(),
        x.docs.map((d) => d.id).toList(),
      );
    });
  }

  static Future<List<VrAssignmentModel>>
      getVrAssignmentListVirtualRoomAndOffering({
    @required String serviceID,
    @required String sessionTerm,
    @required String virtualroomname,
    @required String offering,
  }) async {
    try {} catch (e) {
      return [];
    }
    return await FirebaseFirestore.instance
        .collection(
          "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionTerm/VRASSIGNMENT",
        )
        .where("virtualRoom", arrayContains: virtualroomname)
        .where("offering", isEqualTo: offering)
        .get()
        .then((x) {
      return VrAssignmentModel.listFromJson(
        x.docs.map((d) => d.data).toList(),
        x.docs.map((d) => d.id).toList(),
      );
    });
  }

  static Future<void> removeVrAssignment(
      {@required String serviceID,
      @required SessionTerm sessionTerm,
      @required VrAssignmentModel vrAssignmentModel}) async {
    return await FirebaseFirestore.instance
        .doc(
            "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/${sessionTerm.termName}/VRASSIGNMENT")
        .update({
      "data": FieldValue.arrayRemove([vrAssignmentModel.toJson()])
    });
  }

  static Future addNewVrAssignment({
    @required String serviceID,
    @required String sessionTerm,
    @required VrAssignmentModel vrAssignmentModel,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'AssignmentOperationRequest',
    );
    dynamic resp = await callable.call(<String, dynamic>{
      "optype": "a",
      "asgid": vrAssignmentModel.assignmentId,
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "data": vrAssignmentModel.toJson()
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
    Logger().i(
      vrAssignmentModel.assignmentId,
      serviceID,
    );
    return (resp);
  }

  static Future updateVrAssignment({
    @required String serviceID,
    @required String sessionTerm,
    @required VrAssignmentModel vrAssignmentModel,
  }) async {
    return await FirebaseFirestore.instance
        .collection(
            "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionTerm/VRASSIGNMENT")
        .doc(vrAssignmentModel.vrid)
        .update(vrAssignmentModel.toJson());
  }

  static Future<List<VrAssignmentModel>> getVrAssignmentModelForIDCardNum({
    @required String virtualroomname,
    @required String sessionterm,
    @required String entityid,
  }) async {
    try {} catch (e) {
      return [];
    }
    return FirebaseFirestore.instance
        .collection(
          'SERVICEPROVIDERINFO/$entityid/SESSIONTERM/$sessionterm/VRASSIGNMENT',
        )
        .where("virtualRoom", isEqualTo: virtualroomname)
        .get()
        .then(
          (x) => VrAssignmentModel.listFromJson(
            x.docs.map((d) => d.data).toList(),
            x.docs.map((d) => d.id).toList(),
          ),
        );

    // final HttpsCallable callable = CloudFunctions.instance
    //     .getHttpsCallable(functionName: 'GenericQueryActionRequest');
    // print("CloudFunction " + "end");
    // List<VrAssignmentModel> kindlist = [];
    // dynamic resp = await callable.call(<String, dynamic>{
    //   "entitytype": 'SERVICEPROVIDERINFO',
    //   "entityid": entityid,
    //   "qtype": "VRASSIGNMENTLISTSTUDENT",
    //   "virtualroomname": virtualroomname,
    //   "offeringlist": offeringnamelist,
    //   "sessionterm": sessionterm
    // });

    // print(resp.data);
    // Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    // if (mdata['error'] != null) return kindlist;

    // //kindlist = List<AssignmentModelDropdown>();
    // for (dynamic d in mdata['lm']) {
    //   Map<String, dynamic> bk = Map<String, dynamic>.from(d);
    //   String key = bk['vrid'];
    //   kindlist.add(VrAssignmentModel.fromJson(bk, key));
    // }

    // return kindlist;
  }

  static Future<List<VrAssignmentModel>>
      getVrAssignmentModelForNotIndependentOfferingForTeacher({
    @required String virtualroomname,
    @required String sessionterm,
    @required String offeringname,
    @required String entitytype,
    @required String entityid,
  }) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    List<VrAssignmentModel> kindlist = [];
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "VRASSIGNMENTLISTNOTINDEPENDENTOFFERINGTEACHER",
      "virtualroomname": virtualroomname,
      "offeringname": offeringname,
      "sessionterm": sessionterm
    });

    print(resp.data);
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return kindlist;

    //kindlist = List<AssignmentModelDropdown>();
    for (dynamic d in mdata['lm']) {
      Map<String, dynamic> bk = Map<String, dynamic>.from(d);
      String key = bk['vrid'];
      kindlist.add(VrAssignmentModel.fromJson(bk, key));
    }

    return kindlist;
  }

  static Future<List<VrAssignmentModel>>
      getVrAssignmentModelForIndependentOfferingForTeacher(
          {@required String sessionterm,
          @required String offeringname,
          @required String entitytype,
          @required String entityid}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    List<VrAssignmentModel> kindlist = [];
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "VRASSIGNMENTLISTINDEPENDENTOFFERINGTEACHER",
      "offeringname": offeringname,
      "sessionterm": sessionterm
    });
    print(resp.data);
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return kindlist;

    //kindlist = List<AssignmentModelDropdown>();
    for (dynamic d in mdata['lm']) {
      Map<String, dynamic> bk = Map<String, dynamic>.from(d);
      String key = bk['vrid'];
      kindlist.add(VrAssignmentModel.fromJson(bk, key));
    }

    return kindlist;
  }

  static Future<List<AnsweredPaper>> getVrAssignmentScoreForSingleStudent({
    @required String sessionterm,
    @required String vrid,
    @required String idcardnum,
    @required String entityid,
  }) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    List<AnsweredPaper> kindlist = [];
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": entityid,
      "qtype": "ANSWERLISTSINGLESTUDENT",
      "vrasgid": vrid,
      "id": idcardnum,
      "sessionterm": sessionterm
    });
    print(resp.data);
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return kindlist;

    //kindlist = List<AssignmentModelDropdown>();
    for (dynamic d in mdata['lm']) {
      Map<String, dynamic> bk = Map<String, dynamic>.from(d);
      kindlist.add(AnsweredPaper.fromMap1(bk));
    }
    return kindlist;
  }

  static Future<List<AnsweredPaper>>
      getVrAssignmentScoreIndependentOfferingForAllStudent({
    @required String sessionterm,
    @required String vrid,
    @required String offeringname,
    @required String entitytype,
    @required String entityid,
  }) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    List<AnsweredPaper> kindlist = [];
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "ANSWERLISTALLSTUDENTOFR",
      "vrasgid": vrid,
      "offeringname": offeringname,
      "sessionterm": sessionterm
    });
    print(resp.data);
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return kindlist;

    //kindlist = List<AssignmentModelDropdown>();
    for (dynamic d in mdata['lm']) {
      Map<String, dynamic> bk = Map<String, dynamic>.from(d);
      kindlist.add(AnsweredPaper.fromMap1(bk));
    }
    return kindlist;
  }

  static Future submitScoreForTeacher({
    @required String vrassignmentid,
    @required String assignmentid,
    @required List<AnsweredPaper> answerdatalist,
    @required String sessionTermName,
    DateTime submitdate,
    @required String serviceID,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'SaveAssignmentScoreRequest',
    );
    print("CloudFunction " + "end");
    Map<String, dynamic> data = {
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "studentflag": false,
      "mdate": HelpUtil.toTimeStamp(dateTime: submitdate),
      "vrasgid": vrassignmentid,
      "asgid": assignmentid,
      "data":
          List<Map<String, dynamic>>.from(answerdatalist.map((x) => x.toMap())),
      "sessionterm": sessionTermName,
    };

    print(data);
    dynamic resp = await callable.call(data);
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future submitScoreForStudent({
    @required String vrassignmentid,
    @required String assignmentid,
    @required List<AnsweredPaper> answerdatalist,
    @required String sessionTermName,
    DateTime submitdate,
    @required String serviceID,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'SaveAssignmentScoreRequest',
    );
    Map<String, dynamic> data = {
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
      "studentflag": true,
      "mdate": HelpUtil.toTimeStamp(dateTime: submitdate),
      "vrasgid": vrassignmentid,
      "asgid": assignmentid,
      "data":
          List<Map<String, dynamic>>.from(answerdatalist.map((x) => x.toMap())),
      "sessionterm": sessionTermName,
    };
    dynamic resp = await callable.call(data);

    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future<List<AnsweredPaper>>
      getVrAssignmentScoreNotIndependentOfferingForAllStudent({
    @required String sessionterm,
    @required String vrid,
    @required String offeringname,
    @required virtualroomname,
    @required String entitytype,
    @required String entityid,
  }) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    List<AnsweredPaper> kindlist = [];
    HttpsCallableResult resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "ANSWERLISTALLSTUDENTVR",
      "vrasgid": vrid,
      "virtualroomname": virtualroomname,
      "sessionterm": sessionterm
    });
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return kindlist;
    print(resp.data);
    //kindlist = List<AssignmentModelDropdown>();
    for (dynamic d in mdata['lm']) {
      Map<String, dynamic> bk = Map<String, dynamic>.from(d);
      kindlist.add(AnsweredPaper.fromMap1(bk));
    }
    return kindlist;
  }

  static Future<AssignmentModel> getAssignmentDataForAttachedAssignment(
      String asgid, String serviceID) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/FINALASSIGNMENT/$asgid")
        .get()
        .then((x) {
      return AssignmentModel.fromJson(x.data(), x.id);
    });
  }
}
