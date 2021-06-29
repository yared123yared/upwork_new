import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:complex/common/helputil.dart';


enum LeaveRequestType {
  SICK,
  CASUAL,
  PAID,
  NOPAY,
}

enum PeriodLeaveType {
  ONEQUATER,
  HALFDAY,
  FULLDAY,
}

enum LeaveRequestStatus {
  WAITINGFORAPPROVAL,
  APPROVED,
  REJECTED,
  CANCELED,
}

extension LeaveRequestStatusHandler on LeaveRequestStatus {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

// ignore: must_be_immutable
class LeaveRequestModel extends Equatable {
  String version;
  String staffID;
  String staffName;
  DateTime startDate;
  String id;
  DateTime endDate;
  PeriodLeaveType plType;
  LeaveRequestType leavreqType;
  LeaveRequestStatus leavestatus;
  String rejectionReason;

  static LeaveRequestStatus stringToRequestStatus(String str) {
    return LeaveRequestStatus.values
        .firstWhere((e) => e.toString() == 'LeaveRequestStatus.' + str);
  }

  static PeriodLeaveType stringtoPeriodLeaveType(String str) {
    print("checking $str");

    return PeriodLeaveType.values
        .firstWhere((e) => e.toString() == 'PeriodLeaveType.' + str);
  }

  static LeaveRequestType stringtoLeaveRequestType(String str) {
    return LeaveRequestType.values
        .firstWhere((e) => e.toString() == 'LeaveRequestType.' + str);
  }

  LeaveRequestModel({
    this.version,
    @required this.endDate,
    @required this.startDate,
    @required this.staffID,
    this.id,
    @required this.staffName,
    @required this.leavreqType,
    @required this.plType,
    this.rejectionReason,
    this.leavestatus,
  });

  @override
  List<Object> get props => [
        endDate,
        startDate,
        staffID,
        staffName,
        leavreqType,
        plType,
        rejectionReason,
        leavestatus,
      ];

  LeaveRequestModel copyWith({
    String version,
    String id,
    String staffID,
    String staffName,
    DateTime startDate,
    DateTime endDate,
    PeriodLeaveType plType,
    LeaveRequestType leavreqType,
    LeaveRequestStatus leavestatus,
    String rejectionReason,
  }) {
    return LeaveRequestModel(
      id: id ?? this.id,
      staffID: staffID ?? this.staffID,
      version: version ?? this.version,
      startDate: startDate ?? this.startDate,
      staffName: staffName ?? this.staffName,
      endDate: endDate ?? this.endDate,
      plType: plType ?? this.plType,
      leavreqType: leavreqType ?? this.leavreqType,
      leavestatus: leavestatus ?? this.leavestatus,
      rejectionReason: rejectionReason ?? this.rejectionReason,
    );
  }

  LeaveRequestModel.fromJson(Map<String, dynamic> json, String docID) {
    staffID = json['staffid'];
    version = json['version'];
    endDate = HelpUtil.toDate(timestamp: json['enddate']);
    id = docID;
    startDate = HelpUtil.toDate(timestamp: json['startdate']);
    version = json['version'];
    staffName = json['staffname'];
    rejectionReason = json['rejectionReason'];
    plType = stringtoPeriodLeaveType(json['pltype']);
    leavreqType = stringtoLeaveRequestType(json['leavreqtype']);
    leavestatus = stringToRequestStatus(json['leavestatus']);
    endDate = HelpUtil.toDate(timestamp: json['enddate']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();

    json['startdate'] = HelpUtil.toTimeStamp(dateTime: this.startDate);
    json["enddate"] = HelpUtil.toTimeStamp(dateTime: this.endDate);
    json["startdate"] = HelpUtil.toTimeStamp(dateTime: this.startDate);
    json["staffid"] = this.staffID;
    json["staffname"] = this.staffName;
    json["leavreqtype"] = this.leavreqType.toString().split('.').last;
    json["pltype"] = this.plType.toString().split('.').last;
    json["rejectionreason"] = this.rejectionReason;
    json["leavestatus"] = this.leavestatus.toString().split('.').last;

    return json;
  }

  static List<LeaveRequestModel> listFromJson(
      List<dynamic> json, List<String> docID) {
    List<LeaveRequestModel> _list = [];
    if (json != null) {
      json.asMap().forEach((index, j) {
        _list.add(LeaveRequestModel.fromJson(j(), docID[index]));
      });
    }
    return _list;
  }
}
