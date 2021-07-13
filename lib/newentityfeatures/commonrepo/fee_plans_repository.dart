import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';

import 'package:flutter/cupertino.dart';

import 'package:complex/newentityfeatures/gateway/fee_plans_gateway.dart';

class FeePlansRepository {


  Future<void> setFeeIPlanList({@required String serviceID}) async {
    try {
      List<FeePlanModel> _list =
          await FeePlanGateway.getFeePlanList(serviceID: serviceID);

    } catch (e) {
      print(e);
    }
  }

  Future<List<FeePlanModel>> getFeePlanList(
      {@required String serviceID}) async {
    try {
      List<FeePlanModel> _list =
      await FeePlanGateway.getFeePlanList(serviceID: serviceID);
      return _list;
      }
     catch (e) {
      print(e);
    }
  }

  Future<void> addFeePlan({
    FeePlanModel feePlan,
    String serviceID,
  }) async {
    try {
      await FeePlanGateway.addNewFeePlan(
        feePlan: feePlan,
        serviceID: serviceID,
      );

    } catch (e) {
      print(e);
    }
  }

  Future<void> updateFeePlan({
    FeePlanModel feePlan,
    String serviceID,
  }) async {
    try {
       {
        await FeePlanGateway.updateFeePlan(
          feePlan: feePlan,
          serviceID: serviceID,
        );
      }

    } catch (e) {
      print(e);
    }
  }
}
