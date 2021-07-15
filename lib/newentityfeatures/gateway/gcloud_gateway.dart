import 'dart:async';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/response/user_response/complex_model.dart';
import 'package:complex/newentityfeatures/Models/user_session_registration.dart';

import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';
import 'package:complex/newentityfeatures/Models/virtual_room_model.dart';

class SchoolGateway {
  static Future<void> createComplex(
      {@required ComplexModel complexModel}) async {
    final HttpsCallable newEntityCreateRequest =
        FirebaseFunctions.instance.httpsCallable(
      'NewEntityCreateRequest',
    );

      final HttpsCallableResult result =
          await newEntityCreateRequest.call(<String, dynamic>{
        'entitydata': {
          'version': 1,
          'complexName': complexModel.complexName,
          'address': complexModel.address,
          'town': complexModel.town,
          'state': complexModel.state,
          'zipcode': complexModel.zipCode,
          'latitude': complexModel.latitude,
          'longitude': complexModel.longitude,
          "geohash": complexModel.geoHash,
          'complextype': complexModel.complexType,
          'buildingtype': complexModel.buildingType,
          'deviceallocated': complexModel.deviceAllowed,
          'hassecurity': complexModel.hasSecurity,
          'startdate': complexModel.startDate,
          'enddate': complexModel.endDate,
          'isactive': complexModel.isActive,
          'createdby': complexModel.createdBy,
//        'createddatetime': Timestamp.now(),
//        'serversidetimestamp':Timestamp.now(),
        },
        'entitytype': "COMPLEXES",
      });
      print(result.data);

  }

//  static Future submitAttendenceVirtualRoom(
//      {@required AttendanceModel attendanceModel,
//      @required AttendanceInfo attendenceInfo}) async {
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'SubmitAttendenceRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      "entitytype": "SERVICEPROVIDERINFO",
//      "entityid": "kF2P9uwiLfYuhYUQbsGK",
//      "virtualroomname": "grade2-A",
//      "actiontype": "vr",
//      "date": attendanceModel.date,
//      "kind": attendanceModel.kind,
//      "sessionterm": "2020-2021",
//      "studentInfo": [
//        {"id": attendenceInfo.studentID, "val": attendenceInfo.attendence},
//        {"id": "2", "val": "A"},
//        {"id": "3", "val": "A"},
//        {"id": "4", "val": "A"},
//        {"id": "5", "val": "A"},
//        {"id": "6", "val": "A"}
//      ]
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }

  static Future getUserSessonRegistrationNumber(
      {@required UserSessionRegModel userSessionRegModel,
      @required FeePlanModel feePlanModel}) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'UserSessionRegistrationActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "actiontype": "add",
        "usersessioninformation": {
          "version": userSessionRegModel.version,
          "activesession": userSessionRegModel.activeSession,
          "allocatedtransportroute":
              userSessionRegModel.allocatedTransportedRoute,
          "allocatedtransportcost": userSessionRegModel.allocatedTransportCost,
          "feeplantype": userSessionRegModel.feePlanType,
          "feeplanperiodtype": userSessionRegModel.feePlanPeriodType,
          "startperiod": feePlanModel.startDate,
          "feeplan": feePlanModel.feePlanName,
          "applicablediscount": userSessionRegModel.applicableDiscount,
          "house": userSessionRegModel.house,
          "virtualroom": userSessionRegModel.virtualRoom,
          "rollnumber": userSessionRegModel.rollNumber,
          "offeringstaken": userSessionRegModel.offeringsTaken,
          "offeringsschedule": [
            {
              "id": "JQwADxuZnoReKLHO0EQk3Dd5Ny53+_+HIGH+_+FIRST",
              "ofr": "2).(Eng).(M)"
            }
          ],
          "isActive": userSessionRegModel.isActive,
          "idcardnum": userSessionRegModel.rollNumber,
          "qrcode": "None"
        },
        "newdata": "None",
        "olddata": "None",
        "idcardnum": "None",
        "sessionterm": "None",
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": "Zs65AZliQzlH47u2xQ0l"
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Future userRegFeePayProcessing(
      {@required UserRegFeeCollectionModel userRegFeeCollectionModel}) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable('UserRegistrationFeePaymentProcessingActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "actiontype": "pr_add",
        "prid": "None",
        "prnewdata": {
          "version": userRegFeeCollectionModel.version,
          "idcardnum": userRegFeeCollectionModel.idCardNum,
          "virtualroomid": userRegFeeCollectionModel.virtualRoomId,
          "rollnum": userRegFeeCollectionModel.rollNum,
          "username": userRegFeeCollectionModel.userName,
          "feeplantype": userRegFeeCollectionModel.feePlanType,
          "feeplanname": userRegFeeCollectionModel.feePlaneName,
          "paymentperiodtype": userRegFeeCollectionModel.paymentPeriodType,
          "paymentperiodname": userRegFeeCollectionModel.paymentPeriodName,
          "periodstartdate": userRegFeeCollectionModel.periodStartDay,
          "periodenddate": userRegFeeCollectionModel.periodEndDay,
          "totalfeeamount": 9200,
          "feeplanamount": userRegFeeCollectionModel.feeAmount,
          "transportfee": userRegFeeCollectionModel.transportFee,
          "otheramount": 0,
          "latefeeamount": userRegFeeCollectionModel.lateFeeAmount,
          "latefeeamountagreed": userRegFeeCollectionModel.lateFeeAmountAgreed,
          "totalpaymentmade": 0,
          "paymentvalidationpending":
              userRegFeeCollectionModel.paymentValidationPending,
          "closed": false,
          // "serversidetimestamp": userRegFeeCollectionModel.serverSideTimeStamp,
        },
        "prolddata": "None",
        "chid": "None",
        "chnewdata": "None",
        "cholddata": "None",
        "idcardnum": "10",
        "sessionterm": "2020-2021",
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": "Zs65AZliQzlH47u2xQ0l"
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  // static Future submitAttendenceOfferingSch(
  //     {@required AttendanceInfo attendenceInfo,
  //     @required AttendanceModel attendenceModel,
  //     @required OfferingsScheduleModel offeringsScheduleModel,
  //     @required RegisteredIdModel listOfRegisteredId}) async {
  //   try {
  //     final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
  //       functionName: 'SubmitAttendenceRequest',
  //     );
  //     print("CloudFunction " + "end");
  //     dynamic resp = await callable.call(<String, dynamic>{
  //       "entitytype": "SERVICEPROVIDERINFO",
  //       "entityid": "AefWmZc5Z3HwLhBd6nRU",
  //       "virtualroomname": "None",
  //       "actiontype": "ofr",
  //       "date": attendenceModel.date,
  //       "kind": attendenceModel.kind,
  //       "sessionterm": offeringsScheduleModel.sessionTermName,
  //       "studentInfo": [
  //         {
  //           "id": attendenceInfo.studentID,
  //           "vr": listOfRegisteredId.vr,
  //           "val": attendenceInfo.attendence
  //         },
  //         {"id": "2", "vr": "grade2-A", "val": "A"},
  //         {"id": "3", "vr": "grade2-A", "val": "A"},
  //         {"id": "4", "vr": "grade2-A", "val": "A"},
  //         {"id": "5", "vr": "grade2-A", "val": "A"},
  //         {"id": "6", "vr": "grade2-A", "val": "A"}
  //       ]
  //     });
  //     print("CloudFunction " + callable.toString());
  //     print("CloudFunction " + resp.data.toString());
  //   } catch (e) {
  //     print(e);
  //     throw e;
  //   }
  // }

  static Future getRollNumber(
      VirtualRoomModel virtualRoomModel, String serviceid) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'GetRollNumberRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceid,
        "virtualroomname": virtualRoomModel.virtualRoomName,
        "sessionterm": virtualRoomModel.sessionTermName
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }



  static Future<dynamic> uploadFileStorage({
    final String uploadType,
    final String variantName,
    final String fileName,
    String entityid,
  }) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'geturlforstorage',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "entitytype": "COMPLEXES",
        "entityid": entityid,
        "uploadtype": uploadType,
        "variantname": variantName,
        "filename": fileName,
      });
      print("CloudFunction " + callable.toString());
      //print("CloudFunction " + resp.data.toString());
      return resp;

  }
}
