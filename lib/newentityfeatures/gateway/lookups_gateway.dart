import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:flutter/foundation.dart';

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

  static Future<List<String>> getGradeList({@required String serviceID}) async {

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

  }



  static Future<void> addGrade({
    @required String serviceID,
    @required String gradeName,
  }) {
    try {
      return FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'grade': FieldValue.arrayUnion([gradeName])
      });
    } catch (e) {
      print(e);
      throw e;
    }
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
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'feeitemlist': FieldValue.arrayUnion([feeItem])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> deleteFeeItemList(
      {@required String serviceID, @required String feeItem}) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'feeitemlist': FieldValue.arrayRemove([feeItem])
      });
    } catch (e) {
      print(e);
      throw e;
    }
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
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'subject': FieldValue.arrayUnion([subject])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> deleteOfferingList(
      {@required String serviceID, @required String subject}) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'subject': FieldValue.arrayRemove([subject])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<SessionTerm>> getSessionTerms(String serviceID) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
//            print(x.data();
        return SessionTermList.fromJson(x.data()).list;
      });
    } catch (e) {
      print("session term error: $e");
      throw e;
    }
  }

  static Future<void> deleteExamTermInfo(
      {@required String serviceID, @required ExamTermInfo examTerm}) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'sessionterm': FieldValue.arrayRemove([examTerm.toJson()])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<ExamTermInfo>> getExamTermInfo(String serviceID) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
        if (x.data() != null) {
          return ExamTermInfoList.fromJson(x.data()).list;
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
    try {
      return FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'examterminfo': FieldValue.arrayUnion([examTermInfo.toJson()])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<RoomInfo>> getRoomsInfo(String serviceID) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
        if (x.data() != null) {
          return RoomInfoList.fromJson(x.data()).list;
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
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'roominfo': FieldValue.arrayUnion([roomInfo.toJson()])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> deleteRoomInfo(
      {@required String serviceID, @required RoomInfo roomInfo}) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'roominfo': FieldValue.arrayUnion([roomInfo.toJson()])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<ClassPeriodInfo>> getClassPeriodInfo(
    String serviceID,
  ) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then<List<ClassPeriodInfo>>((x) {
        if (x.data() != null) {
          return ClassPeriodInfoList.fromJson(x.data()).list;
        } else {
          return [];
        }
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  /// takes the complete list<period> and save it
  static Future<void> setClassPeriodInfo({
    @required String serviceID,
    @required List<ClassPeriodInfo> classPeriodInfoList,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'classperiodinfo': classPeriodInfoList.map((e) => e.toJson()).toList()
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> addClassPeriodInfo({
    @required String serviceID,
    @required ClassPeriodInfo classPeriodInfo,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'classperiodinfo': FieldValue.arrayUnion([
          classPeriodInfo.toJson(),
        ])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> updateClassPeriodInfo({
    @required String serviceID,
    @required ClassPeriodInfo classPeriodInfo,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'classperiodinfo': FieldValue.arrayUnion([
          classPeriodInfo.toJson(),
        ])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> deleteClassPeriodInfo({
    @required String serviceID,
    @required ClassPeriodInfo classPeriodInfo,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'classperiodinfo': FieldValue.arrayUnion([
          classPeriodInfo.toJson(),
        ])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> updatePaymentPeriodInfo({
    @required String serviceID,
    @required PaymentPeriodInfo paymentPeriodInfo,
    @required PaymentPeriodInfo oldPaymentPeriodInfo,
  }) async {
    try {
      await LookupGateway.deletePaymentPeriodInfo(
        serviceID: serviceID,
        paymentPeriodInfo: oldPaymentPeriodInfo,
      );
      await LookupGateway.addPaymentPeriodInfo(
        serviceID: serviceID,
        paymentPeriodInfo: paymentPeriodInfo,
      );

    } catch (e) {
      print(e);
    }
  }

  static Future<List<PaymentPeriodInfo>> getPaymentPeriodInfo({
    String serviceID,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
        if (x.data() != null) {
          if (x.data()['paymentperiodinfo'] != null) {
            return PaymentPeriodInfoList.fromJson(x.data()).list;
          } else {
            return [];
          }
        } else {
          return [];
        }
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> addPaymentPeriodInfo(
      {@required String serviceID,
      @required PaymentPeriodInfo paymentPeriodInfo}) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'paymentperiodinfo': FieldValue.arrayUnion([paymentPeriodInfo.toJson()])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> deletePaymentPeriodInfo({
    @required String serviceID,
    @required PaymentPeriodInfo paymentPeriodInfo,
  }) async {
    try {
      await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'paymentperiodinfo':
            FieldValue.arrayRemove([paymentPeriodInfo.toJson()])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
