import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/user_registration_model.dart';

class UserRegistrationGateway {
  static Future<Map<String, UserRegistrationModel>> getUserRegistrationList({
    @required String serviceID,
  }) async {
    try {
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
    } catch (e) {
      print(e);
      throw e;
    }
  }

  ///must two of these are null and one is valid
  static Future<UserRegistrationModel> getUserWithOneOf({
    @required String serviceID,
    String cardNum,
    String phone,
    String guardianPhone,
  }) async {
    try {
      var doc = FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION");
      Query s;
      if (cardNum != null) s = doc.where("idcardnum", isEqualTo: cardNum);
      if (phone != null) s = doc.where("phone", isEqualTo: phone);
      if (guardianPhone != null)
        s = doc.where("gaurdian1phone", isEqualTo: phone);

      var res = await s.get();

      if (res.docs.length > 0) {
        return UserRegistrationModel.fromJson(res.docs.first.data());
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<Map<String, UserRegistrationModel>> getUserRegistrationListByID(
      {@required String serviceID,
      @required UserRegistrationModel userReg}) async {
    try {
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
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<UserRegistrationModel> getUserRegistration(
      String channelID) async {
    try {
      return await FirebaseFirestore.instance
          .doc(
              "SERVICEPROVIDERINFO/kF2P9uwiLfYuhYUQbsGK/USERREGISTRATION/$channelID")
          .get()
          .then((x) {
        return UserRegistrationModel.fromJson(x.data());
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<Map<String, UserRegistrationModel>>
      getUserRegistrationListByIDForLookUp(
          {@required String serviceID, @required String idCardNum}) async {
    try {
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
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<Map<String, UserRegistrationModel>>
      getUserRegistrationListByStudentNameForLookUp({
    @required String serviceID,
    @required String studentname,
  }) async {
    try {
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
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<Map<String, UserRegistrationModel>>
      getUserRegistrationListByGaurdian1PhoneForLookUp({
    @required String serviceID,
    @required String gaurdian1phone,
  }) async {
    try {
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
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<Map<String, UserRegistrationModel>>
      getUserRegistrationListByGaurdian2PhoneForLookUp({
    @required String serviceID,
    @required String gaurdian2phone,
  }) async {
    try {
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
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> removeUserRegistration(
    UserRegistrationModel userReg,
    String serviceID,
  ) async {
    try {
      String stuid = userReg.idCardNum;
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION/$stuid")
          .delete();
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future addNewUserRegistration({
    @required UserRegistrationModel userReg,
    @required String serviceID,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION")
          .doc(userReg.idCardNum)
          .set(userReg.toJson());
    } catch (e) {
      print(e);
    }
  }

  static Future updateUserRegistration({
    @required UserRegistrationModel userReg,
    @required String serviceID,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERREGISTRATION")
          .doc(userReg.idCardNum)
          .update(userReg.toJson());
    } catch (e) {
      print(e);
    }
  }
}
