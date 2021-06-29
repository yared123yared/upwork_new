import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/data/repositories/auth_repository.dart';
import 'package:meta/meta.dart';


// import '../../model/models.dart';
import 'package:complex/newentityfeatures/Models/entity/staff_model.dart';
import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';

import 'package:complex/data/models/response/user_response/user_model.dart';

class ComplexStaffGateway {
  static Future<List<StaffModelx>> getStaffList(
      {ComplexModel complexModel}) async {
    try {
      return await FirebaseFirestore.instance
          .collection("COMPLEXES/${complexModel.complexID}/STAFF")
          .get()
          .then((x) {
        return StaffModelx.listFromJson(
          x.docs.map((d) => d.data).toList(),
          x.docs.map((d) => d.id).toList(),
        );
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> newStaffRequest(
      {StaffModelx staffModel, ComplexModel complexModel}) async {

    SignUpRequest _signUpModel = SignUpRequest(
      password: "secretPassword",
      username: staffModel.name,
      email: staffModel.email,
      phoneNum: staffModel.phoneNumStr,requestType: "PROFILE"
    );
    String _userID =null;
    var authrepository = HelpUtil.getAuthRepositoryl();
    GeneralResponse gr = await authrepository.createUserForRequest(request:_signUpModel);
    if(gr.success)
      _userID=_signUpModel.userId;

    print(json.encode(staffModel.toJson()));
    print('processing user id is: $_userID');
    if (_userID != null) {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'NewStaffCreateRequestModified',
      );
      staffModel.appUserId = _userID;
      print(staffModel.toJson());
      dynamic resp = await callable.call(<String, dynamic>{
        'staffdata': staffModel.toJson(),
        'entitytype': "COMPLEXES",
        'staffid': _userID,
        // 'byuserid': userModel.userID,
        'entityid': complexModel.complexID,
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } else {
      print("malfunction");
    }
  }

  static Future<void> updateStaffRequest(
      {@required StaffModelx oldStaff,
      @required StaffModelx newStaff,
      @required ComplexModel complexModel,
      @required UserModel userModel}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('StaffUpdateRequestModified');

    dynamic resp = await callable.call(<String, dynamic>{
      'olddata': oldStaff.toJson(),
      'newdata': toComplexStaffUpdateData(oldStaff, newStaff),
      'entitytype': "COMPLEXES",
      'staffid': oldStaff.appUserId,
      'byuserid': userModel.userID,
      'entityid': complexModel.complexID,
    });
  }

  static Future<dynamic> deleteStaffRequest(
      {@required StaffModelx staffModel,
      @required ComplexModel complexModel,
      @required UserModel userModel}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'StaffDeleteRequestModified',
    );
    try {
      dynamic resp = await callable.call(<String, dynamic>{
        'entitytype': "COMPLEXES",
        'staffid': staffModel.appUserId,
        'byuserid': userModel.userID,
        'entityid': complexModel.complexID,
      });

      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
      return resp.data;
    } catch (e) {
      return {'error': e};
    }
  }
}
