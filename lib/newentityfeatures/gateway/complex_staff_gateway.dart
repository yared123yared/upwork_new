import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:meta/meta.dart';

// import '../../model/models.dart';
import 'package:complex/newentityfeatures/Models/entity/staff_model.dart';
import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';

import 'package:complex/data/models/response/user_response/user_model.dart';

class ComplexStaffGateway {
  static Future<List<StaffModelx>> getStaffList(
      {@required String entitytype, @required String entityid}) async {

      return await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/STAFF")
          .get()
          .then((x) {
        return StaffModelx.listFromJson(
          x.docs.map((d) => d.data).toList(),
          x.docs.map((d) => d.id).toList(),
        );
      });

  }

  static Future<List<SchoolOwner>> getListOfAllStaff({
    @required String entitytype,
    @required String entityid,
  }) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": entitytype,
      "entityid": entityid,
      "qtype": "allstaff",
    });

    List<SchoolOwner> rm = [];
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return rm;
    rm = <SchoolOwner>[];
    mdata['lm'].forEach((j) {
      rm.add(SchoolOwner.fromData(Map<String, dynamic>.from(j)));
    });

    //for(dynamic d in mdata['lm'])
    //  rm.add(SchoolOwner.fromData(d));

    return rm;
  }

  static Future<void> newStaffRequest(
      {@required String entitytype,
      @required String entityid,
      StaffModelx staffModel,
      ComplexModel complexModel}) async {

      SignUpRequest _signUpModel = SignUpRequest(
          password: "secretPassword",
          username: staffModel.name,
          email: staffModel.email,
          phoneNum: staffModel.phoneNumStr,
          requestType: "CHECKANDCREATE");
      String _userID = null;
      var authrepository = HelpUtil.getAuthRepositoryl();
      GeneralResponseWithUserId gr =
          await authrepository.createUserForRequest_for(request: _signUpModel);
      if (gr.success) _userID = gr.userid;

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
          'entitytype': entitytype,
          'staffid': _userID,
          // 'byuserid': userModel.userID,
          'entityid': entityid,
        });
        print("CloudFunction " + callable.toString());
        print("CloudFunction " + resp.data.toString());
      } else {
        print("malfunction");
      }

  }

  static Future<void> updateStaffRequest(
      {@required String entitytype,
      @required String entityid,
      @required StaffModelx oldStaff,
      @required StaffModelx newStaff,
      @required UserModel userModel}) async {

      final HttpsCallable callable = FirebaseFunctions.instance
          .httpsCallable('StaffUpdateRequestModified');

      dynamic resp = await callable.call(<String, dynamic>{
        'olddata': oldStaff.toJson(),
        'newdata': toComplexStaffUpdateData(oldStaff, newStaff),
        'entitytype': entitytype,
        'staffid': oldStaff.appUserId,
        'byuserid': userModel.userID,
        'entityid': entityid,
      });

  }

  static Future<dynamic> deleteStaffRequest(
      {@required String entitytype,
      @required String entityid,
      @required StaffModelx staffModel,
      @required UserModel userModel}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'StaffDeleteRequestModified',
    );

      dynamic resp = await callable.call(<String, dynamic>{
        'entitytype': entitytype,
        'staffid': staffModel.appUserId,
        'byuserid': userModel.userID,
        'entityid': entityid,
      });

      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
      return resp.data;

  }
}
