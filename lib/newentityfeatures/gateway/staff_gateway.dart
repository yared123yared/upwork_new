import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/models/response/general_response.dart';

import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:meta/meta.dart';
import 'package:complex/common/helputil.dart';

import 'package:complex/newentityfeatures/Models/complexmodel.dart';

class ComplexStaffGateway {
  static Future<List<StaffModel>> getStaffList(
      {String entityid, String entitytype}) async {
    try {
      QuerySnapshot x = await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/STAFF")
          .get();

      List<StaffModel> stafflist = getStaffModelList(x);
      return stafflist;
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static List<StaffModel> getStaffModelList(QuerySnapshot x) {
    List<StaffModel> mylist = [];
    for (QueryDocumentSnapshot y in x.docs) {
      Map a = y.data();

      a.putIfAbsent("id", () => y.id);
      StaffModel s = StaffModel.fromJson(a);
      mylist.add(s);
    }
    return mylist;
  }

  static Future<void> newStaffRequest(
      {StaffModel staffModel, String entityid, String entitytype}) async {
    try {
      SignUpRequest _signUpModel = SignUpRequest(
          password: "secretPassword",
          username: staffModel.name,
          email: staffModel.email,
          phoneNum: staffModel.phoneNumStr,
          requestType: "PROFILE");

      String _userID = null;
      var authrepository = HelpUtil.getAuthRepositoryl();
      GeneralResponse gr =
          await authrepository.createUserForRequest(request: _signUpModel);
      if (gr.success) _userID = _signUpModel.userId;

      print(json.encode(staffModel.toJson()));
      print('processing user id is: $_userID');
      if (_userID != null) {
        final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
          'NewStaffCreateRequestModified',
        );
        staffModel.copyWith(appUserId: _userID);

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
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<void> updateStaffRequest(
      {@required StaffModel oldStaff,
      @required StaffModel newStaff,
      @required String entityid,
      @required String entitytype,
      @required UserModel userModel}) async {
    try {
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
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Map<String, dynamic> toComplexStaffUpdateData(
      StaffModel oldData, StaffModel newData) {
    return {
      if (oldData.name != newData.name) 'name': newData.name,
      if (oldData.email != newData.email) 'email': newData.email,
      if (oldData.phoneNumStr != newData.phoneNumStr)
        'phonenum': newData.phoneNumStr,

      /*
      if (oldData.dob != newData.dob)
        'dob': HelpUtil.toTimeStamp(
          dateTime: newData.dob,
        ),
      */
//      if (oldData.serviceOffered != newData.serviceOffered)
//        'serviceoffered': newData.serviceOffered,
      if (oldData.startDate != newData.startDate)
        'startdate': HelpUtil.toTimeStamp(
          dateTime: newData.startDate,
        ),
      if (oldData.endDate != newData.endDate)
        'enddate': HelpUtil.toTimeStamp(dateTime: newData.endDate),
      if (oldData.category != newData.category) 'category': newData.category,
      if (oldData.showAsTeamMember != newData.showAsTeamMember)
        'showasteammember': newData.showAsTeamMember,
      if (oldData.educationalQualification != newData.educationalQualification)
        'educationalqualification': newData.educationalQualification,
      if (oldData.basicBio != newData.basicBio) 'basicbio': newData.basicBio,
      if (oldData.allowedRoles != newData.allowedRoles)
        'allowedroles': newData.allowedRoles,
      if (oldData.addressInfo != newData.addressInfo)
        'addressinfo': newData.addressInfo,
      if (oldData.isSuspended != newData.isSuspended)
        'issuspended': newData.isSuspended,
      if (oldData.sickLeave != newData.sickLeave)
        'sickleave': newData.sickLeave,
      if (oldData.paidLeave != newData.paidLeave)
        'paidleave': newData.paidLeave,
      if (oldData.casualLeave != newData.casualLeave)
        'casualleave': newData.casualLeave,
      if (oldData.locationUpdateRequired != newData.locationUpdateRequired)
        'locationupdaterequired': newData.locationUpdateRequired,
      if (oldData.timeInterval != newData.timeInterval)
        'TimeInterval': newData.timeInterval,
      if (oldData.virtualRoomAttached != newData.virtualRoomAttached)
        'VirtualRoomAttached': newData.virtualRoomAttached,
      if (oldData.terminate != newData.terminate) 'terminate': newData.terminate
    };
  }

  static Future<dynamic> deleteStaffRequest(
      {@required StaffModel staffModel,
      @required String entityid,
      @required String entitytype,
      @required UserModel userModel}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'StaffDeleteRequestModified',
    );
    try {
      dynamic resp = await callable.call(<String, dynamic>{
        'entitytype': entitytype,
        'staffid': staffModel.appUserId,
        'byuserid': userModel.userID,
        'entityid': entityid,
      });

      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
      return resp.data;
    } catch (e) {
      return {'error': e};
    }
  }
}
