import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/domain/entity/json_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'complexmodel.freezed.dart';
part 'complexmodel.g.dart';

@freezed
abstract class BuildingModel with _$BuildingModel {
  factory BuildingModel({
    @JsonKey(name: 'attachedgate') List<String> attachedGate,
    @JsonKey(name: 'buildingid') String buildingID,
    @JsonKey(name: 'buildingname') String buildingName,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'version') num version,
  }) = _BuildingModel;
  factory BuildingModel.fromJson(Map<String, dynamic> json) =>
      _$BuildingModelFromJson(json);
//require keysetting
}

@freezed
abstract class ComplexVehicleModel with _$ComplexVehicleModel {
  factory ComplexVehicleModel({
    @JsonKey(name: 'appuserid') String appUserId,
    @JsonKey(name: 'generatedqrcode') String generatedQRCode,
    @JsonKey(name: 'generatedqrcodelink') String generatedQRCodeLink,
    @JsonKey(name: 'numberplate') String numberPlate,
    @JsonKey(name: 'ownername') String ownerName,
    @JsonKey(name: 'photolink') String photoLink,
    @JsonKey(name: 'registrationnum') String registrationNum,
    @JsonKey(name: 'unitaddress') String unitAddress,
    @JsonKey(name: 'useremail') String userEmail,
    @JsonKey(name: 'username') String userName,
    @JsonKey(name: 'vehicletype') String vehicleType,
    @JsonKey(name: 'vehicleid') String vehicleID,
    @JsonKey(name: 'forstaffid') String forstaffid,
    @JsonKey(name: 'forstaffname') String forstaffname,
    @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime endDate,
    @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime startDate,
    @JsonKey(name: 'isactivate') bool isActivate,
    @JsonKey(name: 'ispickanddrop') bool isPickAndDrop,
    @JsonKey(name: 'isstaff') bool isStaff,
    @JsonKey(name: 'issubemployee') bool isSubEmployee,
    @JsonKey(name: 'isvisitor') bool isVisitor,
    @JsonKey(name: 'terminate') bool terminate,
    @JsonKey(name: 'userphonenum') num userPhoneNum,
  }) = _ComplexVehicleModel;
  factory ComplexVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$ComplexVehicleModelFromJson(json);
//require keysetting
}

@freezed
abstract class EntryLogModel with _$EntryLogModel {
  factory EntryLogModel(
      {@JsonKey(name: 'loggedinsecurity')
          String loggedInSecurity,
      @JsonKey(name: 'logtype')
          String logType,
      @JsonKey(name: 'userid')
          String userId,
      @JsonKey(name: 'identity')
          String identity,
      @JsonKey(name: 'servicerequid')
          String servicerequid,
      @JsonKey(name: 'entrytype')
          String entrytype,
      @JsonKey(name: 'logid')
          String logID,
      @JsonKey(name: 'timedate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime timeDate,
      String id}) = _EntryLogModel;
  factory EntryLogModel.fromJson(Map<String, dynamic> json) =>
      _$EntryLogModelFromJson(json);
  factory EntryLogModel.fromJsonWithId(String id, Map<String, dynamic> json) {
    var md = json.putIfAbsent("id", () => id);
    return _$EntryLogModelFromJson(md);
  }
}

@freezed
abstract class FamilyMember with _$FamilyMember {
  factory FamilyMember({
    @JsonKey(name: 'userid') String userId,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'modelid') String modelId,
    @JsonKey(name: 'vehiclenumber') String vehiclenumber,
    @JsonKey(name: 'qrcodeimg') String qrcodeimg,
    @JsonKey(name: 'vehicleactivate') bool vehicleactivate,
  }) = _FamilyMember;
  factory FamilyMember.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberFromJson(json);
//require keysetting
}

@freezed
abstract class QRCodeModel with _$QRCodeModel {
  factory QRCodeModel(
      {@JsonKey(name: 'entitytpe')
          String entityTpe,
      @JsonKey(name: 'identity')
          String identity,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'residentdetailsid')
          String residentdetailsid,
      @JsonKey(name: 'foruserid')
          String foruserid,
      @JsonKey(name: 'forservicereqid')
          String forservicereqid,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startdate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime enddate,
      String id}) = _QRCodeModel;
  factory QRCodeModel.fromJson(Map<String, dynamic> json) =>
      _$QRCodeModelFromJson(json);
  factory QRCodeModel.fromJsonWithId(String id, Map<String, dynamic> json) {
    var md = json.putIfAbsent("id", () => id);
    return _$QRCodeModelFromJson(md);
  }
}

@freezed
abstract class RegistryModel with _$RegistryModel {
  factory RegistryModel({
    @JsonKey(name: 'ownergroup') String ownerGroup,
    @JsonKey(name: 'ownermanagementposition') String ownerManagementPosition,
    @JsonKey(name: 'residentmanagementposition')
        String residentManagementPosition,
    @JsonKey(name: 'ownername') String ownerName,
    @JsonKey(name: 'ownerpublishedcontact') String ownerPublishedContact,
    @JsonKey(name: 'ownertoken') String ownerToken,
    @JsonKey(name: 'owneruserid') String ownerUserId,
    @JsonKey(name: 'residentname') String residentName,
    @JsonKey(name: 'residentpublishedcontact') String residentPublishedContact,
    @JsonKey(name: 'residenttoken') String residentToken,
    @JsonKey(name: 'residentuserid') String residentUserId,
    @JsonKey(name: 'unitaddress') String unitAddress,
    @JsonKey(name: 'ownerrecvmsg') bool ownerRecvMsg,
    @JsonKey(name: 'residentresvmessage') bool residentResvMessage,
    @JsonKey(name: 'shareownercontactflag') bool shareownercontactflag,
    @JsonKey(name: 'shareresidentcontactflag') bool shareresidentcontactflag,
    @JsonKey(name: 'ownerenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime ownerEndDate,
    @JsonKey(name: 'ownerstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime ownerStartDate,
    @JsonKey(name: 'residentstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime residentStartDate,
    @JsonKey(name: 'residentenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime residentEndDate,
    @JsonKey(name: 'version') num version,
  }) = _RegistryModel;
  factory RegistryModel.fromJson(Map<String, dynamic> json) =>
      _$RegistryModelFromJson(json);
//require keysetting
}

@freezed
abstract class ResidentModel with _$ResidentModel {
  factory ResidentModel({
    @JsonKey(name: 'appuserid') String appUserId,
    @JsonKey(name: 'contactuserid') String contactUserId,
    @JsonKey(name: 'contactnumber') String contactNumber,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'firstname') String firstName,
    @JsonKey(name: 'lastname') String lastName,
    @JsonKey(name: 'managementposition') String managementPosition,
    @JsonKey(name: 'publishedcontact') String publishedContact,
    @JsonKey(name: 'registeras') String registerAs,
    @JsonKey(name: 'unitaddress') String unitAddress,
    @JsonKey(name: 'residentid') String residentID,
    @JsonKey(name: 'recvmsg') bool recvmsg,
    @JsonKey(name: 'terminatenow') bool terminateNow,
    @JsonKey(name: 'publishcontactflag') bool publishcontactflag,
    @JsonKey(name: 'approvedbymanager') num approvedByManager,
    @JsonKey(name: 'approvedbyowner') num approvedByOwner,
    @JsonKey(name: 'version') num version,
    @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime startDate,
    @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime endDate,
  }) = _ResidentModel;
  factory ResidentModel.fromJson(Map<String, dynamic> json) =>
      _$ResidentModelFromJson(json);
//require keysetting
}

@freezed
abstract class ServiceRequestModel with _$ServiceRequestModel {
  factory ServiceRequestModel({
    @JsonKey(name: 'adhocvisitorphoto') String adHocVisitorPhoto,
    @JsonKey(name: 'correspondingname') String correspondingName,
    @JsonKey(name: 'geneartedqrcode') String geneartedQrCode,
    @JsonKey(name: 'groupreqname') String groupReqName,
    @JsonKey(name: 'notesinstructions') String notesInstructions,
    @JsonKey(name: 'phone') String phone,
    @JsonKey(name: 'requesterid') String requesterID,
    @JsonKey(name: 'requestertype') String requesterType,
    @JsonKey(name: 'servicerequestormemberuserid')
        String serviceRequestorMemberUserId,
    @JsonKey(name: 'serviceproviderid') String serviceProviderId,
    @JsonKey(name: 'qrcodelink') String qrCodeLink,
    @JsonKey(name: 'unitid') String unitId,
    @JsonKey(name: 'requestid') String requestID,
    @JsonKey(name: 'forstaffid') String forstaffid,
    @JsonKey(name: 'forstaffname') String forstaffname,
    @JsonKey(name: 'multipleentryallowed') bool multipleEntryAllowed,
    @JsonKey(name: 'requirenotificationentry') bool requireNotificationEntry,
    @JsonKey(name: 'suspend') bool suspend,
    @JsonKey(name: 'terminate') bool terminate,
    @JsonKey(name: 'forstaff') bool forstaff,
    @JsonKey(name: 'version') num version,
    @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime startDate,
    @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime endDate,
    @JsonKey(name: 'requesteddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime requestedDate,
    @JsonKey(name: 'requesttype') String requestType,
  }) = _ServiceRequestModel;
  factory ServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestModelFromJson(json);
//require keysetting
}

@freezed
abstract class UnitModel with _$UnitModel {
  factory UnitModel({
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'buildingname') String buildingName,
    @JsonKey(name: 'channel') String channel,
    @JsonKey(name: 'unitid') String unitID,
    @JsonKey(name: 'hasowner') bool hasOwner,
    @JsonKey(name: 'hasresident') bool hasResident,
    @JsonKey(name: 'flornum') num florNum,
    @JsonKey(name: 'numfixedparking') num numFixedParking,
    @JsonKey(name: 'numvisitorparking') num numVisitorParking,
    @JsonKey(name: 'version') num version,
  }) = _UnitModel;
  factory UnitModel.fromJson(Map<String, dynamic> json) =>
      _$UnitModelFromJson(json);
//require keysetting
}

@freezed
abstract class StaffModel with _$StaffModel {
  factory StaffModel({
    @JsonKey(name: 'allowedroles') List<String> allowedRoles,
    @JsonKey(name: 'serviceoffered') List<String> serviceOffered,
    @JsonKey(name: 'addressinfo') String addressInfo,
    @JsonKey(name: 'appuserid') String appUserId,
    @JsonKey(name: 'basicbio') String basicBio,
    @JsonKey(name: 'category') String category,
    @JsonKey(name: 'educationalqualification') String educationalQualification,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'phonenumstr') String phoneNumStr,
    @JsonKey(name: 'photo1') String photo1,
    @JsonKey(name: 'staffid') String staffID,
    @JsonKey(name: 'virtualroomattached') int virtualRoomAttached,
    @JsonKey(name: 'casualleave') int casualLeave,
    @JsonKey(name: 'paidleave') int paidLeave,
    @JsonKey(name: 'sickleave') int sickLeave,
    @JsonKey(name: 'version') int version,
    @JsonKey(name: 'timeinterval') int timeInterval,
    @JsonKey(name: 'locationupdaterequired') bool locationUpdateRequired,
    @JsonKey(name: 'showasteammember') bool showAsTeamMember,
    @JsonKey(name: 'terminate') bool terminate,
    @JsonKey(name: 'issuspended') bool isSuspended,
    @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime startDate,
    @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime endDate,
  }) = _StaffModel;
  factory StaffModel.fromJson(Map<String, dynamic> json) =>
      _$StaffModelFromJson(json);
//require keysetting
}
