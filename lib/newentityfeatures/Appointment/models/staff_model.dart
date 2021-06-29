//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:equatable/equatable.dart';
//export 'entity_roles.dart';
//export 'staff_model.dart';
//export 'complex_model.dart';
//export 'service_model.dart';
//export 'entity_setup_menu.dart';
//
//
//Map<String, dynamic> toComplexStaffUpdateData(
//    StaffModel oldData, StaffModel newData) {
//  return {
//    if (oldData.name != newData.name) 'name': newData.name,
//    if (oldData.email != newData.email) 'email': newData.email,
//    if (oldData.phoneNum != newData.phoneNum) 'phonenum': newData.phoneNum,
//    if (oldData.dob != newData.dob) 'dob': CommonUIHandler.toTimeStamp(newData.dob, DateTimeMode.DATE),
////      if (oldData.serviceOffered != newData.serviceOffered)
////        'serviceoffered': newData.serviceOffered,
import 'package:cloud_firestore/cloud_firestore.dart';

class StaffModel {
  List<String> allowedRoles;
  List<String> serviceOffered;
  int timeInterval;
  int virtualRoomAttached;
  String addressInfo;
  String appUserId;
  String basicBio;
  int casualLeave;
  String category;
  String dob;
  String educationalQualification;
  String email;
  String endDate;
  bool isSuspended;
  bool locationUpdateRequired;
  String name;
  int paidLeave;
  int phoneNum;
  String photo1;
  bool showAsTeamMember;
  int sickLeave;
  String startDate;
  bool terminate;
  int version;
  String staffId;

  StaffModel({
    this.serviceOffered,
    this.allowedRoles,
    this.staffId,
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
    this.phoneNum,
    this.photo1,
    this.version,
    this.startDate,
    this.terminate,
    this.showAsTeamMember,
    this.sickLeave,
  });

  factory StaffModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data();
    return StaffModel(
        staffId: doc.id,
        serviceOffered: data["serviceOffered"],
        allowedRoles: data["allowedRoles"],
        timeInterval: data["timeInterval"],
        virtualRoomAttached: data["virtualRoomAttached"],
        addressInfo: data["addressInfo"],
        appUserId: data["appUserId"],
        basicBio: data["basicBio"],
        casualLeave: data["casualLeave"],
        category: data["category"],
        dob: data["dob"],
        educationalQualification: data["educationalQualification"],
        email: data["email"],
        endDate: data["endDate"],
        isSuspended: data["isSuspended"],
        locationUpdateRequired: data["locationUpdateRequired"],
        name: data["name"],
        paidLeave: data["paidLeave"],
        phoneNum: data["phoneNum"],
        photo1: data["photo1"],
        showAsTeamMember: data["showAsTeamMember"],
        sickLeave: data["sickLeave"],
        startDate: data["startDate"],
        terminate: data["terminate"],
        version: data["version"]);
  }

  factory StaffModel.fromJson(Map data) {
    return StaffModel(
        serviceOffered: data["serviceOffered"],
        allowedRoles: data["allowedRoles"],
        timeInterval: data["timeInterval"],
        virtualRoomAttached: data["virtualRoomAttached"],
        addressInfo: data["addressInfo"],
        appUserId: data["appUserId"],
        basicBio: data["basicBio"],
        casualLeave: data["casualLeave"],
        staffId: data["staffId"],
        category: data["category"],
        dob: data["dob"],
        educationalQualification: data["educationalQualification"],
        email: data["email"],
        endDate: data["endDate"],
        isSuspended: data["isSuspended"],
        locationUpdateRequired: data["locationUpdateRequired"],
        name: data["name"],
        paidLeave: data["paidLeave"],
        phoneNum: data["phoneNum"],
        photo1: data["photo1"],
        showAsTeamMember: data["showAsTeamMember"],
        sickLeave: data["sickLeave"],
        startDate: data["startDate"],
        terminate: data["terminate"],
        version: data["version"]);
  }

  Map<String, dynamic> toMap() {
    return {
      "serviceOffered": serviceOffered,
      "allowedRoles": allowedRoles,
      "timeInterval": timeInterval,
      "virtualRoomAttached": virtualRoomAttached,
      "addressInfo": addressInfo,
      "appUserId": appUserId,
      "basicBio": basicBio,
      "casualLeave": casualLeave,
      "staffId": staffId,
      "category": category,
      "dob": dob,
      "educationalQualification": educationalQualification,
      "email": email,
      "endDate": endDate,
      "isSuspended": isSuspended,
      "locationUpdateRequired": locationUpdateRequired,
      "name": name,
      "paidLeave": paidLeave,
      "phoneNum": phoneNum,
      "photo1": photo1,
      "showAsTeamMember": showAsTeamMember,
      "sickLeave": sickLeave,
      "startDate": startDate,
      "terminate": terminate,
      "version": version,
    };
  }
}
