import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:flutter/foundation.dart';

import 'package:complex/newentityfeatures/Models/parentinteraction_model.dart';
import 'package:complex/newentityfeatures/Models/virtual_room_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/offering_schedule_model.dart';
import 'package:complex/newentityfeatures/Models/registered_id_model.dart';

class SessionTermGateway {
  static Future<List<SessionTerm>> getSessionTerms(
      {@required String serviceID}) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .get()
          .then((x) {
        if (x.data() != null) {
          return SessionTermList.fromJson(x.data()).list;
        } else {
          return [];
        }
      });
    } on Exception {
      return [];
    }
  }

  static Future<List<ParentInteractionSingleValueListModel>>
      getProgressDataForParent({
    @required String entityid,
    @required String virtualroomname,
    @required String sessionterm,
    @required String idcardnum,
  }) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'StudentDataForParentsRequest',
      );
      print("CloudFunction " +
          <String, dynamic>{
            "actiontype": "progress",
            "idcardnum": idcardnum,
            "sessionterm": sessionterm,
            "entitytype": "SERVICEPROVIDERINFO",
            "entityid": entityid,
            "startdate": -1,
            "enddate": -1,
          }.toString() +
          "end");
      HttpsCallableResult resp = await callable.call(<String, dynamic>{
        "actiontype": "progress",
        "idcardnum": idcardnum,
        "sessionterm": sessionterm,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": entityid,
        "startdate": -1,
        "enddate": -1,
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
      print(resp.data);
      return <ParentInteractionSingleValueListModel>[];
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<ParentInteractionSingleValueListModel>>
      getNotesDataForParent({
    @required String entityid,
    @required String virtualroomname,
    @required String sessionterm,
    @required String idcardnum,
  }) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'StudentDataForParentsRequest',
      );
      print("CloudFunction " + "end");
      HttpsCallableResult resp = await callable.call(<String, dynamic>{
        "actiontype": "progress",
        "idcardnum": idcardnum,
        "sessionterm": sessionterm,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": entityid,
        "startdate": -1,
        "enddate": -1,
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
      print(resp.data);
      return <ParentInteractionSingleValueListModel>[];
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> addSessionTerm(
      {@required String serviceID, @required SessionTerm sessionTerm}) async {
    print("calling add session gateway");
    print(serviceID.toString());
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'sessionterm': FieldValue.arrayUnion([sessionTerm.toJson()])
      });
    } on Exception {}
  }

  static Future<void> deleteSessionTerm({
    @required String serviceID,
    @required SessionTerm sessionTerm,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update({
        'sessionterm': FieldValue.arrayRemove([sessionTerm.toJson()])
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<VirtualRoomModel>> getVirtualRoomList(
    String serviceID,
    String sessionID,
  ) async {
    try {
      return await FirebaseFirestore.instance
          .collection(
              "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionID/VIRTUALROOMS")
          .get()
          .then((x) {
        return VirtualRoomModel.listFromJson(
          x.docs.map((e) => e.data()).toList(),
          x.docs.map((e) => e.id).toList(),
        );
      });
    } on Exception {
      return [];
    }
  }

  // virtualRoom
  static Future<void> addVirtualRoom({
    @required String serviceID,
    @required String sessionID,
    @required VirtualRoomModel virtualRoomModel,
  }) async {
    try {
      print(serviceID.toString());
      await FirebaseFirestore.instance
          .collection(
            "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionID/VIRTUALROOMS",
          )
          .doc(virtualRoomModel.virtualRoomName)
          .set(virtualRoomModel.toJson());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  // offering Schedule
  static Future<void> addOfferingSchedule({
    @required String serviceID,
    @required String sessionID,
    @required OfferingsScheduleModel offeringsScheduleModel,
  }) async {
    try {
      await FirebaseFirestore.instance
          .collection(
            "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionID/OFFERINGSCHEDULE",
          )
          .doc()
          .set(offeringsScheduleModel.toJson());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future getVirtualRoomActionRequest(
      {@required VirtualRoomModel virtualRoomsModel,
      @required List<SchoolOwner> secondaryOwnerList}) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'VirtualRoomActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": "kF2P9uwiLfYuhYUQbsGK",
        "virtualroomdata": {
          "version": virtualRoomsModel.version,
          "virtualroomname": virtualRoomsModel.virtualRoomName,
          "virtualroomcategory": virtualRoomsModel.virtualRoomCategory,
          "associatedroom": virtualRoomsModel.associatedRoom,
          "sessiontermname": virtualRoomsModel.sessionTermName,
          "numofstudents": virtualRoomsModel.numOfStudent,
          "listofregisterid": virtualRoomsModel.listOfRegisteredId,
          "listofofferings": virtualRoomsModel.listOfOfferings,
          "primaryowner": {
            "id": "EITIuCvpTYfN4mUG5YdK2pzqh9r2",
            "display": "ins2reg2"
          },
          "secondaryowner": secondaryOwnerList
              .map((secondOwner) => secondOwner.toData())
              .toList(),
          "attendencetype": virtualRoomsModel.attendenceType,
          "scheduletype": virtualRoomsModel.scheduleType,
          "classroomtype": virtualRoomsModel.classRoomType,
          "runningnumber": virtualRoomsModel.runningNumber,
          "channeltype": virtualRoomsModel.channelType,
          "channelid": virtualRoomsModel.channelId,
          "serversidetimestamp": virtualRoomsModel.sessionTermName,
          "associatedchatroomid": virtualRoomsModel.sessionTermName
        },
        "olddata": "None",
        "newdata": "None",
        "virtualroomname": "grade4-A",
        "sessionterm": "2020-2021",
        "channelid": "None",
        "actiontype": "add"
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future updateVirtualRoom(
      {@required VirtualRoomModel virtualRoomModel,
      @required FeePlanModel feePlanModel,
      @required List<SchoolOwner> secondaryOwnerList,
      @required List<SchoolOwner> oldData1,
      @required List<SchoolOwner> newData1,
      @required VirtualRoomModel newData,
      @required VirtualRoomModel oldData}) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'UserSessionRegistrationActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "actiontype": "update",
        "usersessioninformation": "None",
        "newdata": toUpdateData(oldData1, newData1, oldData, newData),
        "olddata": toData(secondaryOwnerList, virtualRoomModel),
        "idcardnum": "1",
        "sessionterm": "2020-2021",
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": "a22BgQvIWcZ78eYh3yYA"
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Map<String, dynamic> toData(List<SchoolOwner> secondaryOwnerList,
      VirtualRoomModel virtualRoomsModel) {
    try {
      return {
        "version": virtualRoomsModel.version,
        "virtualroomname": virtualRoomsModel.virtualRoomName,
        "virtualroomcategory": virtualRoomsModel.virtualRoomCategory,
        "associatedroom": virtualRoomsModel.associatedRoom,
        "sessiontermname": virtualRoomsModel.sessionTermName,
        "numofstudents": virtualRoomsModel.numOfStudent,
        "listofregisterid": virtualRoomsModel.listOfRegisteredId,
        "listofofferings": virtualRoomsModel.listOfOfferings,
        "primaryowner": {
          "id": "EITIuCvpTYfN4mUG5YdK2pzqh9r2",
          "display": "ins2reg2"
        },
        "secondaryowner": secondaryOwnerList
            .map((secondOwner) => secondOwner.toData())
            .toList(),
        "attendencetype": virtualRoomsModel.attendenceType,
        "scheduletype": virtualRoomsModel.scheduleType,
        "classroomtype": virtualRoomsModel.classRoomType,
        "runningnumber": virtualRoomsModel.runningNumber,
        "channeltype": virtualRoomsModel.channelType,
        "channelid": virtualRoomsModel.channelId,
        "serversidetimestamp": virtualRoomsModel.sessionTermName,
        "associatedchatroomid": virtualRoomsModel.sessionTermName
      };
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Map<String, dynamic> toUpdateData(
      List<SchoolOwner> oldData1,
      List<SchoolOwner> newData1,
      VirtualRoomModel oldData,
      VirtualRoomModel newData) {
    if (oldData1.map((secondOwner) => secondOwner.toData()).toList() !=
        newData1.map((secondOwner) => secondOwner.toData()).toList()) {
      print(
          "correct: ${oldData1.map((secondOwner) => secondOwner.toData()).toList()} and new ${newData1.map((secondOwner) => secondOwner.toData()).toList()} ");
    } else {
      print(
          "incorrect: ${oldData1.map((secondOwner) => secondOwner.toData()).toList()} and new ${newData1.map((secondOwner) => secondOwner.toData()).toList()} ");
    }
    return {
      if (oldData1.map((secondOwner) => secondOwner.toData()).toList() !=
          newData1.map((secondOwner) => secondOwner.toData()).toList())
        'secondaryOwner':
            newData1.map((secondOwner) => secondOwner.toData()).toList(),
      if (oldData.version != newData.version) 'version': newData.version,
      if (oldData.virtualRoomName != newData.virtualRoomName)
        'virtualroomname': newData.virtualRoomName,
      if (oldData.virtualRoomCategory != newData.virtualRoomCategory)
        'virtualroomcategory': newData.virtualRoomCategory,
      if (oldData.associatedRoom != newData.associatedRoom)
        'associatedroom': newData.associatedRoom,
      if (oldData.sessionTermName != newData.sessionTermName)
        'sessiontermname': newData.sessionTermName,
      if (oldData.numOfStudent != newData.numOfStudent)
        'numofstudent': newData.numOfStudent,
      if (oldData.secondaryOwnerV != newData.secondaryOwnerV)
        'secondaryowner': newData.secondaryOwnerV,
      if (oldData.attendenceType != newData.attendenceType)
        'attendencetype': newData.attendenceType,
      if (oldData.scheduleType != newData.scheduleType)
        'scheduletype': newData.scheduleType,
      if (oldData.classRoomType != newData.classRoomType)
        'classroomtype': newData.classRoomType,
      if (oldData.runningNumber != newData.runningNumber)
        'runnignumber': newData.runningNumber,
      if (oldData.channelType != newData.channelType)
        'channeltype': newData.channelType,
      if (oldData.channelId != newData.channelId)
        'channelId': newData.channelId,
    };
  }

  static Future<OfferingsScheduleModel> getofferingfromofferingschedule(
      String serviceID, String sessionID, String offeringkeyid) async {
    try {
      return await FirebaseFirestore.instance
          .doc(
              "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionID/OFFERINGSCHEDULE/$offeringkeyid")
          .get()
          .then((x) {
        return OfferingsScheduleModel.fromJsonForSubject(x.data());
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<OfferingsScheduleModel> getattendencetypefromvirtualroom(
      String serviceID, String sessionID, String virtualroomname) async {
    try {
      return await FirebaseFirestore.instance
          .doc(
              "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionID/OFFERINGSCHEDULE/$virtualroomname")
          .get()
          .then((x) {
        return OfferingsScheduleModel.fromJsonForSubject(x.data());
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<String>> getjustOfferingDocList(
      String serviceID, String grade) async {
    try {
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/OFFERINGS")
          .where('grade', isEqualTo: grade)
          .get()
          .then((x) {
        print(x.docs);
        return x.docs.map((d) => d.id).toList();
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<RegisteredIdModel>>
      getRegisterdIdListForOfferingScheduleOptional(
          String serviceID, String sessionID, String offeringid) async {
    try {
      return await FirebaseFirestore.instance
          .doc(
              "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionID/OFFERINGSCHEDULE/$offeringid")
          .get()
          .then((x) {
        return getRegisterIdList(x.data());
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static List<RegisteredIdModel> getRegisterIdList(Map<String, dynamic> json) {
    try {
      List<RegisteredIdModel> mylist = List<RegisteredIdModel>();
      if (json['listofregisteredid'] != null) {
        json['listofregisteredid'].forEach((v) {
          mylist.add(RegisteredIdModel.fromData(data: v));
        });
      }
      return mylist;
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<OfferingsScheduleModel>> getOfferingDocList(
      String serviceID, String sessionID) async {
    try {
      return await FirebaseFirestore.instance
          .collection(
              "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionID/OFFERINGSCHEDULE")
          .get()
          .then((x) {
        print(x.docs);
        return OfferingsScheduleModel.listFromJson(
          x.docs.map((d) => d.data).toList(),
          x.docs.map((d) => d.id).toList(),
        );
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future createOfferingSchedule(
      {@required OfferingsScheduleModel offeringsScheduleModel,
      @required String serviceID}) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'OfferingScheduleActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "newdata": null,
        "olddata": null,
        "offeringschdata": offeringsScheduleModel.toJson(),
        "offeringschkey": null,
        "channelid": null,
        'actiontype': "add",
        'sessionterm': offeringsScheduleModel.sessionTermName,
        'entitytype': "SERVICEPROVIDERINFO",
        'entityid': serviceID,
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future updateOfferingSchedule(
      {@required OfferingsScheduleModel offeringsScheduleModel,
      OfferingsScheduleModel oldData,
      OfferingsScheduleModel newData}) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'OfferingScheduleActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "newdata": toUpdateDataOfr(oldData, newData),
        "olddata": toDataOfr(offeringsScheduleModel),
        "offeringschdata": "xyz",
        "offeringschkey": "lkd",
        "channelid": offeringsScheduleModel.channelId,
        'actiontype': "add",
        'sessionterm': "sessionterm",
        'entitytype': "SERVICEPROVIDERINFO",
        'entityid': 'kF2P9uwiLfYuhYUQbsGK',
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Map<String, dynamic> toDataOfr(
      OfferingsScheduleModel offeringsScheduleModel) {
    return {
      "offeringname": offeringsScheduleModel.offeringName,
      "primaryowner": offeringsScheduleModel.primaryOwner,
      "secondaryowner": offeringsScheduleModel.secondaryOwner,
      "sessiontermname": offeringsScheduleModel.sessionTermName,
      "virtualroomname": offeringsScheduleModel.virtualRoomName,
      "periodtype": offeringsScheduleModel.periodType,
      "classperiodname": offeringsScheduleModel.classPeriodName,
    };
  }

  static Map<String, dynamic> toUpdateDataOfr(
      OfferingsScheduleModel oldData, OfferingsScheduleModel newData) {
    if (oldData.primaryOwner != newData.primaryOwner) {
      print(
          "correct: ${oldData.primaryOwner} and new ${newData.primaryOwner} ");
    } else {
      print(
          "incorrect: ${oldData.primaryOwner} and new ${newData.primaryOwner} ");
    }
    return {
      if (oldData.offeringName != newData.offeringName)
        'offeringname': newData.offeringName,
      if (oldData.primaryOwner != newData.primaryOwner)
        'primaryowner': newData.primaryOwner,
      if (oldData.secondaryOwner != newData.secondaryOwner)
        'secondaryowner': newData.secondaryOwner,
      if (oldData.sessionTermName != newData.sessionTermName)
        'sessiontermname': newData.sessionTermName,
      if (oldData.virtualRoomName != newData.virtualRoomName)
        'virtualroomname': newData.virtualRoomName,
      if (oldData.periodType != newData.periodType)
        'periodtype': newData.periodType,
      if (oldData.classPeriodName != newData.classPeriodName)
        'classperiodname': newData.classPeriodName,
    };
  }

  static Future<Map<String, List<VirtualRoomModel>>>
      getVirtualRoomListbyPrimaryOwnerID({
    String serviceID,
    String sessionID,
    UserModel userModel,
  }) async {
    try {
      Map<String, List<VirtualRoomModel>> _vrRoomsMap = {};
      return await FirebaseFirestore.instance
          .collection(
              "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionID/VIRTUALROOMS")
          .where('primaryowner.id', isEqualTo: userModel.userID)
          .get()
          .then((x) {
        List<VirtualRoomModel> vrModel = VirtualRoomModel.listFromJson(
          x.docs.map((d) => d.data()).toList(),
          x.docs.map((d) => d.id).toList(),
        );
        _vrRoomsMap.update(
          "$sessionID",
          (value) => vrModel,
          ifAbsent: () => vrModel,
        );
        return _vrRoomsMap;
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

// static Future<List<VirtualRoomModel>> getVirtualRoomListbySecondaryOwnerID(
//   String serviceID,
//   String sessionID,
//   UserModel userModel,
// ) async {
//   return await FirebaseFirestore.instance
//       .collection(
//           "SERVICEPROVIDERINFO/$serviceID/SESSIONTERM/$sessionID/VIRTUALROOMS")
//       .where('secondaryowner', arrayContains: userModel.userID)
//       .get()
//       .then((x) {
//     return VirtualRoomModel.listFromJson(x.docs.map((d) => d.data).toList());
//   });
//   } catch (e) {
//    print(e);
//    throw e;
//   }
// }
}
