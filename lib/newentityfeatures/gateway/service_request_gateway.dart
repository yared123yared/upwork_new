import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/service_request_model.dart';

class ServiceRequestGateway {
  static Future<void> addNewServiceRequest({
    @required ServiceRequestModel serviceRequest,
    @required String entitytype ,String entityid,@required String roletype,
    @required String fcmToken,
  }) async {
    final HttpsCallable newServiceRequestCreateRequest =
        FirebaseFunctions.instance.httpsCallable(
      'NewServiceRequestCreateRequestModified',
    );
    try {
      final HttpsCallableResult result =
          await newServiceRequestCreateRequest.call(<String, dynamic>{
        'servicerequestdata': toData(
          serviceRequest: serviceRequest,
          requesterType:roletype,
        ),
        'entitytype': entitytype,
        'entityid': entityid,
        'fcmtoken': fcmToken,
      });
      print("CloudFunction " + result.toString());
      print(result.data);
    } on FirebaseFunctionsException catch (e) {
      print('caught firebase functions exception');
      print(e.code);
      print(e.message);
      print(e.details);
    } catch (e) {
      print('caught generic exception');
      print(e);
    }
  }

  static Future<void> updateServiceRequest({
    @required ServiceRequestModel oldRequest,
    @required ServiceRequestModel newRequest,
    @required UserModel user,
    @required String entitytype ,String entityid,@required String roletype
  }) async {
    final HttpsCallable newServiceRequestCreateRequest =
        FirebaseFunctions.instance.httpsCallable(
      'UpdateServiceRequestRequestModified',
    );
    print("calling function");
    print("old${oldRequest.requestType}");
    print("old${newRequest.requestType}");
//    try{
    final HttpsCallableResult result =
        await newServiceRequestCreateRequest.call(<String, dynamic>{
      'olddata': toData(
        serviceRequest: oldRequest,
      ),
      'newdata': toUpdateDate(oldRequest: oldRequest, newRequest: newRequest),
      'givenqrcode': oldRequest.generatedQrCode,
      'requesttype': oldRequest.requestType.toShortString(),
      'appuserid': user.userID,
      'byuserid': user.userID,
      'unitaddress': oldRequest.unitId,
      'servicereqid': oldRequest.requestID,
      'entitytype': entitytype,
      'entityid': entityid,
      'fcmtoken': null,
    });
    print("CloudFunction " + result.toString());
    print(result.data);
//    }on FirebaseFunctionsException catch (e){
//      print('caught firebase functions exception');
//      print(e.code);
//      print(e.message);
//      print(e.details);
//    } catch (e) {
//      print('caught generic exception');
//      print(e);
//    }
  }

  static Map<String, dynamic> toData(
      {@required ServiceRequestModel serviceRequest, String requesterType}) {
    return {
      'version': 1,
      'requesttype': serviceRequest.requestType.toShortString(),
      'requestertype': requesterType,
      'requesterid': serviceRequest.requesterID,
      'requesteddate':
          HelpUtil.toTimeStamp(dateTime: serviceRequest.requestedDate),
      'correspondingname': serviceRequest.correspondingName,
      'serviceproviderid': serviceRequest.serviceProviderId,
      'servicerequestormemberuserid':
          serviceRequest.serviceRequestorMemberUserId,
      'startdate':
      HelpUtil.toTimeStamp(dateTime: serviceRequest.startDate),
      'enddate': HelpUtil.toTimeStamp(dateTime: serviceRequest.endDate),
      'terminate': serviceRequest.terminate,
      'suspend': serviceRequest.suspend,
      'adhocvisitorphoto': serviceRequest.adHocVisitorPhoto,
      'requirenotificationentry': serviceRequest.requireNotificationEntry,
      'phone': serviceRequest.phone,
      'notesinstructions': serviceRequest.notesInstructions,
      'unitId': serviceRequest.unitId,
      'groupreqname': serviceRequest.groupReqName,
      'multipleentryallowed': serviceRequest.multipleEntryAllowed,
    };
  }

  static Map<String, dynamic> toUpdateDate(
      {@required ServiceRequestModel oldRequest,
      @required ServiceRequestModel newRequest}) {
    return {
      if (newRequest.requesterType != oldRequest.requesterType)
        'requestertype': newRequest.requesterType,
      if (newRequest.requesterID != oldRequest.requesterID)
        'requesterid': newRequest.requesterID,
      if (newRequest.requestedDate != oldRequest.requestedDate)
        'requesteddate':
        HelpUtil.toTimeStamp(dateTime: newRequest.requestedDate),
      if (newRequest.correspondingName != oldRequest.correspondingName)
        'correspondingname': newRequest.correspondingName,
      if (newRequest.serviceProviderId != oldRequest.serviceProviderId)
        'serviceproviderid': newRequest.serviceProviderId,
      if (newRequest.serviceRequestorMemberUserId !=
          oldRequest.serviceRequestorMemberUserId)
        'servicerequestormemberuserid': newRequest.serviceRequestorMemberUserId,
      if (newRequest.endDate != oldRequest.endDate)
        'enddate': HelpUtil.toTimeStamp(dateTime: newRequest.endDate),
      if (newRequest.terminate != oldRequest.terminate)
        'terminate': newRequest.terminate,
      if (newRequest.suspend != oldRequest.suspend)
        'suspend': newRequest.suspend,
      if (newRequest.adHocVisitorPhoto != oldRequest.adHocVisitorPhoto)
        'adhocvisitorphoto': newRequest.adHocVisitorPhoto,
      if (newRequest.requireNotificationEntry !=
          oldRequest.requireNotificationEntry)
        'requirenotificationentry': newRequest.requireNotificationEntry,
      if (newRequest.phone != oldRequest.phone) 'phone': newRequest.phone,
      if (newRequest.notesInstructions != oldRequest.notesInstructions)
        'notesinstructions': newRequest.notesInstructions,
      if (newRequest.unitId != oldRequest.unitId) 'unitId': newRequest.unitId,
      if (newRequest.groupReqName != oldRequest.groupReqName)
        'groupreqname': newRequest.groupReqName,
      if (newRequest.multipleEntryAllowed != oldRequest.multipleEntryAllowed)
        'multipleentryallowed': newRequest.multipleEntryAllowed,
      if (newRequest.serverSideTimestamp != oldRequest.serverSideTimestamp)
        'serversidetimestamp': newRequest.serverSideTimestamp
    };
  }

  static Future<List<ServiceRequestModel>> getAllActiveServiceRequestList(
      {@required String entitytype ,String entityid}) async {
    return await FirebaseFirestore.instance
        .collection("${entitytype}/${entitytype}/SERVICEREQUESTS")
        .get()
        .then((x) {
      return ServiceRequestModel.listFromJson(
        x.docs.map((d) => d.data).toList(),
        x.docs.map((d) => d.id).toList(),
      );
    });
  }

  static Future<List<ServiceRequestModel>> getServiceRequestOwnerResident(
      {@required String entitytype ,String entityid,@required UserModel um}) async {
    return await FirebaseFirestore.instance
        .collection("${entitytype}/${entitytype}/SERVICEREQUESTS")
        .get()
        .then((x) {
      return ServiceRequestModel.listFromJson(
        x.docs.map((d) => d.data).toList(),
        x.docs.map((d) => d.id).toList(),
      );
    });
  }

  static Future<List<ServiceRequestModel>> getServiceRequestStaffSelf(
      {@required String entitytype ,String entityid,@required UserModel um}) async {
    return await FirebaseFirestore.instance
        .collection("${entitytype}/${entitytype}/SERVICEREQUESTS")
        .get()
        .then((x) {
      return ServiceRequestModel.listFromJson(
        x.docs.map((d) => d.data).toList(),
        x.docs.map((d) => d.id).toList(),
      );
    });
  }



  static Future<void> responseToAdhocVisitor({
    @required String name,
    @required String phone,
    @required String entityId,
    @required String serviceToken,
    @required String requestId,
    @required bool accepted,
  }) async {
    var func = FirebaseFunctions.instance
        .httpsCallable('SubmitAdHocVisitorRequestResponse');

    try {
      await func.call({
        'entitytype': "COMPLEXES",
        'entityid': entityId,
        'rstatus': accepted ? "accept" : "reject",
        'corname': name,
        'phone': phone,
        'servicerequestid': requestId,
        'sendtotoken': serviceToken,
        'note': "",
      }).then((value) {
        if (value.data['error'] == null) {
          return;
        } else {
          Get.showSnackbar(GetBar(message: value.data['error']));
        }
      });
    } catch (e) {
      Get.showSnackbar(GetBar(message: e.toString()));
    }
  }



  static Future<List<ServiceRequestModel>> getQRCodeDetails({
  @required String entitytype ,String entityid,
    @required String qrCodeID,
  }) async {
    return await FirebaseFirestore.instance
        .collection("${entitytype}/${entitytype}/SERVICEREQUESTS")
        .where("generatedqrcode", isEqualTo: qrCodeID)
        .get()
        .then((x) {
      return ServiceRequestModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }
//todo : Need to replace it with cloud function
  static Future deleteServiceRequest({
    @required String entitytype ,String entityid,
    @required ServiceRequestModel serviceRequest,
  }) async {
    return await FirebaseFirestore.instance
        .collection("${entitytype}/${entitytype}/SERVICEREQUESTS")
        .doc(serviceRequest.requestID)
        .delete();
  }

  static Future<List<ServiceRequestModel>> getServiceRequestFromQrCode(
      {@required String code, @required String entitytype ,String entityid}) async {
    return await FirebaseFirestore.instance
        .collection("${entitytype}/${entitytype}/SERVICEREQUESTS")
        .where('generatedqrcode', isEqualTo: code)
        .get()
        .then((x) {
      print(x.docs);
      return ServiceRequestModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }
}
