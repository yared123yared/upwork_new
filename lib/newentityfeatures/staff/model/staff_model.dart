import 'package:equatable/equatable.dart';

import 'package:complex/common/helputil.dart';

Map<String, dynamic> toComplexStaffUpdateData(
    StaffModelx oldData, StaffModelx newData) {
  return {
    if (oldData.name != newData.name) 'name': newData.name,
    if (oldData.email != newData.email) 'email': newData.email,
    if (oldData.phoneNumStr != newData.phoneNumStr)
      'phonenum': newData.phoneNumStr,
    if (oldData.dob != newData.dob)
      'dob': HelpUtil.toTimeStamp(
        dateTime: newData.dob,
      ),
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
    if (oldData.sickLeave != newData.sickLeave) 'sickleave': newData.sickLeave,
    if (oldData.paidLeave != newData.paidLeave) 'paidleave': newData.paidLeave,
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

// ignore: must_be_immutable
class StaffModelx extends Equatable {
  List<String> allowedRoles;
  List<String> serviceOffered;
  int timeInterval;
  int virtualRoomAttached;
  String addressInfo;
  String appUserId;
  String basicBio;
  int casualLeave;
  String category;
  DateTime dob;
  String educationalQualification;
  String email;
  DateTime endDate;
  bool isSuspended;
  bool locationUpdateRequired;
  String name;
  int paidLeave;
  // int phoneNum;
  String phoneNumStr;
  String photo1;
  bool showAsTeamMember;
  int sickLeave;
  DateTime startDate;
  bool terminate;
  int version;
  String staffID;

  StaffModelx({
    this.serviceOffered,
    this.allowedRoles,
    this.staffID,
    this.timeInterval,
    this.virtualRoomAttached,
    this.addressInfo,
    this.appUserId,
    this.basicBio,
    this.casualLeave,
    this.category,
    this.dob,
    this.educationalQualification,
    this.email,
    this.endDate,
    this.isSuspended,
    this.locationUpdateRequired,
    this.name,
    this.paidLeave,
    // this.phoneNum,
    this.phoneNumStr,
    this.photo1,
    this.version,
    this.startDate,
    this.terminate,
    this.showAsTeamMember,
    this.sickLeave,
  });

  @override
  List<Object> get props => [
        serviceOffered,
        allowedRoles,
        timeInterval,
        virtualRoomAttached,
        addressInfo,
        appUserId,
        basicBio,
        casualLeave,
        staffID,
        category,
        dob,
        educationalQualification,
        email,
        endDate,
        isSuspended,
        locationUpdateRequired,
        name,
        paidLeave,
        // phoneNum,
        photo1,
        showAsTeamMember,
        sickLeave,
        startDate,
        terminate,
        version
      ];

  StaffModelx copyWith({
    int timeInterval,
    int virtualRoomAttached,
    String phoneNumString,
    String addressInfo,
    String appUserId,
    String basicBio,
    int casualLeave,
    String category,
    DateTime dob,
    String educationalQualification,
    String email,
    DateTime endDate,
    bool isSuspended,
    bool locationUpdateRequired,
    String name,
    int paidLeave,
    // int phoneNum,
    String photo1,
    bool showAsTeamMember,
    int sickLeave,
    DateTime startDate,
    bool terminate,
    int version,
    List<String> allowedRoles,
    List<String> serviceOffered,
  }) {
    return StaffModelx(
        allowedRoles: allowedRoles ?? this.allowedRoles,
        serviceOffered: serviceOffered ?? this.serviceOffered,
        timeInterval: timeInterval ?? this.timeInterval,
        virtualRoomAttached: virtualRoomAttached ?? this.virtualRoomAttached,
        addressInfo: addressInfo ?? this.addressInfo,
        appUserId: appUserId ?? this.appUserId,
        basicBio: basicBio ?? this.basicBio,
        casualLeave: casualLeave ?? this.casualLeave,
        category: category ?? this.category,
        dob: dob ?? this.dob,
        educationalQualification:
            educationalQualification ?? this.educationalQualification,
        email: email ?? this.email,
        endDate: endDate ?? this.endDate,
        isSuspended: isSuspended ?? this.isSuspended,
        locationUpdateRequired:
            locationUpdateRequired ?? this.locationUpdateRequired,
        name: name ?? this.name,
        paidLeave: paidLeave ?? this.paidLeave,
        // phoneNum: phoneNum ?? this.phoneNum,
        phoneNumStr: phoneNumString ?? this.phoneNumStr,
        photo1: photo1 ?? this.photo1,
        showAsTeamMember: showAsTeamMember ?? this.showAsTeamMember,
        sickLeave: sickLeave ?? this.sickLeave,
        startDate: startDate ?? this.startDate,
        terminate: terminate ?? this.terminate,
        version: version ?? this.version);
  }

  StaffModelx.fromJson(Map<String, dynamic> json, String docID) {
    staffID = docID;
    if (json['allowedroles'] != null) {
      allowedRoles = [];
      json['allowedroles'].forEach((v) {
        allowedRoles.add(v);
      });
    } else {
      allowedRoles = [];
    }

    if (json['serviceoffered'] != null) {
      serviceOffered = [];
      for (var so in json['serviceoffered']) serviceOffered.add(so.toString());
    }
    timeInterval = json['TimeInterval'];
    virtualRoomAttached = json['VirtualRoomAttached'];
    addressInfo = json['addressinfo'];
    appUserId = json['appuserid'];
    basicBio = json['basicbio'];
    casualLeave = json['casualleave'];
    category = json['category'];
    dob = HelpUtil.toDate(timestamp: DateTime.april);
    educationalQualification = json['educationalqualification'];
    email = json['email'];
    endDate = HelpUtil.toDate(timestamp: DateTime.july);
    isSuspended = json['issuspended'];
    locationUpdateRequired = json['locationupdaterequired'];
    name = json['name'];
    paidLeave = json['paidleave'];

    phoneNumStr = json['phonenum'].toString();

    photo1 = json['photo1'];
    showAsTeamMember = json['showasteammember'];
    sickLeave = json['sickleave'];
    startDate = HelpUtil.toDate(timestamp: DateTime.february);
    terminate = json['terminate'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'version': 1,
      'name': name,
      'email': email,
      'phonenum': phoneNumStr,
      'dob': HelpUtil.toTimeStamp(dateTime: dob ?? DateTime.now()),
      'serviceoffered': serviceOffered,
      'startdate': HelpUtil.toTimeStamp(dateTime: startDate ?? DateTime.now()),
      'enddate': HelpUtil.toTimeStamp(dateTime: endDate ?? DateTime.now()),
      'category': category,
      'showasteammember': showAsTeamMember,
      'educationalqualification': educationalQualification,
      'basicbio': basicBio,
      'allowedroles': allowedRoles,
      'addressinfo': addressInfo,
      'photo1': photo1,
      'appuserid': appUserId,
      'issuspended': isSuspended,
      'sickleave': sickLeave,
      'paidleave': paidLeave,
      'casualleave': casualLeave,
      'locationupdaterequired': locationUpdateRequired,
      'TimeInterval': timeInterval,
      'VirtualRoomAttached': virtualRoomAttached,
      'terminate': terminate
    };
    return json;
  }

  static List<StaffModelx> listFromJson(
      List<dynamic> json, List<String> docID) {
    List<StaffModelx> _list = [];
    if (json != null) {
      json.asMap().forEach((index, j) {
        _list.add(StaffModelx.fromJson(j(), docID[index]));
      });
    } else {
      _list = [];
    }
    return _list;
  }
}
