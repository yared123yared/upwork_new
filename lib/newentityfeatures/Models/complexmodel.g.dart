// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complexmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildingModel _$_$_BuildingModelFromJson(Map<String, dynamic> json) {
  return _$_BuildingModel(
    attachedGate:
        (json['attachedgate'] as List)?.map((e) => e as String)?.toList(),
    buildingID: json['buildingid'] as String,
    buildingName: json['buildingname'] as String,
    address: json['address'] as String,
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
    version: json['version'] as num,
  );
}

Map<String, dynamic> _$_$_BuildingModelToJson(_$_BuildingModel instance) =>
    <String, dynamic>{
      'attachedgate': instance.attachedGate,
      'buildingid': instance.buildingID,
      'buildingname': instance.buildingName,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'version': instance.version,
    };

_$_ComplexVehicleModel _$_$_ComplexVehicleModelFromJson(
    Map<String, dynamic> json) {
  return _$_ComplexVehicleModel(
    appUserId: json['appuserid'] as String,
    generatedQRCode: json['generatedqrcode'] as String,
    generatedQRCodeLink: json['generatedqrcodelink'] as String,
    numberPlate: json['numberplate'] as String,
    ownerName: json['ownername'] as String,
    photoLink: json['photolink'] as String,
    registrationNum: json['registrationnum'] as String,
    unitAddress: json['unitaddress'] as String,
    userEmail: json['useremail'] as String,
    userName: json['username'] as String,
    vehicleType: json['vehicletype'] as String,
    vehicleID: json['vehicleid'] as String,
    forstaffid: json['forstaffid'] as String,
    forstaffname: json['forstaffname'] as String,
    endDate: JsonHelper.fromJsonTimeStamp(json['enddate'] as Timestamp),
    startDate: JsonHelper.fromJsonTimeStamp(json['startdate'] as Timestamp),
    isActivate: json['isactivate'] as bool,
    isPickAndDrop: json['ispickanddrop'] as bool,
    isStaff: json['isstaff'] as bool,
    isSubEmployee: json['issubemployee'] as bool,
    isVisitor: json['isvisitor'] as bool,
    terminate: json['terminate'] as bool,
    userPhoneNum: json['userphonenum'] as num,
  );
}

Map<String, dynamic> _$_$_ComplexVehicleModelToJson(
        _$_ComplexVehicleModel instance) =>
    <String, dynamic>{
      'appuserid': instance.appUserId,
      'generatedqrcode': instance.generatedQRCode,
      'generatedqrcodelink': instance.generatedQRCodeLink,
      'numberplate': instance.numberPlate,
      'ownername': instance.ownerName,
      'photolink': instance.photoLink,
      'registrationnum': instance.registrationNum,
      'unitaddress': instance.unitAddress,
      'useremail': instance.userEmail,
      'username': instance.userName,
      'vehicletype': instance.vehicleType,
      'vehicleid': instance.vehicleID,
      'forstaffid': instance.forstaffid,
      'forstaffname': instance.forstaffname,
      'enddate': JsonHelper.toJsonTimeStamp(instance.endDate),
      'startdate': JsonHelper.toJsonTimeStamp(instance.startDate),
      'isactivate': instance.isActivate,
      'ispickanddrop': instance.isPickAndDrop,
      'isstaff': instance.isStaff,
      'issubemployee': instance.isSubEmployee,
      'isvisitor': instance.isVisitor,
      'terminate': instance.terminate,
      'userphonenum': instance.userPhoneNum,
    };

_$_EntryLogModel _$_$_EntryLogModelFromJson(Map<String, dynamic> json) {
  return _$_EntryLogModel(
    loggedInSecurity: json['loggedinsecurity'] as String,
    logType: json['logtype'] as String,
    userId: json['userid'] as String,
    identity: json['identity'] as String,
    servicerequid: json['servicerequid'] as String,
    entrytype: json['entrytype'] as String,
    logID: json['logid'] as String,
    timeDate: JsonHelper.fromJsonTimeStamp(json['timedate'] as Timestamp),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_EntryLogModelToJson(_$_EntryLogModel instance) =>
    <String, dynamic>{
      'loggedinsecurity': instance.loggedInSecurity,
      'logtype': instance.logType,
      'userid': instance.userId,
      'identity': instance.identity,
      'servicerequid': instance.servicerequid,
      'entrytype': instance.entrytype,
      'logid': instance.logID,
      'timedate': JsonHelper.toJsonTimeStamp(instance.timeDate),
      'id': instance.id,
    };

_$_FamilyMember _$_$_FamilyMemberFromJson(Map<String, dynamic> json) {
  return _$_FamilyMember(
    userId: json['userid'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    modelId: json['modelid'] as String,
    vehiclenumber: json['vehiclenumber'] as String,
    qrcodeimg: json['qrcodeimg'] as String,
    vehicleactivate: json['vehicleactivate'] as bool,
  );
}

Map<String, dynamic> _$_$_FamilyMemberToJson(_$_FamilyMember instance) =>
    <String, dynamic>{
      'userid': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'modelid': instance.modelId,
      'vehiclenumber': instance.vehiclenumber,
      'qrcodeimg': instance.qrcodeimg,
      'vehicleactivate': instance.vehicleactivate,
    };

_$_QRCodeModel _$_$_QRCodeModelFromJson(Map<String, dynamic> json) {
  return _$_QRCodeModel(
    entityTpe: json['entitytpe'] as String,
    identity: json['identity'] as String,
    userid: json['userid'] as String,
    residentdetailsid: json['residentdetailsid'] as String,
    foruserid: json['foruserid'] as String,
    forservicereqid: json['forservicereqid'] as String,
    startdate: JsonHelper.fromJsonTimeStamp(json['startdate'] as Timestamp),
    enddate: JsonHelper.fromJsonTimeStamp(json['enddate'] as Timestamp),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_QRCodeModelToJson(_$_QRCodeModel instance) =>
    <String, dynamic>{
      'entitytpe': instance.entityTpe,
      'identity': instance.identity,
      'userid': instance.userid,
      'residentdetailsid': instance.residentdetailsid,
      'foruserid': instance.foruserid,
      'forservicereqid': instance.forservicereqid,
      'startdate': JsonHelper.toJsonTimeStamp(instance.startdate),
      'enddate': JsonHelper.toJsonTimeStamp(instance.enddate),
      'id': instance.id,
    };

_$_RegistryModel _$_$_RegistryModelFromJson(Map<String, dynamic> json) {
  return _$_RegistryModel(
    ownerGroup: json['ownergroup'] as String,
    ownerManagementPosition: json['ownermanagementposition'] as String,
    residentManagementPosition: json['residentmanagementposition'] as String,
    ownerName: json['ownername'] as String,
    ownerPublishedContact: json['ownerpublishedcontact'] as String,
    ownerToken: json['ownertoken'] as String,
    ownerUserId: json['owneruserid'] as String,
    residentName: json['residentname'] as String,
    residentPublishedContact: json['residentpublishedcontact'] as String,
    residentToken: json['residenttoken'] as String,
    residentUserId: json['residentuserid'] as String,
    unitAddress: json['unitaddress'] as String,
    ownerRecvMsg: json['ownerrecvmsg'] as bool,
    residentResvMessage: json['residentresvmessage'] as bool,
    shareownercontactflag: json['shareownercontactflag'] as bool,
    shareresidentcontactflag: json['shareresidentcontactflag'] as bool,
    ownerEndDate:
        JsonHelper.fromJsonTimeStamp(json['ownerenddate'] as Timestamp),
    ownerStartDate:
        JsonHelper.fromJsonTimeStamp(json['ownerstartdate'] as Timestamp),
    residentStartDate:
        JsonHelper.fromJsonTimeStamp(json['residentstartdate'] as Timestamp),
    residentEndDate:
        JsonHelper.fromJsonTimeStamp(json['residentenddate'] as Timestamp),
    version: json['version'] as num,
  );
}

Map<String, dynamic> _$_$_RegistryModelToJson(_$_RegistryModel instance) =>
    <String, dynamic>{
      'ownergroup': instance.ownerGroup,
      'ownermanagementposition': instance.ownerManagementPosition,
      'residentmanagementposition': instance.residentManagementPosition,
      'ownername': instance.ownerName,
      'ownerpublishedcontact': instance.ownerPublishedContact,
      'ownertoken': instance.ownerToken,
      'owneruserid': instance.ownerUserId,
      'residentname': instance.residentName,
      'residentpublishedcontact': instance.residentPublishedContact,
      'residenttoken': instance.residentToken,
      'residentuserid': instance.residentUserId,
      'unitaddress': instance.unitAddress,
      'ownerrecvmsg': instance.ownerRecvMsg,
      'residentresvmessage': instance.residentResvMessage,
      'shareownercontactflag': instance.shareownercontactflag,
      'shareresidentcontactflag': instance.shareresidentcontactflag,
      'ownerenddate': JsonHelper.toJsonTimeStamp(instance.ownerEndDate),
      'ownerstartdate': JsonHelper.toJsonTimeStamp(instance.ownerStartDate),
      'residentstartdate':
          JsonHelper.toJsonTimeStamp(instance.residentStartDate),
      'residentenddate': JsonHelper.toJsonTimeStamp(instance.residentEndDate),
      'version': instance.version,
    };

_$_ResidentModel _$_$_ResidentModelFromJson(Map<String, dynamic> json) {
  return _$_ResidentModel(
    appUserId: json['appuserid'] as String,
    contactUserId: json['contactuserid'] as String,
    contactNumber: json['contactnumber'] as String,
    email: json['email'] as String,
    firstName: json['firstname'] as String,
    lastName: json['lastname'] as String,
    managementPosition: json['managementposition'] as String,
    publishedContact: json['publishedcontact'] as String,
    registerAs: json['registeras'] as String,
    unitAddress: json['unitaddress'] as String,
    residentID: json['residentid'] as String,
    recvmsg: json['recvmsg'] as bool,
    terminateNow: json['terminatenow'] as bool,
    publishcontactflag: json['publishcontactflag'] as bool,
    approvedByManager: json['approvedbymanager'] as num,
    approvedByOwner: json['approvedbyowner'] as num,
    version: json['version'] as num,
    startDate: JsonHelper.fromJsonTimeStamp(json['startdate'] as Timestamp),
    endDate: JsonHelper.fromJsonTimeStamp(json['enddate'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_ResidentModelToJson(_$_ResidentModel instance) =>
    <String, dynamic>{
      'appuserid': instance.appUserId,
      'contactuserid': instance.contactUserId,
      'contactnumber': instance.contactNumber,
      'email': instance.email,
      'firstname': instance.firstName,
      'lastname': instance.lastName,
      'managementposition': instance.managementPosition,
      'publishedcontact': instance.publishedContact,
      'registeras': instance.registerAs,
      'unitaddress': instance.unitAddress,
      'residentid': instance.residentID,
      'recvmsg': instance.recvmsg,
      'terminatenow': instance.terminateNow,
      'publishcontactflag': instance.publishcontactflag,
      'approvedbymanager': instance.approvedByManager,
      'approvedbyowner': instance.approvedByOwner,
      'version': instance.version,
      'startdate': JsonHelper.toJsonTimeStamp(instance.startDate),
      'enddate': JsonHelper.toJsonTimeStamp(instance.endDate),
    };

_$_ServiceRequestModel _$_$_ServiceRequestModelFromJson(
    Map<String, dynamic> json) {
  return _$_ServiceRequestModel(
    adHocVisitorPhoto: json['adhocvisitorphoto'] as String,
    correspondingName: json['correspondingname'] as String,
    geneartedQrCode: json['geneartedqrcode'] as String,
    groupReqName: json['groupreqname'] as String,
    notesInstructions: json['notesinstructions'] as String,
    phone: json['phone'] as String,
    requesterID: json['requesterid'] as String,
    requesterType: json['requestertype'] as String,
    serviceRequestorMemberUserId:
        json['servicerequestormemberuserid'] as String,
    serviceProviderId: json['serviceproviderid'] as String,
    qrCodeLink: json['qrcodelink'] as String,
    unitId: json['unitid'] as String,
    requestID: json['requestid'] as String,
    forstaffid: json['forstaffid'] as String,
    forstaffname: json['forstaffname'] as String,
    multipleEntryAllowed: json['multipleentryallowed'] as bool,
    requireNotificationEntry: json['requirenotificationentry'] as bool,
    suspend: json['suspend'] as bool,
    terminate: json['terminate'] as bool,
    forstaff: json['forstaff'] as bool,
    version: json['version'] as num,
    startDate: JsonHelper.fromJsonTimeStamp(json['startdate'] as Timestamp),
    endDate: JsonHelper.fromJsonTimeStamp(json['enddate'] as Timestamp),
    requestedDate:
        JsonHelper.fromJsonTimeStamp(json['requesteddate'] as Timestamp),
    requestType: json['requesttype'] as String,
  );
}

Map<String, dynamic> _$_$_ServiceRequestModelToJson(
        _$_ServiceRequestModel instance) =>
    <String, dynamic>{
      'adhocvisitorphoto': instance.adHocVisitorPhoto,
      'correspondingname': instance.correspondingName,
      'geneartedqrcode': instance.geneartedQrCode,
      'groupreqname': instance.groupReqName,
      'notesinstructions': instance.notesInstructions,
      'phone': instance.phone,
      'requesterid': instance.requesterID,
      'requestertype': instance.requesterType,
      'servicerequestormemberuserid': instance.serviceRequestorMemberUserId,
      'serviceproviderid': instance.serviceProviderId,
      'qrcodelink': instance.qrCodeLink,
      'unitid': instance.unitId,
      'requestid': instance.requestID,
      'forstaffid': instance.forstaffid,
      'forstaffname': instance.forstaffname,
      'multipleentryallowed': instance.multipleEntryAllowed,
      'requirenotificationentry': instance.requireNotificationEntry,
      'suspend': instance.suspend,
      'terminate': instance.terminate,
      'forstaff': instance.forstaff,
      'version': instance.version,
      'startdate': JsonHelper.toJsonTimeStamp(instance.startDate),
      'enddate': JsonHelper.toJsonTimeStamp(instance.endDate),
      'requesteddate': JsonHelper.toJsonTimeStamp(instance.requestedDate),
      'requesttype': instance.requestType,
    };

_$_UnitModel _$_$_UnitModelFromJson(Map<String, dynamic> json) {
  return _$_UnitModel(
    address: json['address'] as String,
    buildingName: json['buildingname'] as String,
    channel: json['channel'] as String,
    unitID: json['unitid'] as String,
    hasOwner: json['hasowner'] as bool,
    hasResident: json['hasresident'] as bool,
    florNum: json['flornum'] as num,
    numFixedParking: json['numfixedparking'] as num,
    numVisitorParking: json['numvisitorparking'] as num,
    version: json['version'] as num,
  );
}

Map<String, dynamic> _$_$_UnitModelToJson(_$_UnitModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'buildingname': instance.buildingName,
      'channel': instance.channel,
      'unitid': instance.unitID,
      'hasowner': instance.hasOwner,
      'hasresident': instance.hasResident,
      'flornum': instance.florNum,
      'numfixedparking': instance.numFixedParking,
      'numvisitorparking': instance.numVisitorParking,
      'version': instance.version,
    };

_$_StaffModel _$_$_StaffModelFromJson(Map<String, dynamic> json) {
  return _$_StaffModel(
    allowedRoles:
        (json['allowedroles'] as List)?.map((e) => e as String)?.toList(),
    serviceOffered:
        (json['serviceoffered'] as List)?.map((e) => e as String)?.toList(),
    addressInfo: json['addressinfo'] as String,
    appUserId: json['appuserid'] as String,
    basicBio: json['basicbio'] as String,
    category: json['category'] as String,
    educationalQualification: json['educationalqualification'] as String,
    email: json['email'] as String,
    name: json['name'] as String,
    phoneNumStr: json['phonenumstr'] as String,
    photo1: json['photo1'] as String,
    staffID: json['staffid'] as String,
    virtualRoomAttached: json['virtualroomattached'] as int,
    casualLeave: json['casualleave'] as int,
    paidLeave: json['paidleave'] as int,
    sickLeave: json['sickleave'] as int,
    version: json['version'] as int,
    timeInterval: json['timeinterval'] as int,
    locationUpdateRequired: json['locationupdaterequired'] as bool,
    showAsTeamMember: json['showasteammember'] as bool,
    terminate: json['terminate'] as bool,
    isSuspended: json['issuspended'] as bool,
    startDate: JsonHelper.fromJsonTimeStamp(json['startdate'] as Timestamp),
    endDate: JsonHelper.fromJsonTimeStamp(json['enddate'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_StaffModelToJson(_$_StaffModel instance) =>
    <String, dynamic>{
      'allowedroles': instance.allowedRoles,
      'serviceoffered': instance.serviceOffered,
      'addressinfo': instance.addressInfo,
      'appuserid': instance.appUserId,
      'basicbio': instance.basicBio,
      'category': instance.category,
      'educationalqualification': instance.educationalQualification,
      'email': instance.email,
      'name': instance.name,
      'phonenumstr': instance.phoneNumStr,
      'photo1': instance.photo1,
      'staffid': instance.staffID,
      'virtualroomattached': instance.virtualRoomAttached,
      'casualleave': instance.casualLeave,
      'paidleave': instance.paidLeave,
      'sickleave': instance.sickLeave,
      'version': instance.version,
      'timeinterval': instance.timeInterval,
      'locationupdaterequired': instance.locationUpdateRequired,
      'showasteammember': instance.showAsTeamMember,
      'terminate': instance.terminate,
      'issuspended': instance.isSuspended,
      'startdate': JsonHelper.toJsonTimeStamp(instance.startDate),
      'enddate': JsonHelper.toJsonTimeStamp(instance.endDate),
    };
