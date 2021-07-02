import 'package:cloud_firestore/cloud_firestore.dart';

import 'models.dart';

class ComplexModel {
  String complexID;
  String buildingType;
  String complexType;
  String address;
  List<String> channels;
  String complexName;
  String createdBy;
  Timestamp createdDateTime;
  String defaultPassword;
  List<String> deviceAllowed;
  String endDate;
  String geoHash;
  bool hasSecurity;
  bool isActive;
  num latitude;
  num longitude;
  String needValidationIfUserCreated;
  Timestamp serverSideTimeStamp;
  String startDate;
  String state;
  String town;
  num version;
  num zipCode;
  List<String> stringRoles;
  List<EntityRoles> roles;

  ComplexModel({
    this.version,
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

  ComplexModel copyWith({
    String buildingType,
    String complexType,
    String address,
    List<String> channels,
    String complexName,
    String createdBy,
    DateTime createdDateTime,
    String defaultPassword,
    List<String> deviceAllowed,
    String endDate,
    num geoHash,
    bool hasSecurity,
    bool isActive,
    num latitude,
    num longitude,
    String needValidationIfUserCreated,
    DateTime serverSideTimeStamp,
    String startDate,
    String state,
    String town,
    num version,
    num zipCode,
  }) {
    return ComplexModel(
        buildingType: buildingType ?? this.buildingType,
        complexType: complexType ?? this.complexType,
        address: address ?? this.address,
        channels: channels ?? this.channels,
        complexName: complexName ?? this.complexName,
        createdBy: createdBy ?? this.createdBy,
        createdDateTime: createdDateTime ?? this.createdDateTime,
        defaultPassword: defaultPassword ?? this.defaultPassword,
        deviceAllowed: deviceAllowed ?? this.deviceAllowed,
        endDate: endDate ?? this.endDate,
        geoHash: geoHash ?? this.geoHash,
        hasSecurity: hasSecurity ?? this.geoHash,
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
      roles = [];
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
      channels = [];
      data['channels'].forEach((v) {
        channels.add(v);
      });
    } else {
      channels = [];
    }
    complexName = data['complexName'];
    createdBy = data['createdby'];
    createdDateTime = data['createddatetime'];
    defaultPassword = data['defaultpassword'];
    if (data['deviceallowed'] != null) {
      deviceAllowed = [];
      data['deviceallowed'].forEach((v) {
        deviceAllowed.add(v);
      });
    } else {
      deviceAllowed = [];
    }
    endDate = data['enddate'];
    geoHash = data['geohash'].toString();
    hasSecurity = data['hassecurity'];
    isActive = data['isactive'];
    latitude = data['latitude'];
    longitude = data['longitude'];
    needValidationIfUserCreated = data['needvalidationifusercreated'];
    serverSideTimeStamp = data['serversidetimestamp'];
    startDate = data['startdate'];
    state = data['state'];
    town = data['town'];
    version = data['version'];
    zipCode = data['zipCode'];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    List<String> channels = [];
    List<String> deviceAllowed = [];

    this.channels.forEach((element) {
      channels.add(element);
    });
    this.deviceAllowed.forEach((element) {
      deviceAllowed.add(element);
    });

    data['buildingtype'] = this.buildingType;
    data['complextype'] = this.complexType;
    data['address'] = this.address;
    //data['channels']=this.channels;
    data['complexName'] = this.complexName;
    data['createdby'] = this.createdBy;
    data['createddatetime'] = this.createdDateTime;
    data['defaultpassword'] = this.defaultPassword;
    //data['deviceallowed'] = this.deviceAllowed;
    data['enddate'] = this.endDate;
    data['geohash'] = this.geoHash;
    data['hassecurity'] = this.hasSecurity;
    data['isactive'] = this.isActive;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['needvalidationifusercreated'] = this.needValidationIfUserCreated;
    data['serversidetimestamp'] = this.serverSideTimeStamp;
    data['startdate'] = this.startDate;
    data['state'] = this.state;
    data['town'] = this.town;
    data['version'] = this.version;
    data['zipcode'] = this.zipCode;

    return data;
  }
}
