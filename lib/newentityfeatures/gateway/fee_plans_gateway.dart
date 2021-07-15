import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';

class FeePlanGateway {
  static Future<List<FeePlanModel>> getFeePlanList({
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/FEEPLANS")
          .where("version", isEqualTo: 2)
          .get()
          .then((x) {
        return FeePlanModel.listFromJson(x.docs.map((d) => d.data).toList());
      });

  }

  static Future addNewFeePlan({FeePlanModel feePlan, String serviceID}) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/FEEPLANS")
          .doc(feePlan.feePlanName)
          .set(feePlan.toJson());

  }

  static Future updateFeePlan({FeePlanModel feePlan, String serviceID}) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/FEEPLANS")
          .doc(feePlan.feePlanName)
          .update(feePlan.toJson());

  }
}
