import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';

import '../models/models.dart';

abstract class AbstractStaffRepository {
  Stream<List<StaffModel>> getStaffByService(
      String serviceName, String serviceProviderId);

  Stream<StaffModel> getSingleStaff(String id, String serviceProviderId);

  Stream<List<StaffModel>> getStaff(String staffId);

  Future<void> createStaff(StaffModel staff);

  Future<void> editStaff(StaffModel staff);

  Future<void> deleteStaff(String staffId);
}

class StaffRepository implements AbstractStaffRepository {
  final staffCollection = FirebaseFirestore.instance.collection('SERVICEPROVIDERINFO');

  ///
  /// GET STAFF BY SERVICE
  ///

  Stream<List<StaffModel>> getStaffByService(
      String serviceName, String serviceProviderId) {
    try {
      Stream<List<StaffModel>> staff = staffCollection
          .doc(serviceProviderId)
          .collection('STAFF')
          .where('category',isEqualTo:"APPOINTMENT")
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return StaffModel.fromFirestore(doc);
        }).toList();
      });

      final observable = staff.shareValue();
      return observable;
    } on PlatformException catch (e) {
      print(e);
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }

  ///
  /// GET SINGLE STAFF MEMBER
  ///

  Stream<StaffModel> getSingleStaff(String id, String serviceProviderId) {
    try {
      Stream<StaffModel> staff = staffCollection
          .doc(serviceProviderId)
          .collection('STAFF')
          .doc(id)
          .snapshots()
          .map((doc) {
        return StaffModel.fromFirestore(doc);
      });

      final observable = staff.shareValue();
      return observable;
    } on PlatformException catch (e) {
      print(e);
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }

  ///
  /// GET ALL STAFF
  ///

  Stream<List<StaffModel>> getStaff(String serviceId) {
    try {
      Stream<List<StaffModel>> staff = staffCollection
          .doc(serviceId)
          .collection('STAFF')
          .where('category', arrayContains: "APPOINTMENT")
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return StaffModel.fromFirestore(doc);
        }).toList();
      });

      final observable = staff.shareValue();
      return observable;
    } on PlatformException catch (e) {
      print(e);
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }

  ///
  /// CREATE STAFF
  ///

  Future<void> createStaff(StaffModel staff) async {
    try {
      staffCollection.add({
        ...staff.toMap(),
      });
    } on PlatformException catch (e) {
      print(e.message);
      return null;
    }
  }

  ///
  /// EDIT STAFF
  ///

  Future<void> editStaff(StaffModel staff) async {
    try {
      await staffCollection
          .doc(staff.staffId)
          .update({...staff.toMap()});
    } on PlatformException catch (e) {
      print(e.message);
      throw e;
    }
  }

  ///
  /// DELETE STAFF
  ///

  Future<void> deleteStaff(String staffId) async {
    try {
      await staffCollection.doc(staffId).delete();
    } on PlatformException catch (e) {
      print(e.message);
      return null;
    }
  }
}
