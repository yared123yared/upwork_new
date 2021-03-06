import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';

import 'package:complex/newentityfeatures/Models/resident_model.dart';
import 'package:meta/meta.dart';
import 'package:complex/newentityfeatures/Models/registry_model.dart';
import 'package:complex/common/helputil.dart';

class RegistryGateway {
  static Future<List<RegistryModel>> getRegistryList(
      {@required String entitytype, @required String entityid}) async {

      return await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/REGISTRY")
          .get()
          .then((x) {
        print(x.docs);
        return RegistryModel.listFromJson(x.docs.map((d) => d.data).toList());
      });

  }

  static Future<List<RegistryModel>> getRegistryListForBuildingAndFloor(
      {@required String entitytype,
      @required String entityid,
      @required String buildingid,
      int floor}) async {

      return await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/REGISTRY")
          .where("bldf", isEqualTo: buildingid + "@" + floor.toString())
          .get()
          .then((x) {
        print(x.docs);
        return RegistryModel.listFromJson(x.docs.map((d) => d.data).toList());
      });

  }

  static Future<RegistryModel> getRegistryListForUnitId(
      {@required String entitytype,
      @required String entityid,
      @required String unitid}) async {

      return await FirebaseFirestore.instance
          .doc("${entitytype}/${entityid}/REGISTRY/${unitid}")
          .get()
          .then((x) {
        return RegistryModel.fromJson(x.data());
      });


  }

  static Future<List<RegistryModel>> getRegistryListForListOfUnits(
      {@required String entitytype,
      @required String entityid,
      @required List<String> unitlist}) async {

      return await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/REGISTRY")
          .where(FieldPath.documentId, whereIn: unitlist)
          .get()
          .then((x) {
        print(x.docs);
        return RegistryModel.listFromJson(x.docs.map((d) => d.data).toList());
      });

  }

  static Future<void> updateRegistry(
      {@required String entitytype,
      String entityid,
      @required RegistryModel oldRegistry,
      @required RegistryModel newRegistry,
      @required bool isOwner,
      @required UserModel userModel}) async {

      final HttpsCallable callable = FirebaseFunctions.instance
          .httpsCallable('UpdateResidentRequestModified');
      final HttpsCallableResult resp = await callable.call(<String, dynamic>{
        'olddata': toData(registryModel: oldRegistry, isOwner: isOwner),
        'newdata': toUpdateData(
            oldRegistry: oldRegistry,
            newRegistry: newRegistry,
            isOwner: isOwner),
        'registeras': isOwner ? 'owner' : 'resident',
        'residentid':
            isOwner ? oldRegistry.ownerUserId : oldRegistry.residentUserId,
        'unitaddress': oldRegistry.unitAddress,
        'entitytype': entitytype,
        'byuserid': userModel.userID,
        'entityid': entityid,
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  // ignore: missing_return
  static Future<dynamic> deleteRegistry(
      {@required String entitytype,
      String entityid,
      @required String unitadress,
      @required bool isOwner,
      @required UserModel userModel}) async {
    final HttpsCallable callable = FirebaseFunctions.instance
        .httpsCallable('DeleteResidentRequestModified');

      final HttpsCallableResult resp = await callable.call(<String, dynamic>{
        'residentdetailid': isOwner ? unitadress + "_o" : unitadress + "_r",
        'entitytype': entitytype,
        'byuserid': userModel.userID,
        'entityid': entityid,
      });

      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
      return resp.data;

  }

//  static Future<void> deleteRegistry(){
//
//  }

  static Map<String, dynamic> toUpdateData(
      {@required RegistryModel oldRegistry,
      @required RegistryModel newRegistry,
      @required bool isOwner}) {

      if (isOwner) {
        return {
          if (oldRegistry.ownerPublishedContact !=
              newRegistry.ownerPublishedContact)
            'publishedcontact': newRegistry.ownerPublishedContact,
          if (oldRegistry.ownerEndDate != newRegistry.ownerEndDate)
            'enddate': HelpUtil.toTimeStamp(
              dateTime: newRegistry.ownerEndDate,
            ),
          if (oldRegistry.shareownercontactflag !=
              newRegistry.shareownercontactflag)
            'publishcontactflag': newRegistry.shareownercontactflag,
          if (oldRegistry.ownerManagementPosition !=
              newRegistry.ownerManagementPosition)
            'managementposition': newRegistry.ownerManagementPosition,
        };
      } else {
        return {
          if (oldRegistry.residentPublishedContact !=
              newRegistry.residentPublishedContact)
            'publishedcontact': newRegistry.residentPublishedContact,
          if (oldRegistry.residentEndDate != newRegistry.residentEndDate)
            'enddate': HelpUtil.toTimeStamp(
              dateTime: newRegistry.residentEndDate,
            ),
          if (oldRegistry.shareresidentcontactflag !=
              newRegistry.shareresidentcontactflag)
            'publishcontactflag': newRegistry.shareresidentcontactflag,
          if (oldRegistry.residentManagementPosition !=
              newRegistry.residentManagementPosition)
            'managementposition': newRegistry.residentManagementPosition,
        };
      }

  }

  static Map<String, dynamic> toData({
    @required RegistryModel registryModel,
    @required bool isOwner,
  }) {
    return {
      'version': registryModel.version,
      'firstname': isOwner
          ? registryModel.ownerName.split(',').last
          : registryModel.residentName.split(',').last,
      'lastname': isOwner
          ? registryModel.ownerName.split(',').first
          : registryModel.residentName.split(',').first,
      'registeras': isOwner ? 'owner' : 'resident',
      'publishedcontact': isOwner
          ? registryModel.ownerPublishedContact
          : registryModel.residentPublishedContact,
      'unitaddress': registryModel.unitAddress,
      'startdate': isOwner
          ? HelpUtil.toTimeStamp(
              dateTime: registryModel.ownerStartDate,
            )
          : HelpUtil.toTimeStamp(
              dateTime: registryModel.residentStartDate,
            ),
      'enddate': isOwner
          ? HelpUtil.toTimeStamp(
              dateTime: registryModel.ownerEndDate,
            )
          : HelpUtil.toTimeStamp(
              dateTime: registryModel.residentEndDate,
            ),
      'managementposition': isOwner
          ? registryModel.ownerManagementPosition
          : registryModel.residentManagementPosition,
      'appuserid':
          isOwner ? registryModel.ownerUserId : registryModel.residentUserId,
      'ownergroup': registryModel.ownerGroup,
      'publishedcontactflag': isOwner
          ? registryModel.shareownercontactflag
          : registryModel.shareresidentcontactflag,
    };
  }


  static Future addResidentRequest(
      {@required ResidentModel resident,
        @required String entitytype,
        String entityid}) async {
    SignUpRequest _signUpModel = SignUpRequest(
        password: "secretPassword",
        username: resident.firstName,
        email: resident.email,
        phoneNum: resident.contactNumber,
        requestType: "CHECKANDCREATE");

    String _userID = null;
    var authrepository = HelpUtil.getAuthRepositoryl();
    GeneralResponseWithUserId gr =
    await authrepository.createUserForRequest_for(request: _signUpModel);
    if (gr.success) _userID = gr.userid;

    if (_userID != null) {
      resident.appUserId = _userID;
      //print(json.encode(resident.copyWith(appUserId: _userID).toJson()));
      final HttpsCallable callable = FirebaseFunctions.instance
          .httpsCallable('AddResidentRequestModified');
      print("CloudFunction " + "end");
      try {
        final HttpsCallableResult resp = await callable.call(<String, dynamic>{
          'residentdata': resident.toJson(),
          'residentdeltadata': {'ApprovedByManagerr': true},
          'residentdetailsid':
          "${resident.unitAddress}_${resident.registerAs[0]}",
          'entitytype': entitytype,
          'entityid': entityid,
        });
        print("CloudFunction " + callable.toString());
        print("CloudFunction " + resp.data.toString());
      } on FirebaseFunctionsException catch (e) {
        print('caught firebase functions exception');
        print(e.code);
        print(e.message);
        print(e.details);
        return e;
      } catch (e) {
        print('caught generic exception');
        print(e);
        return e;
      }
    } else {
      //throw error
      print("not getting user id");
    }
  }



}
