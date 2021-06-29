import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/user_session_registration.dart';

class UserSessionRegGateway {
  static Future<UserSessionRegModel> getUserSessionRegModel(
    String serviceID,
    String sessionterm,
    String idcardnum,
  ) async {
    String idkey = idcardnum + "@" + sessionterm;
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/USERSESSIONREGISTRATION/$idkey")
        .get()
        .then((x) {
      if (!x.exists) return null;
      return UserSessionRegModel.fromJson(x.data(), x.id);
    });
  }

  static Future<List<UserSessionRegModel>> getUserSessionReg({
    @required String serviceID,
  }) async {
    return await FirebaseFirestore.instance
        .collection("SERVICEPROVIDERINFO/$serviceID/USERSESSIONREGISTRATION/")
        .get()
        .then((x) {
      return UserSessionRegModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future addUserSessionRegistration({
    @required UserSessionRegModel userSession,
    @required String serviceID,
  }) async {
    final HttpsCallable callable =FirebaseFunctions.instance.httpsCallable(
    'UserSessionRegistrationActionRequest',
    );
    dynamic resp = await callable.call(<String, dynamic>{
      "actiontype": "add",
      "usersessioninformation": userSession.toData(),
      "newdata": "None",
      "olddata": "None",
      "idcardnum": userSession.idCardNum,
      "sessionterm": userSession.activeSession,
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID,
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future closeUserSessonRegistrationNumber({
    @required UserSessionRegModel data,
    @required String serviceID,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
    'UserSessionRegistrationActionRequest',
    );
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "actiontype": "close",
      "usersessioninformation": null,
      "olddata": null,
      "newdata": data.toData(),
      "idcardnum": data.idCardNum,
      "sessionterm": data.activeSession,
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future updateUserSessonRegistrationNumber(
      {@required UserSessionRegModel oldData,
      @required UserSessionRegModel newData,
      @required String serviceID}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'UserSessionRegistrationActionRequest',
    );
    print("CloudFunction " + "end");

    dynamic resp = await callable.call(<String, dynamic>{
      "actiontype": "update",
      "usersessioninformation": null,
      "olddata": oldData.toData(),
      "newdata": toUserSessionUpdateData(oldData, newData),
      "idcardnum": oldData.idCardNum,
      "sessionterm": oldData.activeSession,
      "entitytype": "SERVICEPROVIDERINFO",
      "entityid": serviceID
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }
}
