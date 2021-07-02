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

Map<String, dynamic> _$_$_BuildingModelToJson(_$_BuildingModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attachedgate', instance.attachedGate);
  writeNotNull('buildingid', instance.buildingID);
  writeNotNull('buildingname', instance.buildingName);
  writeNotNull('address', instance.address);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('version', instance.version);
  return val;
}

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
    _$_ComplexVehicleModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appuserid', instance.appUserId);
  writeNotNull('generatedqrcode', instance.generatedQRCode);
  writeNotNull('generatedqrcodelink', instance.generatedQRCodeLink);
  writeNotNull('numberplate', instance.numberPlate);
  writeNotNull('ownername', instance.ownerName);
  writeNotNull('photolink', instance.photoLink);
  writeNotNull('registrationnum', instance.registrationNum);
  writeNotNull('unitaddress', instance.unitAddress);
  writeNotNull('useremail', instance.userEmail);
  writeNotNull('username', instance.userName);
  writeNotNull('vehicletype', instance.vehicleType);
  writeNotNull('vehicleid', instance.vehicleID);
  writeNotNull('forstaffid', instance.forstaffid);
  writeNotNull('forstaffname', instance.forstaffname);
  writeNotNull('enddate', JsonHelper.toJsonTimeStamp(instance.endDate));
  writeNotNull('startdate', JsonHelper.toJsonTimeStamp(instance.startDate));
  writeNotNull('isactivate', instance.isActivate);
  writeNotNull('ispickanddrop', instance.isPickAndDrop);
  writeNotNull('isstaff', instance.isStaff);
  writeNotNull('issubemployee', instance.isSubEmployee);
  writeNotNull('isvisitor', instance.isVisitor);
  writeNotNull('terminate', instance.terminate);
  writeNotNull('userphonenum', instance.userPhoneNum);
  return val;
}

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

Map<String, dynamic> _$_$_EntryLogModelToJson(_$_EntryLogModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('loggedinsecurity', instance.loggedInSecurity);
  writeNotNull('logtype', instance.logType);
  writeNotNull('userid', instance.userId);
  writeNotNull('identity', instance.identity);
  writeNotNull('servicerequid', instance.servicerequid);
  writeNotNull('entrytype', instance.entrytype);
  writeNotNull('logid', instance.logID);
  writeNotNull('timedate', JsonHelper.toJsonTimeStamp(instance.timeDate));
  writeNotNull('id', instance.id);
  return val;
}

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

Map<String, dynamic> _$_$_FamilyMemberToJson(_$_FamilyMember instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userid', instance.userId);
  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  writeNotNull('modelid', instance.modelId);
  writeNotNull('vehiclenumber', instance.vehiclenumber);
  writeNotNull('qrcodeimg', instance.qrcodeimg);
  writeNotNull('vehicleactivate', instance.vehicleactivate);
  return val;
}

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

Map<String, dynamic> _$_$_QRCodeModelToJson(_$_QRCodeModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entitytpe', instance.entityTpe);
  writeNotNull('identity', instance.identity);
  writeNotNull('userid', instance.userid);
  writeNotNull('residentdetailsid', instance.residentdetailsid);
  writeNotNull('foruserid', instance.foruserid);
  writeNotNull('forservicereqid', instance.forservicereqid);
  writeNotNull('startdate', JsonHelper.toJsonTimeStamp(instance.startdate));
  writeNotNull('enddate', JsonHelper.toJsonTimeStamp(instance.enddate));
  writeNotNull('id', instance.id);
  return val;
}

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

Map<String, dynamic> _$_$_RegistryModelToJson(_$_RegistryModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ownergroup', instance.ownerGroup);
  writeNotNull('ownermanagementposition', instance.ownerManagementPosition);
  writeNotNull(
      'residentmanagementposition', instance.residentManagementPosition);
  writeNotNull('ownername', instance.ownerName);
  writeNotNull('ownerpublishedcontact', instance.ownerPublishedContact);
  writeNotNull('ownertoken', instance.ownerToken);
  writeNotNull('owneruserid', instance.ownerUserId);
  writeNotNull('residentname', instance.residentName);
  writeNotNull('residentpublishedcontact', instance.residentPublishedContact);
  writeNotNull('residenttoken', instance.residentToken);
  writeNotNull('residentuserid', instance.residentUserId);
  writeNotNull('unitaddress', instance.unitAddress);
  writeNotNull('ownerrecvmsg', instance.ownerRecvMsg);
  writeNotNull('residentresvmessage', instance.residentResvMessage);
  writeNotNull('shareownercontactflag', instance.shareownercontactflag);
  writeNotNull('shareresidentcontactflag', instance.shareresidentcontactflag);
  writeNotNull(
      'ownerenddate', JsonHelper.toJsonTimeStamp(instance.ownerEndDate));
  writeNotNull(
      'ownerstartdate', JsonHelper.toJsonTimeStamp(instance.ownerStartDate));
  writeNotNull('residentstartdate',
      JsonHelper.toJsonTimeStamp(instance.residentStartDate));
  writeNotNull(
      'residentenddate', JsonHelper.toJsonTimeStamp(instance.residentEndDate));
  writeNotNull('version', instance.version);
  return val;
}

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

Map<String, dynamic> _$_$_ResidentModelToJson(_$_ResidentModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appuserid', instance.appUserId);
  writeNotNull('contactuserid', instance.contactUserId);
  writeNotNull('contactnumber', instance.contactNumber);
  writeNotNull('email', instance.email);
  writeNotNull('firstname', instance.firstName);
  writeNotNull('lastname', instance.lastName);
  writeNotNull('managementposition', instance.managementPosition);
  writeNotNull('publishedcontact', instance.publishedContact);
  writeNotNull('registeras', instance.registerAs);
  writeNotNull('unitaddress', instance.unitAddress);
  writeNotNull('residentid', instance.residentID);
  writeNotNull('recvmsg', instance.recvmsg);
  writeNotNull('terminatenow', instance.terminateNow);
  writeNotNull('publishcontactflag', instance.publishcontactflag);
  writeNotNull('approvedbymanager', instance.approvedByManager);
  writeNotNull('approvedbyowner', instance.approvedByOwner);
  writeNotNull('version', instance.version);
  writeNotNull('startdate', JsonHelper.toJsonTimeStamp(instance.startDate));
  writeNotNull('enddate', JsonHelper.toJsonTimeStamp(instance.endDate));
  return val;
}

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
    _$_ServiceRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('adhocvisitorphoto', instance.adHocVisitorPhoto);
  writeNotNull('correspondingname', instance.correspondingName);
  writeNotNull('geneartedqrcode', instance.geneartedQrCode);
  writeNotNull('groupreqname', instance.groupReqName);
  writeNotNull('notesinstructions', instance.notesInstructions);
  writeNotNull('phone', instance.phone);
  writeNotNull('requesterid', instance.requesterID);
  writeNotNull('requestertype', instance.requesterType);
  writeNotNull(
      'servicerequestormemberuserid', instance.serviceRequestorMemberUserId);
  writeNotNull('serviceproviderid', instance.serviceProviderId);
  writeNotNull('qrcodelink', instance.qrCodeLink);
  writeNotNull('unitid', instance.unitId);
  writeNotNull('requestid', instance.requestID);
  writeNotNull('forstaffid', instance.forstaffid);
  writeNotNull('forstaffname', instance.forstaffname);
  writeNotNull('multipleentryallowed', instance.multipleEntryAllowed);
  writeNotNull('requirenotificationentry', instance.requireNotificationEntry);
  writeNotNull('suspend', instance.suspend);
  writeNotNull('terminate', instance.terminate);
  writeNotNull('forstaff', instance.forstaff);
  writeNotNull('version', instance.version);
  writeNotNull('startdate', JsonHelper.toJsonTimeStamp(instance.startDate));
  writeNotNull('enddate', JsonHelper.toJsonTimeStamp(instance.endDate));
  writeNotNull(
      'requesteddate', JsonHelper.toJsonTimeStamp(instance.requestedDate));
  writeNotNull('requesttype', instance.requestType);
  return val;
}

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

Map<String, dynamic> _$_$_UnitModelToJson(_$_UnitModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('buildingname', instance.buildingName);
  writeNotNull('channel', instance.channel);
  writeNotNull('unitid', instance.unitID);
  writeNotNull('hasowner', instance.hasOwner);
  writeNotNull('hasresident', instance.hasResident);
  writeNotNull('flornum', instance.florNum);
  writeNotNull('numfixedparking', instance.numFixedParking);
  writeNotNull('numvisitorparking', instance.numVisitorParking);
  writeNotNull('version', instance.version);
  return val;
}

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

Map<String, dynamic> _$_$_StaffModelToJson(_$_StaffModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allowedroles', instance.allowedRoles);
  writeNotNull('serviceoffered', instance.serviceOffered);
  writeNotNull('addressinfo', instance.addressInfo);
  writeNotNull('appuserid', instance.appUserId);
  writeNotNull('basicbio', instance.basicBio);
  writeNotNull('category', instance.category);
  writeNotNull('educationalqualification', instance.educationalQualification);
  writeNotNull('email', instance.email);
  writeNotNull('name', instance.name);
  writeNotNull('phonenumstr', instance.phoneNumStr);
  writeNotNull('photo1', instance.photo1);
  writeNotNull('staffid', instance.staffID);
  writeNotNull('virtualroomattached', instance.virtualRoomAttached);
  writeNotNull('casualleave', instance.casualLeave);
  writeNotNull('paidleave', instance.paidLeave);
  writeNotNull('sickleave', instance.sickLeave);
  writeNotNull('version', instance.version);
  writeNotNull('timeinterval', instance.timeInterval);
  writeNotNull('locationupdaterequired', instance.locationUpdateRequired);
  writeNotNull('showasteammember', instance.showAsTeamMember);
  writeNotNull('terminate', instance.terminate);
  writeNotNull('issuspended', instance.isSuspended);
  writeNotNull('startdate', JsonHelper.toJsonTimeStamp(instance.startDate));
  writeNotNull('enddate', JsonHelper.toJsonTimeStamp(instance.endDate));
  return val;
}
