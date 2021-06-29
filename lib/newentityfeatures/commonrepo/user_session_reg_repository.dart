

import 'package:flutter/cupertino.dart';

import 'package:complex/newentityfeatures/Models/user_session_registration.dart';

import 'package:complex/newentityfeatures/gateway/user_session_registration_gateway.dart';

class UserSessionRegRepository {
  Map<String, List<UserSessionRegModel>> _userSessionRegList;

  Future<void> setUserSessionRegList({@required String serviceID}) async {
    _userSessionRegList = _userSessionRegList ?? {};
    _userSessionRegList[serviceID] =
        await UserSessionRegGateway.getUserSessionReg(serviceID: serviceID);
  }

  Future<List<UserSessionRegModel>> getUserSessionReg({
    @required String serviceID,
  }) async {
    if (_userSessionRegList == null || _userSessionRegList.isEmpty)
      await setUserSessionRegList(serviceID: serviceID);
    return _userSessionRegList[serviceID];
  }

  Future addUserSessionRegistration({
    @required UserSessionRegModel userSession,
    @required String serviceID,
  }) async {
    await UserSessionRegGateway.addUserSessionRegistration(
      userSession: userSession,
      serviceID: serviceID,
    );
    await setUserSessionRegList(serviceID: serviceID);
  }

  Future closeUserSessionRegistration({
    @required UserSessionRegModel userSession,
    @required String serviceID,
  }) async {
    await UserSessionRegGateway.closeUserSessonRegistrationNumber(
      data: userSession,
      serviceID: serviceID,
    );
    await setUserSessionRegList(serviceID: serviceID);
  }

  Future updateUserSessionRegistration({
    @required UserSessionRegModel oldData,
    @required UserSessionRegModel newData,
    @required String serviceID,
  }) async {
    await UserSessionRegGateway.updateUserSessonRegistrationNumber(
        oldData: oldData, newData: newData, serviceID: serviceID);
    await setUserSessionRegList(serviceID: serviceID);
  }

  // New Repositories for User Session Reg Model - (Hasib)
  Future<UserSessionRegModel> getUserSessionRegModel({
    @required String serviceID,
    @required String sessionterm,
    @required String idcardnum,
  }) async {
    return await UserSessionRegGateway.getUserSessionRegModel(
      serviceID,
      sessionterm,
      idcardnum,
    );
  }
// (Hasib)
}
