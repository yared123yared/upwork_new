import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/user_registration_model.dart';

class UserRegistrationGateway {


  static Future<int> getRegistrationNumber(String serviceid) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'GetRegistrationNumberRequest',
      );
      print("CloudFunction " + "end");
      HttpsCallableResult resp = await callable.call(<String, dynamic>{
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceid,
        "prefix": "",
        "startcount": 1
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

      return resp.data['id'] as int;

  }

  static Future<Map<String, UserRegistrationModel>> getUserRegistrationList({
    @required String serviceID,
  }) async {

      List<UserRegistrationModel> _users = await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION")
          .get()
          .then((x) {
        if (x.docs != null) {
          return UserRegistrationModel.listFromJson(
              x.docs.map((d) => d.data).toList());
        } else {
          return [];
        }
      });
      Map<String, UserRegistrationModel> _usersMap = {};
      _users.forEach((user) {
        _usersMap[user.idCardNum] = user;
      });
      return _usersMap;

  }

  ///must two of these are null and one is valid
  static Future<List<UserRegistrationModel>> getUserWithOneOf({
    @required String serviceID,
    String cardNum,
    String phone,
    String guardianPhone,
  }) async {

      var doc = FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION");
      Query s;
      if (cardNum != null && cardNum.isNotEmpty)
        s = doc.where("idcardnum", isEqualTo: cardNum);
      else if (phone != null && phone.isNotEmpty)
        s = doc.where("phone", isEqualTo: phone);
      else if (guardianPhone != null && guardianPhone.isNotEmpty)
        s = doc.where("gaurdian1phone", isEqualTo: guardianPhone);

      var res = await s.get();
      List<UserRegistrationModel> mylist=[];
      for(var k in res.docs)
        {
          UserRegistrationModel u = UserRegistrationModel.fromJson(k.data());
          mylist.add(u);
        }

      return mylist;


  }

  static Future<Map<String, UserRegistrationModel>> getUserRegistrationListByID(
      {@required String serviceID,
      @required UserRegistrationModel userReg}) async {

      List<UserRegistrationModel> _users = await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION")
          .where('idcardnumber', isEqualTo: userReg.idCardNum)
          .get()
          .then((x) {
        return UserRegistrationModel.listFromJson(
            x.docs.map((e) => e.data).toList());
      });
      Map<String, UserRegistrationModel> _usersMap = {};
      _users.forEach((user) {
        _usersMap[user.idCardNum] = user;
      });
      return _usersMap;

  }

  static Future<UserRegistrationModel> getUserRegistration(
      String channelID) async {

      return await FirebaseFirestore.instance
          .doc(
              "SERVICEPROVIDERINFO/kF2P9uwiLfYuhYUQbsGK/USERREGISTRATION/$channelID")
          .get()
          .then((x) {
        return UserRegistrationModel.fromJson(x.data());
      });

  }

  static Future<Map<String, UserRegistrationModel>>
      getUserRegistrationListByIDForLookUp(
          {@required String serviceID, @required String idCardNum}) async {

      List<UserRegistrationModel> _users = await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION")
          .where('idcardnumber', isEqualTo: idCardNum)
          .get()
          .then((x) {
        return UserRegistrationModel.listFromJsonforlookup(
            x.docs.map((e) => e.data).toList());
      });
      Map<String, UserRegistrationModel> _usersMap = {};
      _users.forEach((user) {
        _usersMap[user.idCardNum] = user;
      });
      return _usersMap;

  }

  static Future<Map<String, UserRegistrationModel>>
      getUserRegistrationListByStudentNameForLookUp({
    @required String serviceID,
    @required String studentname,
  }) async {

      List<UserRegistrationModel> _users = await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION")
          .where('name', isEqualTo: studentname)
          .get()
          .then((x) {
        return UserRegistrationModel.listFromJsonforlookup(
            x.docs.map((e) => e.data).toList());
      });
      Map<String, UserRegistrationModel> _usersMap = {};
      _users.forEach((user) {
        _usersMap[user.idCardNum] = user;
      });
      return _usersMap;

  }

  static Future<Map<String, UserRegistrationModel>>
      getUserRegistrationListByGaurdian1PhoneForLookUp({
    @required String serviceID,
    @required String gaurdian1phone,
  }) async {

      List<UserRegistrationModel> _users = await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION")
          .where('gaurdian1phone', isEqualTo: gaurdian1phone)
          .get()
          .then((x) {
        return UserRegistrationModel.listFromJsonforlookup(
            x.docs.map((e) => e.data).toList());
      });
      Map<String, UserRegistrationModel> _usersMap = {};
      _users.forEach((user) {
        _usersMap[user.idCardNum] = user;
      });
      return _usersMap;

  }

  static Future<Map<String, UserRegistrationModel>>
      getUserRegistrationListByGaurdian2PhoneForLookUp({
    @required String serviceID,
    @required String gaurdian2phone,
  }) async {

      List<UserRegistrationModel> _users = await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION")
          .where('gaurdian2phone', isEqualTo: gaurdian2phone)
          .get()
          .then((x) {
        return UserRegistrationModel.listFromJsonforlookup(
            x.docs.map((e) => e.data).toList());
      });
      Map<String, UserRegistrationModel> _usersMap = {};
      _users.forEach((user) {
        _usersMap[user.idCardNum] = user;
      });
      return _usersMap;

  }

  static Future<void> removeUserRegistration(
    UserRegistrationModel userReg,
    String serviceID,
  ) async {

      String stuid = userReg.idCardNum;
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION/$stuid")
          .delete();

  }

  static Future addNewUserRegistration({
    @required UserRegistrationModel userReg,
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION")
          .doc(userReg.idCardNum)
          .set(userReg.toJson());

  }

  static Future updateUserRegistration({
    @required UserRegistrationModel userReg,
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION")
          .doc(userReg.idCardNum)
          .update(userReg.toJson());

  }
}
