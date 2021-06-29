import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/vrassignment_score_model.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
class VRAssignmentScoreGateway {
  static Future<List<VrAssignmentScoreModel>> getVrAssignmentScoreList(
      {@required String serviceID,
      @required SessionTermModel sessionTerm}) async {
    return await FirebaseFirestore.instance
        .collection(
            "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/${sessionTerm.termName}/VRASSIGNMENTSCORE")
        .get()
        .then((x) {
      return VrAssignmentScoreModel.listFromJson(
          x.docs.map((d) => d.data).toList());
    });
  }

  static Future<VrAssignmentScoreModel> getScoreModel({
    @required String serviceID,
    @required String sessionTerm,
    @required String vrAssignmentID,
  }) async {
    return await FirebaseFirestore.instance
        .doc(
            "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionTerm/VRASSIGNMENTSCORE/$vrAssignmentID")
        .get()
        .then((x) {
      if (!x.exists) return null;
      return VrAssignmentScoreModel.fromJson(x.data());
    });
  }

  static Future<List<VrAssignmentScoreModel>>
      getVrAssignmentScoreListx() async {
    return await FirebaseFirestore.instance
        .collection(
            "SERVICEPROVIDERINFO/kF2P9uwiLfYuhYUQbsGK/SESSIONTERM/2020-2021/VRASSIGNMENTSCORE")
        .get()
        .then((x) {
      return VrAssignmentScoreModel.listFromJson(
          x.docs.map((d) => d.data).toList());
    });
  }
}
