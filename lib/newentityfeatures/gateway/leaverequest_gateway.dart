import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/common/helputil.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/leaverequest_model.dart';

class LeaveRequestGateway {
  static Future<List<LeaveRequestModel>> getLeaveRequestHistoryParticularStaff(
      {@required String entityType,
      @required String entityID,
      @required String staffID}) async {
    return await FirebaseFirestore.instance
        .collection("$entityType/$entityID/LEAVEREQUESTS")
        .where('staffid', isEqualTo: staffID)
        .get()
        .then((x) {
      return LeaveRequestModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future<List<LeaveRequestModel>> getLeaveRequestParticularStaff(
      {@required String entitytype, String entityid, String staffid}) async {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    date = date.add(new Duration(days: 180));
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/LEAVEREQUESTS")
        .where('staffid', isEqualTo: staffid)
        .where("startdate", isLessThan: HelpUtil.toTimeStamp(dateTime: date))
        .get()
        .then((x) {
      return LeaveRequestModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future<List<LeaveRequestModel>> getLeaveRequestActiveAllStaff(
      {@required String entitytype, String entityid}) async {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    date = date.add(new Duration(days: 180));
    String mleavestatus =
        LeaveRequestStatus.APPROVED.toString().split('.').last;
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/LEAVEREQUESTS")
        .where("leavestatus", isEqualTo: mleavestatus)
        .where("startdate", isLessThan: HelpUtil.toTimeStamp(dateTime: date))
        .get()
        .then((x) {
      return LeaveRequestModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future<List<LeaveRequestModel>>
      getLeaveRequestWaitingForApprovalNext180Days(
          {@required String entitytype, String entityid}) async {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    date = date.add(new Duration(days: 180));
    String mleavestatus =
        LeaveRequestStatus.WAITINGFORAPPROVAL.toString().split('.').last;
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/LEAVEREQUESTS")
        .where("startdate", isLessThan: HelpUtil.toTimeStamp(dateTime: date))
        .where("leavestatus", isEqualTo: mleavestatus)
        .get()
        .then((x) {
      return LeaveRequestModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future<List<LeaveRequestModel>> getLeaveRequestHistoryAllStaff(
      {@required String entityType, @required String entityID}) async {
    return await FirebaseFirestore.instance
        .collection("$entityType/$entityID/LEAVEREQUESTS")
        .get()
        .then((x) {
      print("data ${x.docs}");
      return LeaveRequestModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future updateStatus(
      {@required String entityID,
      @required String entityType,
      @required LeaveRequestModel leaveRequest}) async {
    if (leaveRequest.id != null) {
      print('id is not null ${leaveRequest.id}');
      await FirebaseFirestore.instance
          .collection("$entityType/$entityID/LEAVEREQUESTS")
          .doc(leaveRequest.id)
          .update({"leavestatus": leaveRequest.leavestatus.toShortString()});
    } else {
      print('id is null');
    }
  }

  static Future<List<LeaveRequestModel>> getLeaveRequestAllStaff(
      {@required String entitytype, String entityid, String staffid}) async {
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/LEAVEREQUESTS")
        .where("leavestatus",
            isEqualTo: LeaveRequestStatus.WAITINGFORAPPROVAL
                .toString()
                .substring(LeaveRequestStatus.WAITINGFORAPPROVAL
                        .toString()
                        .indexOf('.') +
                    1))
        .get()
        .then((x) {
      return LeaveRequestModel.listFromJson(
          x.docs.map((d) => d.data()).toList(),
          x.docs.map((d) => d.id).toList());
    });
  }

//byuserid - u can get from current user model
  // if its a new request , leavedocid will be null
  static Future makeLeaveRequest(
      {@required LeaveRequestModel leaveRequest,
      @required String byUserId,
      @required String entityType,
      @required String entityId}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'LeaveManagementRequest',
    );
    dynamic resp = await callable.call(<String, dynamic>{
      'leavereqdata': leaveRequest.toJson(),
      'entitytype': entityType,
      'entityid': entityId,
      'byuserid': byUserId,
      'leavedocid': null
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future<List<LeaveRequestModel>> getLeaveRequestByStaffID(
      {@required String entitytype, String entityid, String staffid}) async {
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/LEAVEREQUESTS")
        .where('staffid', isEqualTo: staffid)
        .get()
        .then((x) {
      return LeaveRequestModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }
}
