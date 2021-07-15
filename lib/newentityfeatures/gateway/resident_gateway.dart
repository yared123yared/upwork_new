import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/models/response/general_response.dart';

import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/resident_model.dart';

class ResidentGateway {
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

  static Future<List<ResidentModel>> getResidents(
      {@required String entitytype, String entityid}) async {

      return await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/REGISTRY")
          .get()
          .then((x) {
        return ResidentModel.listFromJson(x.docs.map((d) => d.data).toList(),
            x.docs.map((d) => d.id).toList());
      });

  }

  static Future<List<ResidentModel>> getResidentsByBuildingAndFloor(
      {@required String entitytype,
      @required String entityid,
      @required String buildingname,
      @required int floornum}) async {

      return await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/REGISTRY")
          .get()
          .then((x) {
        return ResidentModel.listFromJson(x.docs.map((d) => d.data).toList(),
            x.docs.map((d) => d.id).toList());
      });

  }

  static Future<List<ResidentModel>> getResidentsByUnitList(
      {@required String entitytype,
      @required String entityid,
      @required List<String> unitlist}) async {

      return await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/REGISTRY")
          .get()
          .then((x) {
        return ResidentModel.listFromJson(x.docs.map((d) => d.data).toList(),
            x.docs.map((d) => d.id).toList());
      });

  }
}
