import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:complex/common/helputil.dart';

enum ServiceRequestType {
  VISITOR,
  ADHOCVISITOR,
  RIDE,
  DELIVERY,
  GATEPASS,
  HOMEHELP,
}

extension RequestTypeHandler on ServiceRequestType {
  String toShortString() {
    return this.toString().split('.').last;
  }

  String toDataString() {
    String _s;
    switch (this) {
      case ServiceRequestType.VISITOR:
        _s = 'VISITOR';
        break;
      case ServiceRequestType.ADHOCVISITOR:
        _s = 'ADHOCVISITOR';
        break;
      case ServiceRequestType.RIDE:
        _s = 'RIDE';
        break;
      case ServiceRequestType.DELIVERY:
        _s = 'DELIVERY';
        break;
      case ServiceRequestType.GATEPASS:
        _s = 'GATEPASS';
        break;
      case ServiceRequestType.HOMEHELP:
        print('HOMEHELP');
        break;
    }
    return _s;
  }
}

// ignore: must_be_immutable
class ServiceRequestModel extends Equatable {
  String adHocVisitorPhoto;
  String correspondingName;
  String generatedQrCode;
  String groupReqName;
  DateTime endDate;
  bool multipleEntryAllowed;
  String notesInstructions;
  String phone;
  ServiceRequestType requestType;
  DateTime requestedDate;
  String requesterID;
  String requesterType;
  bool requireNotificationEntry;
  Timestamp serverSideTimestamp;
  String serviceRequestorMemberUserId;
  String serviceProviderId;
  bool suspend;
  bool terminate;
  String qrCodeLink;
  String unitId;
  num version;
  DateTime startDate;
  String requestID;
  bool forstaff;
  String forstaffid;
  String forstaffname;

  ServiceRequestModel(
      {this.version,
      @required this.endDate,
      @required this.startDate,
      this.adHocVisitorPhoto,
      this.correspondingName,
      this.generatedQrCode,
      this.groupReqName,
      this.multipleEntryAllowed,
      this.notesInstructions,
      this.phone,
      this.requestedDate,
      this.requesterID,
      this.requesterType,
      this.requestType,
      this.requireNotificationEntry,
      this.serverSideTimestamp,
      this.qrCodeLink,
      this.terminate,
      this.serviceProviderId,
      this.serviceRequestorMemberUserId,
      this.suspend,
      this.forstaff,
      this.forstaffid,
      this.forstaffname,
      @required this.unitId});

  @override
  List<Object> get props => [
        version,
        endDate,
        serverSideTimestamp,
        startDate,
        adHocVisitorPhoto,
        correspondingName,
        generatedQrCode,
        requestID,
        groupReqName,
        multipleEntryAllowed,
        notesInstructions,
        phone,
        requestType,
        requestedDate,
        requesterID,
        requesterType,
        requireNotificationEntry,
        serviceRequestorMemberUserId,
        serviceProviderId,
        suspend,
        terminate,
        unitId,
        forstaff,
        forstaffid,
        forstaffname
      ];

  ServiceRequestModel copyWith({
    String adHocVisitorPhoto,
    String correspondingName,
    String generatedQrCode,
    String groupReqName,
    DateTime endDate,
    bool multipleEntryAllowed,
    String notesInstructions,
    String phone,
    String requestType,
    Timestamp requestedDate,
    String requesterId,
    String requesterType,
    bool requireNotificationEntry,
    Timestamp serverSideTimestamp,
    String serviceRequestorMemberUserId,
    String serviceProviderId,
    bool suspend,
    bool terminate,
    String unitId,
    num version,
    DateTime startDate,
    bool forstaff,
    String forstaffid,
    String forstaffname,
  }) {
    return ServiceRequestModel(
        endDate: endDate ?? this.endDate,
        version: version ?? this.version,
        startDate: startDate ?? this.startDate,
        adHocVisitorPhoto: adHocVisitorPhoto ?? this.adHocVisitorPhoto,
        correspondingName: correspondingName ?? this.correspondingName,
        generatedQrCode: generatedQrCode ?? this.generatedQrCode,
        groupReqName: groupReqName ?? this.groupReqName,
        multipleEntryAllowed: multipleEntryAllowed ?? this.multipleEntryAllowed,
        notesInstructions: notesInstructions ?? this.notesInstructions,
        phone: phone ?? this.phone,
        requestType: requestType ?? this.requestType,
        requestedDate: requestedDate ?? this.requestedDate,
        requesterID: requesterId ?? this.requesterID,
        requesterType: requesterType ?? this.requesterType,
        requireNotificationEntry:
            requireNotificationEntry ?? this.requireNotificationEntry,
        serverSideTimestamp: serverSideTimestamp ?? this.serverSideTimestamp,
        serviceRequestorMemberUserId:
            serviceRequestorMemberUserId ?? this.serviceRequestorMemberUserId,
        serviceProviderId: serviceProviderId ?? this.serviceProviderId,
        suspend: suspend ?? this.suspend,
        terminate: terminate ?? this.terminate,
        unitId: unitId ?? this.unitId,
        forstaff: forstaff ?? this.forstaff,
        forstaffid: forstaffid ?? this.forstaffid,
        forstaffname: forstaffname ?? this.forstaffname);
  }

  ServiceRequestType toRequestType(String type) {
    ServiceRequestType _rqstType;
    switch (type) {
      case 'RIDE':
        _rqstType = ServiceRequestType.RIDE;
        break;
      case 'VISITOR':
        _rqstType = ServiceRequestType.VISITOR;
        break;
      case 'DELIVERY':
        _rqstType = ServiceRequestType.DELIVERY;
        break;
      case 'ADHOCVISITOR':
        _rqstType = ServiceRequestType.ADHOCVISITOR;
        break;
      case 'GATEPASS':
        _rqstType = ServiceRequestType.GATEPASS;
        break;
    }
    return _rqstType;
  }

  ServiceRequestModel.fromJson(Map<String, dynamic> json, String docID) {
    requestType = toRequestType(json['requesttype']);
    requestID = docID;
    endDate = json['endDate'] is int
        ? HelpUtil.toDate(timestamp: json['endDate'])
        : DateTime.now();
    serverSideTimestamp = json['serversidetimestamp'];
    startDate = json['startdate'] is int
        ? HelpUtil.toDate(timestamp: json['startdate'])
        : DateTime.now();
    version = json['version'];
    adHocVisitorPhoto = json['adhocvisitorphoto'];
    correspondingName = json['correspondingname'];
    qrCodeLink = json['qrcodeimglink'];
    generatedQrCode = json['generatedqrcode'];
    groupReqName = json['groupreqname'];
    multipleEntryAllowed = json['multipleentryallowed'];
    notesInstructions = json['notesinstructions'];
    phone = json['phone'];
    requestedDate = json['requesteddate'] is int
        ? HelpUtil.toDate(timestamp: json['requesteddate'])
        : DateTime.now();
    requesterID = json['requesterid'];
    requesterType = json['requesterType'];
    requireNotificationEntry = json['requirenotificationentry'];
    serviceRequestorMemberUserId = json['servicerequestormemberuserid'];
    serviceProviderId = json['serviceproviderid'];
    suspend = json['suspend'];
    terminate = json['terminate'];
    unitId = json['unitId'];
    forstaff = json.containsKey('forstaff') ? json['forstaff'] : false;
    forstaffname = json.containsKey('forstaff') ? json['forstaffname'] : null;
    forstaffid = json.containsKey('forstaffid') ? json['forstaffid'] : null;
    print("$startDate , $endDate and $requestedDate");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = Map<String, dynamic>();

    json['serversidetimestamp'] = this.serverSideTimestamp;
    json['startdate'] = HelpUtil.toTimeStamp(dateTime: this.startDate);
    json['version'] = this.version;
    json['adHocVisitorPhoto'] = adHocVisitorPhoto;
    json['correspondingname'] = correspondingName;
    json['endDate'] = HelpUtil.toTimeStamp(dateTime: this.endDate);
    json['generatedqrcode'] = generatedQrCode;
    json['groupreqname'] = groupReqName;
    json['multipleentryallowed'] = multipleEntryAllowed;
    json['notesinstruction'] = notesInstructions;
    json['phone'] = phone;
    // json['requestType'] = requestType.toDataString();
    json['requestedDate'] = requestedDate;
    json['requesterId'] = requesterID;
    json['requesterType'] = requesterType;
    json['requireNotificationEntry'] = requireNotificationEntry;
    json['serviceRequestorMemberUserId'] = serviceRequestorMemberUserId;
    json['serviceproviderid'] = serviceProviderId;
    json['suspend'] = suspend;
    json['terminate'] = terminate;
    json['unitId'] = unitId;

    json['forstaff'] = forstaff;
    json['forstaffid'] = forstaffid;
    json['forstaffname'] = forstaffname;

    return json;
  }

  static List<ServiceRequestModel> listFromJson(
      List<dynamic> json, List<String> docID) {
    List<ServiceRequestModel> _list = [];
    if (json != null) {
      json.asMap().forEach((index, j) {
        _list.add(ServiceRequestModel.fromJson(j(), docID[index]));
      });
    }
    return _list;
  }
}
