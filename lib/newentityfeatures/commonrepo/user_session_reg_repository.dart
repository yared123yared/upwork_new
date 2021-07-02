import 'package:flutter/cupertino.dart';

import 'package:complex/newentityfeatures/Models/user_session_registration.dart';

import 'package:complex/newentityfeatures/gateway/user_session_registration_gateway.dart';

class UserSessionRegRepository {
  Map<String, List<UserSessionRegModel>> _userSessionRegList;

  Future<void> setUserSessionRegList({@required String serviceID}) async {
    try {
      _userSessionRegList = _userSessionRegList ?? {};
      _userSessionRegList[serviceID] =
          await UserSessionRegGateway.getUserSessionReg(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<List<UserSessionRegModel>> getUserSessionReg({
    @required String serviceID,
  }) async {
    try {
      if (_userSessionRegList == null || _userSessionRegList.isEmpty)
        await setUserSessionRegList(serviceID: serviceID);
      return _userSessionRegList[serviceID];
    } catch (e) {
      print(e);
    }
  }

  Future addUserSessionRegistration({
    @required UserSessionRegModel userSession,
    @required String serviceID,
  }) async {
    try {
      await UserSessionRegGateway.addUserSessionRegistration(
        userSession: userSession,
        serviceID: serviceID,
      );
      await setUserSessionRegList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future closeUserSessionRegistration({
    @required UserSessionRegModel userSession,
    @required String serviceID,
  }) async {
    try {
      await UserSessionRegGateway.closeUserSessonRegistrationNumber(
        data: userSession,
        serviceID: serviceID,
      );
      await setUserSessionRegList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future updateUserSessionRegistration({
    @required UserSessionRegModel oldData,
    @required UserSessionRegModel newData,
    @required String serviceID,
  }) async {
    try {
      await UserSessionRegGateway.updateUserSessonRegistrationNumber(
          oldData: oldData, newData: newData, serviceID: serviceID);
      await setUserSessionRegList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  // New Repositories for User Session Reg Model - (Hasib)
  Future<UserSessionRegModel> getUserSessionRegModel({
    @required String serviceID,
    @required String sessionterm,
    @required String idcardnum,
  }) async {
    try {
      return await UserSessionRegGateway.getUserSessionRegModel(
        serviceID,
        sessionterm,
        idcardnum,
      );
// (Hasib)
    } catch (e) {
      print(e);
    }
  }
}
