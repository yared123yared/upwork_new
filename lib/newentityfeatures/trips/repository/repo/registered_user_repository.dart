import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../model/models/registered_user.dart';

class RegisteredUserRepo {
  static final _firestore = FirebaseFirestore.instance;

  static Future<List<RegisteredUser>> registeredUser(String serviceId) async {
    try {
      return _firestore
          .collection('SERVICEPROVIDERINFO/$serviceId/TripRegisteredUsers')
          .get()
          .then(
            (value) => value.docs
                .map((e) => RegisteredUser.fromJson(e.data()))
                .toList(),
          );
    } catch (e) {
      print(e);
    }
  }

  static Future registerUser({
    @required RegisteredUser user,
    @required String serviceId,
  }) {
    try {
      return _firestore
          .doc(
            "SERVICEPROVIDERINFO/$serviceId/TripRegisteredUsers/${user.userId}",
          )
          .set(user.toJson());
    } catch (e) {
      print(e);
    }
  }

  static Future updateUser({
    @required RegisteredUser user,
    @required String serviceId,
  }) {
    try {
      return _firestore
          .doc(
            "SERVICEPROVIDERINFO/$serviceId/TripRegisteredUsers/${user.userId}",
          )
          .set(user.toJson());
    } catch (e) {
      print(e);
    }
  }
}
