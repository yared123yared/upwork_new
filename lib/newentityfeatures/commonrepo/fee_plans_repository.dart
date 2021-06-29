import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';

import 'package:flutter/cupertino.dart';

import 'package:complex/newentityfeatures/gateway/fee_plans_gateway.dart';

class FeePlansRepository {
  Map<String, List<FeePlanModel>> _feePlanList = {};

  Future<void> setFeeIPlanList({@required String serviceID}) async {
    List<FeePlanModel> _list =
        await FeePlanGateway.getFeePlanList(serviceID: serviceID);
    _feePlanList[serviceID] = _list;
  }

  Future<List<FeePlanModel>> getFeePlanList(
      {@required String serviceID}) async {
    if (_feePlanList[serviceID] == null ||
        _feePlanList[serviceID].length == 0) {
      await setFeeIPlanList(serviceID: serviceID);
    }

    return _feePlanList[serviceID];
  }

  Future<void> addFeePlan({
    FeePlanModel feePlan,
    String serviceID,
  }) async {
    await FeePlanGateway.addNewFeePlan(
      feePlan: feePlan,
      serviceID: serviceID,
    );
    await setFeeIPlanList(serviceID: serviceID);
  }

  Future<void> updateFeePlan({
    FeePlanModel feePlan,
    String serviceID,
  }) async {
    if (_feePlanList[serviceID] != null || _feePlanList.length != 0) {
      await FeePlanGateway.updateFeePlan(
        feePlan: feePlan,
        serviceID: serviceID,
      );
    }
    await setFeeIPlanList(serviceID: serviceID);
  }
}
