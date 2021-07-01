import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:complex/newentityfeatures/Models/lookups.dart';

class LookupGateway {
  static Future<List<String>> getFeeItemList(String serviceID) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
        List<String> _feeItems = [];
        if (x.data() != null) {
          if (x.data()['feeitemlist'] != null) {
            _feeItems = List.from(x.data()['feeitemlist']);
          }
        } else {
          return [];
        }

        return _feeItems;
      });
    } catch (e) {
      print("session term error: $e");
      throw e;
    }
  }

  static Future<List<String>> getGradeList(String serviceID) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
        List<String> _grades = [];
        if (x.data() != null) {
          if (x.data()['grades'] != null) {
            _grades = List.from(x.data()['grades']);
          }
        } else {
          return [];
        }

        return _grades;
      });
    } catch (e) {
      print("session term error: $e");
      throw e;
    }
  }

  static Future<void> addGrade({
    @required String serviceID,
    @required String gradeName,
  }) {
    return FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'grade': FieldValue.arrayUnion([gradeName])
    });
  }

  static Future<List<String>> getSubjectList(String serviceID) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
        List<String> _subject = [];
        if (x.data() != null) {
          if (x.data()['subject'] != null) {
            _subject = List.from(x.data()['subject']);
          }
        } else {
          return [];
        }

        return _subject;
      });
    } catch (e) {
      print("session term error: $e");
      throw e;
    }
  }

  static Future<void> addFeeItemList(
      {@required String serviceID, @required String feeItem}) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'feeitemlist': FieldValue.arrayUnion([feeItem])
    });
  }

  static Future<void> deleteFeeItemList(
      {@required String serviceID, @required String feeItem}) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'feeitemlist': FieldValue.arrayRemove([feeItem])
    });
  }

  static Future<List<String>> getOfferingsList(String serviceID) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
        List<String> _feeItems = [];
        if (x.data() != null) {
          if (x.data()['subject'] != null) {
            x.data()['subject'].forEach((item) {
              _feeItems.add(item);
            });
          } else {
            return [];
          }
        }
        return _feeItems;
      });
    } catch (e) {
      print("session term error: $e");
      throw e;
    }
  }

  static Future<void> addOfferingList({
    @required String serviceID,
    @required String subject,
  }) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'subject': FieldValue.arrayUnion([subject])
    });
  }

  static Future<void> deleteOfferingList(
      {@required String serviceID, @required String subject}) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'subject': FieldValue.arrayRemove([subject])
    });
  }

  static Future<List<SessionTermModel>> getSessionTerms(
      String serviceID) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
//            print(x.data();
        return SessionTermModel.listFromData(x.data());
      });
    } catch (e) {
      print("session term error: $e");
      throw e;
    }
  }

  static Future<void> deleteExamTermInfo(
      {@required String serviceID, @required ExamTermInfo examTerm}) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'sessionterm': FieldValue.arrayRemove([examTerm.toData()])
    });
  }

  static Future<List<ExamTermInfo>> getExamTermInfo(String serviceID) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
        if (x.data() != null) {
          return ExamTermInfo.listFromData(x.data());
        } else {
          return [];
        }
      });
    } catch (e) {
      print("session term error: $e");
      throw e;
    }
  }

  static Future<void> addExamTermInfo({
    @required String serviceID,
    @required ExamTermInfo examTermInfo,
  }) {
    return FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'examterminfo': FieldValue.arrayUnion([examTermInfo.toData()])
    });
  }

  static Future<List<RoomInfo>> getRoomsInfo(String serviceID) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
        if (x.data() != null) {
          return RoomInfo.listFromData(x.data());
        } else {
          return [];
        }
      });
    } catch (e) {
      print("session term error: $e");
      throw e;
    }
  }

  static Future<void> addRoomInfo({
    @required String serviceID,
    @required RoomInfo roomInfo,
  }) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'roominfo': FieldValue.arrayUnion([roomInfo.toData()])
    });
  }

  static Future<void> deleteRoomInfo(
      {@required String serviceID, @required RoomInfo roomInfo}) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'roominfo': FieldValue.arrayUnion([roomInfo.toData()])
    });
  }

  static Future<List<ClassPeriodInfo>> getClassPeriodInfo(
    String serviceID,
  ) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .get()
        .then<List<ClassPeriodInfo>>((x) {
      if (x.data() != null) {
        return ClassPeriodInfo.listFromData(x.data());
      } else {
        return [];
      }
    });
  }

  /// takes the complete list<period> and save it
  static Future<void> setClassPeriodInfo({
    @required String serviceID,
    @required List<ClassPeriodInfo> classPeriodInfoList,
  }) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'classperiodinfo': classPeriodInfoList.map((e) => e.toData()).toList()
    });
  }

  static Future<void> addClassPeriodInfo({
    @required String serviceID,
    @required ClassPeriodInfo classPeriodInfo,
  }) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'classperiodinfo': FieldValue.arrayUnion([
        classPeriodInfo.toData(),
      ])
    });
  }

  static Future<void> updateClassPeriodInfo({
    @required String serviceID,
    @required ClassPeriodInfo classPeriodInfo,
  }) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'classperiodinfo': FieldValue.arrayUnion([
        classPeriodInfo.toData(),
      ])
    });
  }

  static Future<void> deleteClassPeriodInfo({
    @required String serviceID,
    @required ClassPeriodInfo classPeriodInfo,
  }) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'classperiodinfo': FieldValue.arrayUnion([
        classPeriodInfo.toData(),
      ])
    });
  }

  static Future<List<PaymentPeriodInfo>> getPaymentPeriodInfo(
    String serviceID,
  ) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .get()
        .then((x) {
      if (x.data() != null) {
        if (x.data()['paymentperiodinfo'] != null) {
          return PaymentPeriodInfo.listFromData(x.data()['paymentperiodinfo']);
        } else {
          return [];
        }
      } else {
        return [];
      }
    });
  }

  static Future<void> addPaymentPeriodInfo(
      {@required String serviceID,
      @required PaymentPeriodInfo paymentPeriodInfo}) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'paymentperiodinfo': FieldValue.arrayUnion([paymentPeriodInfo.toData()])
    });
  }

  static Future<void> deletePaymentPeriodInfo({
    @required String serviceID,
    @required PaymentPeriodInfo paymentPeriodInfo,
  }) async {
    await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
        .update({
      'paymentperiodinfo': FieldValue.arrayRemove([paymentPeriodInfo.toData()])
    });
  }
}
