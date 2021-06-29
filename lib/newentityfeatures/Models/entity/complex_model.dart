import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/tempmodelforcomplex.dart';

// ignore: must_be_immutable
class ComplexModel extends Equatable {
  String complexID;
  String buildingType;
  String complexType;
  String address;
  List<String> channels;
  String complexName;
  String createdBy;
  DateTime createdDateTime;
  String defaultPassword;
  List<String> deviceAllowed;
  DateTime endDate;
  String geoHash;
  bool hasSecurity;
  bool isActive;
  num latitude;
  num longitude;
  String needValidationIfUserCreated;
  Timestamp serverSideTimeStamp;
  DateTime startDate;
  String state;
  String town;
  num version;
  num zipCode;
  List<String> stringRoles;
  List<EntityRoles> roles;

  ComplexModel({
    this.version,
    this.complexID,
    this.isActive,
    this.longitude,
    this.latitude,
    this.startDate,
    this.address,
    this.buildingType,
    this.channels,
    this.roles,
    this.complexName,
    this.complexType,
    this.createdBy,
    this.stringRoles,
    this.createdDateTime,
    this.defaultPassword,
    this.deviceAllowed,
    this.endDate,
    this.geoHash,
    this.hasSecurity,
    this.needValidationIfUserCreated,
    this.serverSideTimeStamp,
    this.state,
    this.town,
    this.zipCode,
  });

  @override
  List<Object> get props => [
        complexID,
        roles,
        version,
        buildingType,
        complexType,
        address,
        channels,
        complexName,
        createdBy,
        createdDateTime,
        defaultPassword,
        deviceAllowed,
        endDate,
        geoHash,
        hasSecurity,
        isActive,
        latitude,
        longitude,
        needValidationIfUserCreated,
        serverSideTimeStamp,
        startDate,
        stringRoles,
        state,
        town,
        zipCode
      ];

  ComplexModel copyWith({
    String complexId,
    String buildingType,
    String complexType,
    String address,
    List<String> channels,
    String complexName,
    String createdBy,
    DateTime createdDateTime,
    String defaultpassword,
    List<String> deviceAllowed,
    DateTime endDate,
    String geoHash,
    bool hasSecurity,
    bool isActive,
    num latitude,
    num longitude,
    String needValidationIfUserCreated,
    DateTime serverSideTimeStamp,
    DateTime startDate,
    String state,
    String town,
    num version,
    num zipCode,
  }) {
    return ComplexModel(
        complexID: complexID ?? this.complexID,
        buildingType: buildingType ?? this.buildingType,
        complexType: complexType ?? this.complexType,
        address: address ?? this.address,
        channels: channels ?? this.channels,
        complexName: complexName ?? this.complexName,
        createdBy: createdBy ?? this.createdBy,
        createdDateTime: createdDateTime ?? this.createdDateTime,
        defaultPassword: defaultpassword ?? this.defaultPassword,
        deviceAllowed: deviceAllowed ?? this.deviceAllowed,
        endDate: endDate ?? this.endDate,
        geoHash: geoHash ?? this.geoHash,
        hasSecurity: hasSecurity ?? this.hasSecurity,
        isActive: isActive ?? this.isActive,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        needValidationIfUserCreated:
            needValidationIfUserCreated ?? this.needValidationIfUserCreated,
        serverSideTimeStamp: serverSideTimeStamp ?? this.serverSideTimeStamp,
        startDate: startDate ?? this.startDate,
        state: state ?? this.state,
        town: town ?? this.town,
        version: version ?? this.version,
        zipCode: zipCode ?? this.zipCode);
  }

  ComplexModel.fromData(
      Map<String, dynamic> data, List<String> userRoles, String complexID) {
    if (userRoles != null) {
      stringRoles = userRoles;
      roles = List<EntityRoles>();
      userRoles.forEach((role) {
        if (role == 'owner') {
          roles.add(EntityRoles.Owner);
        } else if (role == 'resident') {
          roles.add(EntityRoles.Resident);
        } else if (role == 'staff') {
          roles.add(EntityRoles.Staff);
        } else if (role == 'manager') {
          roles.add(EntityRoles.Manager);
        }
      });
    } else {
      roles = [];
    }

    buildingType = data['buildingtype'];
    this.complexID = complexID;
    complexType = data['complextype'];
    address = data['address'];
    if (data['channels'] != null) {
      channels = List<String>();
      data['channels'].forEach((v) {
        channels.add(v);
      });
    } else {
      channels = [];
    }
    complexName = data['complexName'];
    createdBy = data['createdby'];
    createdDateTime = data['createddatetime'] is int
        ? HelpUtil.toDate(timestamp: data['createddatetime'])
        : DateTime.now();
    defaultPassword = data['defaultpassword'];
    if (data['deviceallowed'] != null) {
      deviceAllowed = List<String>();
      data['deviceallowed'].forEach((v) {
        deviceAllowed.add(v);
      });
    } else {
      deviceAllowed = [];
    }
    endDate = data['enddate'] is int
        ? HelpUtil.toDate(timestamp: data['enddate'])
        : DateTime.now();
    geoHash = data['geohash'].toString();
    hasSecurity = data['hassecurity'];
    isActive = data['isactive'];
    latitude = data['latitude'];
    longitude = data['longitude'];
    needValidationIfUserCreated = data['needvalidationifusercreated'];
    //serverSideTimeStamp = data['serversidetimestamp'];
    startDate = data['startdate'] is int
        ? HelpUtil.toDate(timestamp: data['startdate'])
        : DateTime.now();
    state = data['state'];
    town = data['town'];
    version = data['version'];
    zipCode = data['zipcode'];
  }
  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // List<String> channels = [];
    // List<String> deviceAllowed = [];
    //
    // this.channels.forEach((element) {
    //   channels.add(element);
    // });
    // this.deviceAllowed.forEach((element) {
    //   deviceAllowed.add(element);
    // });

    data['buildingtype'] = this.buildingType;
    data['complextype'] = this.complexType;
    data['address'] = this.address;
    //data['channels']=this.channels;
    data['complexName'] = this.complexName;
    data['createdby'] = this.createdBy;
    data['createddatetime'] = this.createdDateTime;
    data['defaultpassword'] = this.defaultPassword;
    //data['deviceallowed'] = this.deviceAllowed;
    data['enddate'] = HelpUtil.toTimeStamp(dateTime: this.endDate);
    data['geohash'] = this.geoHash;
    data['hassecurity'] = this.hasSecurity;
    data['isactive'] = this.isActive;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['needvalidationifusercreated'] = this.needValidationIfUserCreated;
    // data['serversidetimestamp'] = FieldValue.serverTimestamp();
    data['startdate'] = HelpUtil.toTimeStamp(dateTime: startDate);
    data['state'] = this.state;
    data['town'] = this.town;
    data['version'] = this.version;
    data['zipcode'] = this.zipCode;

    return data;
  }
}
