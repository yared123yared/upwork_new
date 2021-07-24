import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';

class FeePlanGateway {
  static Future<List<FeePlanModel>> getFeePlanList({@required String entitytype,
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection("$entitytype/$serviceID/FEEPLANS")
          .where("version", isEqualTo: 2)
          .get()
          .then((x) {
        return FeePlanModel.listFromJson(x.docs.map((d) => d.data).toList());
      });

  }

  static Future<List<FeePlanModel>> getFeePlanListByGrade({@required String entitytype,
    @required String serviceID,@required String grade
  }) async {

    return await FirebaseFirestore.instance
        .collection("$entitytype/$serviceID/FEEPLANS")
        .where("grade", isEqualTo: grade)
        .get()
        .then((x) {
      return FeePlanModel.listFromJson(x.docs.map((d) => d.data).toList());
    });

  }

  static Future<FeePlanModel> getFeePlanById({@required  String  entitytype,
  @required String serviceID, @required String feeplanname
  }) async {

  var pk = await FirebaseFirestore.instance
      .doc("$entitytype/$serviceID/FEEPLANS/$feeplanname")

      .get();

  if(pk.exists)
    {
      return FeePlanModel.fromJson(pk.data());
    }
    throw new Exception("No feeplan model exist");


  }

  static Future addNewFeePlan({FeePlanModel feePlan, String serviceID,@required  String  entitytype}) async {

      return await FirebaseFirestore.instance
          .collection("$entitytype/$serviceID/FEEPLANS")
          .doc(feePlan.feePlanName)
          .set(feePlan.toJson());

  }

  static Future updateFeePlan({FeePlanModel feePlan, String serviceID,@required  String  entitytype}) async {

      return await FirebaseFirestore.instance
          .collection("$entitytype/$serviceID/FEEPLANS")
          .doc(feePlan.feePlanName)
          .update(feePlan.toJson());

  }
}
