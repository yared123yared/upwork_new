// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:equatable/equatable.dart';

// import 'models.dart';

// enum ServiceType { School, Trip, Shop }

// class ServiceModel extends Equatable {
//   num timeInterval;
//   String address;
//   String createdBy;
//   String associatedComplexId;
//   String associatedComplexName;
//   String associatedComplexNumber;
//   String biography;
//   String category;
//   List<String> channel;
//   String email;
//   DateTime endDate;
//   num extraCost;
//   String geoHash;
//   num idRunningNumber;
//   bool independentComplex;
//   List<String> languages;
//   List<String> phone;
//   List<String> serviceOffered;
//   num lastUpdateTime;
//   num latitude;
//   num longitude;
//   String photo1;
//   num pointPlacesRunningNumber;
//   bool providePickup;
//   bool providerDelivery;
//   num rangeInKm;
//   num rating1Count;
//   num rating2Count;
//   num rating3Count;
//   num rating4Count;
//   num rating5Count;
//   bool requirePosUpdate;
//   num routerRunningNumber;
//   Timestamp serverSideTimeStamp;
//   String serviceName;
//   List<String> serviceType;
//   DateTime startDate;
//   String state;
//   String town;
//   num tripIdRunningNumber;
//   num vehicleRunningNumber;
//   num version;
//   String website;
//   num zipCode;
//   List<EntityRoles> roles;
//   List<ServiceType> serviceTypes;
//   String serviceID;
//   ServiceModel(
//       {this.timeInterval,
//       this.serviceType,
//       this.version,
//       this.createdBy,
//       this.serviceID,
//       this.roles,
//       this.channel,
//       this.address,
//       this.startDate,
//       this.photo1,
//       this.endDate,
//       this.email,
//       this.category,
//       this.serverSideTimeStamp,
//       this.longitude,
//       this.latitude,
//       this.zipCode,
//       this.state,
//       this.town,
//       this.associatedComplexId,
//       this.associatedComplexName,
//       this.associatedComplexNumber,
//       this.biography,
//       this.extraCost,
//       this.geoHash,
//       this.idRunningNumber,
//       this.independentComplex,
//       this.languages,
//       this.lastUpdateTime,
//       this.phone,
//       this.serviceOffered,
//       this.pointPlacesRunningNumber,
//       this.providePickup,
//       this.providerDelivery,
//       this.rangeInKm,
//       this.rating1Count,
//       this.rating2Count,
//       this.rating3Count,
//       this.rating4Count,
//       this.rating5Count,
//       this.requirePosUpdate,
//       this.routerRunningNumber,
//       this.serviceName,
//       this.serviceTypes,
//       this.tripIdRunningNumber,
//       this.vehicleRunningNumber,
//       this.website});

//   @override
//   List<Object> get props => [
//         timeInterval,
//         serviceTypes,
//         version,
//         channel,
//         address,
//         startDate,
//         createdBy,
//         photo1,
//         endDate,
//         email,
//         category,
//         serverSideTimeStamp,
//         longitude,
//         latitude,
//         zipCode,
//         state,
//         town,
//         phone,
//         serviceOffered,
//         associatedComplexId,
//         associatedComplexName,
//         associatedComplexNumber,
//         biography,
//         extraCost,
//         geoHash,
//         idRunningNumber,
//         independentComplex,
//         languages,
//         lastUpdateTime,
//         pointPlacesRunningNumber,
//         providePickup,
//         providerDelivery,
//         rangeInKm,
//         rating1Count,
//         rating2Count,
//         rating3Count,
//         rating4Count,
//         rating5Count,
//         requirePosUpdate,
//         routerRunningNumber,
//         serviceName,
//         serviceType,
//         tripIdRunningNumber,
//         vehicleRunningNumber,
//         website
//       ];

//   ServiceModel copyWith(
//       {num timeInterval,
//       String address,
//       String associatedComplexId,
//       String associatedComplexName,
//       String associatedComplexNumber,
//       String biography,
//       String category,
//       List<String> channel,
//       String email,
//       DateTime endDate,
//       num extraCost,
//       num geoHash,
//       num idRunningNumber,
//       bool independentComplex,
//       List<String> languages,
//       List<String> phone,
//       List<String> serviceOffered,
//       num lastUpdateTime,
//       num latitude,
//       num longitude,
//       String photo1,
//       num pointPlacesRunningNumber,
//       bool providePickup,
//       bool providerDelivery,
//       num rangeInKm,
//       num rating1Count,
//       num rating2Count,
//       num rating3Count,
//       num rating4Count,
//       num rating5Count,
//       bool requirePosUpdate,
//       num routerRunningNumber,
//       Timestamp serverSideTimeStamp,
//       String serviceName,
//       String serviceType,
//       DateTime startDate,
//       String state,
//       String town,
//       num tripIdRunningNumber,
//       num vehicleRunningNumber,
//       num version,
//       String website,
//       num zipCode,
//       String createdBy}) {
//     return ServiceModel(
//       timeInterval: timeInterval ?? this.timeInterval,
//       address: address ?? this.address,
//       associatedComplexId: associatedComplexId ?? this.associatedComplexId,
//       associatedComplexName:
//           associatedComplexName ?? this.associatedComplexName,
//       associatedComplexNumber:
//           associatedComplexNumber ?? this.associatedComplexNumber,
//       createdBy: createdBy ?? this.createdBy,
//       biography: biography ?? this.biography,
//       category: category ?? this.category,
//       channel: channel ?? this.channel,
//       email: email ?? this.email,
//       endDate: endDate ?? this.endDate,
//       extraCost: extraCost ?? this.extraCost,
//       geoHash: geoHash ?? this.geoHash,
//       idRunningNumber: idRunningNumber ?? this.idRunningNumber,
//       independentComplex: independentComplex ?? this.independentComplex,
//       languages: languages ?? this.languages,
//       lastUpdateTime: lastUpdateTime ?? this.lastUpdateTime,
//       latitude: latitude ?? this.latitude,
//       longitude: longitude ?? this.longitude,
//       photo1: photo1 ?? this.photo1,
//       pointPlacesRunningNumber:
//           pointPlacesRunningNumber ?? this.pointPlacesRunningNumber,
//       providePickup: providePickup ?? this.providePickup,
//       providerDelivery: providerDelivery ?? this.providerDelivery,
//       rangeInKm: rangeInKm ?? this.rangeInKm,
//       rating1Count: rating1Count ?? this.rating1Count,
//       rating2Count: rating2Count ?? this.rating2Count,
//       rating3Count: rating3Count ?? this.rating3Count,
//       rating4Count: rating4Count ?? this.rating4Count,
//       rating5Count: rating5Count ?? this.rating5Count,
//       phone: phone ?? this.phone,
//       serviceOffered: serviceOffered ?? this.serviceOffered,
//       requirePosUpdate: requirePosUpdate ?? this.requirePosUpdate,
//       routerRunningNumber: routerRunningNumber ?? this.routerRunningNumber,
//       serverSideTimeStamp: serverSideTimeStamp ?? this.serverSideTimeStamp,
//       serviceName: serviceName ?? this.serviceName,
//       serviceType: serviceType ?? this.serviceType,
//       startDate: startDate ?? this.startDate,
//       state: state ?? this.state,
//       town: town ?? this.town,
//       tripIdRunningNumber: tripIdRunningNumber ?? this.tripIdRunningNumber,
//       vehicleRunningNumber: vehicleRunningNumber ?? this.vehicleRunningNumber,
//       version: version ?? this.version,
//       website: website ?? this.website,
//       zipCode: zipCode ?? this.zipCode,
//     );
//   }

//   ServiceModel.fromJson(
//       Map<String, dynamic> json, List<String> userRoles, String serviceID) {
//     this.serviceID = serviceID;
//     if (json['servicetype'] != null) {
//       serviceTypes = List<ServiceType>();
//       json['servicetype'].forEach((type) {
//         if (type == 'SCHOOL') {
//           serviceTypes.add(ServiceType.School);
//         } else if (type == 'TRIP') {
//           serviceTypes.add(ServiceType.Trip);
//         } else if (type == 'SHOP') {
//           serviceTypes.add(ServiceType.Shop);
//         }
//       });
//     } else {
//       serviceTypes = [];
//     }
//     if (userRoles != null) {
//       roles = [];
//       userRoles.forEach((role) {
//         if (role == 'staff') {
//           roles.add(EntityRoles.Staff);
//         } else if (role == 'manager') {
//           roles.add(EntityRoles.Manager);
//         } else if (role == 'instructor') {
//           roles.add(EntityRoles.Instructor);
//         } else if (role == 'instructionmanager') {
//           roles.add(EntityRoles.InstructionManager);
//         } else if (role == 'feeManager') {
//           roles.add(EntityRoles.FeeManager);
//         } else if (role == 'security') {
//           roles.add(EntityRoles.Security);
//         }
//       });
//     } else {
//       roles = [];
//     }
//     if (json['servicetype'] != null) {
//       serviceType = [];
//       json['servicetype'].forEach((v) {
//         serviceType.add(v);
//       });
//     } else {
//       serviceType = [];
//     }

//     if (json['channels'] != null) {
//       channel = [];
//       json['channels'].forEach((v) {
//         channel.add(v);
//       });
//     } else {
//       channel = [];
//     }
//     if (json['languages'] != null) {
//       languages = [];
//       json['languages'].forEach((v) {
//         languages.add(v);
//       });
//     } else {
//       languages = [];
//     }
//     if (json['phone'] != null) {
//       phone = [];
//       json['phone'].forEach((v) {
//         phone.add(v.toString());
//       });
//     } else {
//       phone = [];
//     }
//     if (json['serviceoffered'] != null) {
//       serviceOffered = [];
//       json['serviceoffered'].forEach((v) {
//         serviceOffered.add(v);
//       });
//     } else {
//       serviceOffered = [];
//     }
//     createdBy = json['createdby'];
//     timeInterval = json['TimeInterval'];
//     address = json['address'];
//     associatedComplexId = json['associatedcomplexid'];
//     associatedComplexName = json['associatedcomplexname'];
//     associatedComplexNumber = json['associatedunitnumber'];
//     biography = json['biography'];
//     category = json['category'];
//     email = json['email'];
//     endDate = json['enddate'] is int
//         ? CommonUIHandler.toDate(timestamp: json['enddate'])
//         : DateTime.now();
//     extraCost = json['extracost'];
//     geoHash = json['geohash'].toString();
//     idRunningNumber = json['idrunningnumber'];
//     independentComplex = json['independentcomplex'];
//     lastUpdateTime = json['lastupdatetime'];
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//     photo1 = json['photo1'];
//     pointPlacesRunningNumber = json['pointplacesrunningnumber'];
//     providePickup = json['providepickup'];
//     providerDelivery = json['providerdelivery'];
//     rangeInKm = json['rangeinkm'];
//     rating1Count = json['rating1count'];
//     rating2Count = json['rating2count'];
//     rating3Count = json['rating3count'];
//     rating4Count = json['rating4count'];
//     rating5Count = json['rating5count'];
//     requirePosUpdate = json['requirposupdate'];
//     routerRunningNumber = json['routerunningnumber'];
//     serverSideTimeStamp = json['serversidetimestamp'];
//     serviceName = json['servicename'];
//     startDate = json['startdate'] is int
//         ? CommonUIHandler.toDate(timestamp: json['startdate'])
//         : DateTime.now();
//     state = json['state'];
//     town = json['town'];
//     tripIdRunningNumber = json['tripidrunningnumber'];
//     vehicleRunningNumber = json['vehicleidrunningnumber'];
//     version = json['version'];
//     website = json['website'];
//     zipCode = json['zipCode'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = Map<String, dynamic>();

//     List<String> mchannel = [];
//     List<String> mlanguage = [];
//     List<String> mphone = [];
//     List<String> mserviceoffered = [];
//     List<String> mservicetypes = [];
//     //Never send channel to db

//     if (this.serviceType != null) {
//       this.serviceType.forEach((element) {
//         mservicetypes.add(element);
//       });
//     }

//     if (this.languages != null) {
//       this.languages.forEach((element) {
//         mlanguage.add(element);
//       });
//     }
//     if (this.phone != null) {
//       this.phone.forEach((element) {
//         mphone.add(element);
//       });
//     }
//     if (this.serviceOffered != null) {
//       this.serviceOffered.forEach((element) {
//         mserviceoffered.add(element);
//       });
//     }

//     json['serviceoffered'] = mserviceoffered;
//     json['phone'] = mphone;
//     json['servicetype'] = mservicetypes;
//     json['languages'] = mlanguage;
//     json['TimeInterval'] = this.timeInterval;
//     json['address'] = this.address;
//     json['associatedcomplexid'] = this.associatedComplexId;
//     json['associatedcomplexname'] = this.associatedComplexName;
//     json['associatedunitnumber'] = this.associatedComplexNumber;
//     json['biography'] = this.biography;
//     json['category'] = this.category;
//     json['email'] = this.email;
//     json['createdby'] = this.createdBy;
//     json['enddate'] = CommonUIHandler.toTimeStamp(dateTime: this.endDate);
//     json['extracost'] = this.extraCost;
//     json['geohash'] = this.geoHash;
//     json['idrunningnumber'] = this.idRunningNumber;
//     json['independentcomplex'] = this.independentComplex;
//     json['lastupdatetime'] = this.lastUpdateTime;
//     json['latitude'] = this.latitude;
//     json['longitude'] = this.longitude;
//     json['photo1'] = this.photo1;
//     json['pointplacesrunningnumber'] = this.pointPlacesRunningNumber;
//     json['providepickup'] = this.providePickup;
//     json['providerdelivery'] = this.providerDelivery;
//     json['rangeinkm'] = this.rangeInKm;
//     json['rating1count'] = this.rating1Count;
//     json['rating2count'] = this.rating2Count;
//     json['rating3count'] = this.rating3Count;
//     json['rating4count'] = this.rating4Count;
//     json['rating5count'] = this.rating5Count;
//     json['requirposupdate'] = this.requirePosUpdate;
//     json['routerunningnumber'] = this.routerRunningNumber;
//     // json['serversidetimestamp'] = FieldValue.serverTimestamp();
//     json['servicename'] = this.serviceName;
//     json['servicetype'] = this.serviceType;
//     json['startdate'] = CommonUIHandler.toTimeStamp(dateTime: this.startDate);
//     json['state'] = this.state;
//     json['town'] = this.town;
//     json['tripidrunningnumber'] = this.tripIdRunningNumber;
//     json['vehicleidrunningnumber'] = this.vehicleRunningNumber;
//     json['version'] = this.version;
//     json['website'] = this.website;
//     json['zipCode'] = this.zipCode;

//     return json;
//   }
// }

import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'models.dart';

part 'service_model.g.dart';

enum ServiceType { School, Trip, Shop }

@JsonSerializable()
class AreaInfo {
  String districtname;
  String areaname;

  AreaInfo({this.districtname, this.areaname});

  factory AreaInfo.fromJson(Map json) => _$AreaInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AreaInfoToJson(this);
}

@JsonSerializable()
class SpatialData {
  String curStatename;
  double lati;
  double longi;
  int radius;
  String statename;
  List<AreaInfo> locationname;

  SpatialData({
    this.curStatename,
    this.lati,
    this.longi,
    this.radius,
    this.statename,
    this.locationname,
  });

  factory SpatialData.fromJson(Map json) => _$SpatialDataFromJson(json);

  Map<String, dynamic> toJson() => _$SpatialDataToJson(this);
}

@JsonSerializable()
class ServiceFilterParameter {
  SpatialData sd;
  String textsearch;
  String servicetype;
  List<String> serviceofferedselectedvalues;
  int offset;

  ServiceFilterParameter({
    this.sd,
    this.textsearch,
    this.servicetype,
    this.serviceofferedselectedvalues,
    this.offset,
  });

  factory ServiceFilterParameter.fromJson(Map json) =>
      _$ServiceFilterParameterFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceFilterParameterToJson(this);
}

class ExplorePageAd {
  String imagepath;
  LimitedServiceModel lm;
  String message;

  ExplorePageAd({this.imagepath, this.lm, this.message});
}

@JsonSerializable()
class ServiceFilterResultData {
  List<LimitedServiceModel> smlist;
  List<String> smidlist;
  int totcount;

  ServiceFilterResultData({
    this.smlist,
    this.smidlist,
    this.totcount,
  });

  factory ServiceFilterResultData.fromJson(Map json) =>
      _$ServiceFilterResultDataFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceFilterResultDataToJson(this);
}

@JsonSerializable()
class LimitedServiceModel {
  String address;
  List<String> phone;
  String email;
  String photo1;
  int ratingcount;
  int totalratings;
  String serviceName;
  bool hasapt;
  List<String> servicetype;
  bool hasadhoctrips;
  bool hasecom;
  bool hasproductcatalog;
  String timeinfo;
  String serviceID;

  LimitedServiceModel({
    this.serviceID,
    this.address,
    this.phone,
    this.email,
    this.photo1,
    this.ratingcount,
    this.totalratings,
    this.serviceName,
    this.hasapt,
    this.servicetype,
    this.hasadhoctrips,
    this.hasecom,
    this.hasproductcatalog,
    this.timeinfo,
  });

  factory LimitedServiceModel.fromJson(Map json) =>
      _$LimitedServiceModelFromJson(json);

  Map<String, dynamic> toJson() => _$LimitedServiceModelToJson(this);

  ServiceModel getLimitedServiceModel() {
    ServiceModel lsm;
    return lsm;
  }
}

// ignore: must_be_immutable
class ServiceModel extends Equatable {
  num timeInterval;
  String address;
  String createdBy;
  String associatedComplexId;
  String associatedComplexName;
  String associatedComplexNumber;
  String biography;
  String category;
  List<String> channel;
  String email;
  DateTime endDate;
  num extraCost;
  String geoHash;
  num idRunningNumber;
  bool independentComplex;
  List<String> languages;
  List<String> phone;
  List<String> serviceOffered;
  num lastUpdateTime;
  num latitude;
  num longitude;
  String photo1;
  num pointPlacesRunningNumber;
  bool providePickup;
  bool providerDelivery;
  num rangeInKm;
  num rating1Count;
  num rating2Count;
  num rating3Count;
  num rating4Count;
  num rating5Count;
  bool requirePosUpdate;
  num routerRunningNumber;
  Timestamp serverSideTimeStamp;
  String serviceName;
  List<String> serviceType;
  DateTime startDate;
  String state;
  String town;
  num tripIdRunningNumber;
  num vehicleRunningNumber;
  num version;
  String website;
  num zipCode;
  List<EntityRoles> roles;
  List<ServiceType> serviceTypes;
  String serviceID;
  Map tFri;
  Map tMon;
  Map tSat;
  Map tSun;
  Map tThu;
  Map tTue;
  Map tWed;
  Map subscriptions;

  ///wither has appointment or not
  bool hasapt;
  bool hasrapt; // has regular appointment
  bool hasqapt; //has q apointment
  bool hasvapt; //has home visit apointment
  int aptpslots; //number of parallel apt slots

  ///wither has ecomerce
  bool hasecom;
  bool justlisting;

  bool hastrip;
  bool hasregistration;
  String apttype;
  String subdis;
  String dis;
  //new fields
  bool hasfscan; // has qrscanning for fee payment check
  bool justlist; //just listing no order service needed
  bool hasrent; //rent
  bool hassec; //security
  bool hasfeemanagement; // require feemanagement

  bool requirepaymentaptreg;
  bool onlyallowedregisteredecom;
  bool requirepaymentecom;
  bool requirepaymentapt;
  bool hasexternalmanagedtrips; //are some trips managed by 3rd parties
  bool hasadhoctrips; //do you operate like uber
  bool
      requirecutomerregistration; //do you want to update customer about trip information
  bool requirepayment;
  bool requireticketing;
  bool onlinetripbooking;

  String aptcategory;
  List<String> myclusterip;
  bool doinventorymanagement;

  bool mainatainenceservicerequest;
  bool hassecurity;

  List<String> getRoles() {
    List<String> mrolelist;
    mrolelist.add('MANAGER');
    mrolelist.add('STAFF');
    if (hasapt) mrolelist.add('APPOINTMENT_MANAGER');
    if (hasecom) mrolelist.add('ORDER_MANAGER');
    if (hastrip) {
      mrolelist.add('TRIP_MANAGER');
      mrolelist.add('TRIP_USER');
    }
    if (hasregistration) {
      mrolelist.add('INSTRUCTOR_MANAGER');
      mrolelist.add('INSTRUCTOR');
    }
    if (hassec) mrolelist.add('SECURITY');

    return getRoles();
  }

  ServiceModel({
    @required this.timeInterval,
    @required this.serviceType,
    @required this.version,
    @required this.createdBy,
    @required this.serviceID,
    @required this.roles,
    @required this.channel,
    @required this.address,
    @required this.startDate,
    @required this.photo1,
    @required this.endDate,
    @required this.email,
    @required this.category,
    @required this.serverSideTimeStamp,
    @required this.longitude,
    @required this.latitude,
    @required this.zipCode,
    @required this.state,
    @required this.town,
    @required this.associatedComplexId,
    @required this.associatedComplexName,
    @required this.associatedComplexNumber,
    @required this.biography,
    @required this.extraCost,
    @required this.geoHash,
    @required this.idRunningNumber,
    @required this.independentComplex,
    @required this.languages,
    @required this.lastUpdateTime,
    @required this.phone,
    @required this.serviceOffered,
    @required this.pointPlacesRunningNumber,
    @required this.providePickup,
    @required this.providerDelivery,
    @required this.rangeInKm,
    @required this.rating1Count,
    @required this.rating2Count,
    @required this.rating3Count,
    @required this.rating4Count,
    @required this.rating5Count,
    @required this.tFri,
    @required this.tMon,
    @required this.tSat,
    @required this.tSun,
    @required this.tThu,
    @required this.tTue,
    @required this.tWed,
    @required this.requirePosUpdate,
    @required this.routerRunningNumber,
    @required this.serviceName,
    @required this.serviceTypes,
    @required this.tripIdRunningNumber,
    @required this.vehicleRunningNumber,
    @required this.website,
    @required this.subscriptions,
    @required this.hasapt,
    @required this.hasecom,
    @required this.hastrip,
    @required this.hasregistration,
    @required this.apttype,
    @required this.justlisting,
    @required this.subdis,
    @required this.dis,
    @required this.hasrapt,
    @required this.hasqapt,
    @required this.hasvapt,
    @required this.aptpslots,
    @required this.hasfscan,
    @required this.justlist,
    @required this.hasrent,
    @required this.hassec,
    @required this.onlyallowedregisteredecom,
    @required this.requirepaymentecom,
    @required this.doinventorymanagement,
    @required this.hasfeemanagement,
    @required this.requirepaymentapt,
    @required this.hasexternalmanagedtrips,
    @required this.hasadhoctrips,
    @required this.requirecutomerregistration,
    @required this.requirepayment,
    @required this.requireticketing,
    @required this.onlinetripbooking,
    @required this.mainatainenceservicerequest,
    @required this.hassecurity,
    @required this.requirepaymentaptreg,
  });

  LimitedServiceModel getLimitedServiceModel() {
    LimitedServiceModel lsm;
    return lsm;
  }

  @override
  List<Object> get props => [
        serviceID,
        timeInterval,
        serviceTypes,
        version,
        channel,
        address,
        startDate,
        createdBy,
        photo1,
        endDate,
        email,
        category,
        serverSideTimeStamp,
        longitude,
        latitude,
        zipCode,
        state,
        town,
        phone,
        serviceOffered,
        associatedComplexId,
        associatedComplexName,
        associatedComplexNumber,
        biography,
        extraCost,
        geoHash,
        idRunningNumber,
        independentComplex,
        languages,
        lastUpdateTime,
        pointPlacesRunningNumber,
        providePickup,
        providerDelivery,
        rangeInKm,
        rating1Count,
        rating2Count,
        rating3Count,
        rating4Count,
        rating5Count,
        requirePosUpdate,
        routerRunningNumber,
        serviceName,
        serviceType,
        tripIdRunningNumber,
        vehicleRunningNumber,
        website,
        tFri,
        tMon,
        tSat,
        tSun,
        tThu,
        tTue,
        tWed,
        subscriptions,
        hasapt, // has appointment
        hasecom,
        hastrip,
        hasregistration,
        apttype,
        justlisting,
        subdis,
        dis,
        hasrapt,
        hasqapt,
        hasvapt,
        aptpslots,
        mainatainenceservicerequest,
        hassecurity,
        requirepaymentaptreg,
      ];

  ServiceModel copyWith({
    num timeInterval,
    String serviceID,
    String address,
    String associatedComplexId,
    String associatedComplexName,
    String associatedComplexNumber,
    String biography,
    String category,
    List<String> channel,
    String email,
    DateTime endDate,
    num extraCost,
    String geoHash,
    num idRunningNumber,
    bool independentComplex,
    List<String> languages,
    List<String> phone,
    List<String> serviceOffered,
    num lastUpdateTime,
    num latitude,
    num longitude,
    String photo1,
    num pointPlacesRunningNumber,
    bool providePickup,
    bool providerDelivery,
    num rangeInKm,
    num rating1Count,
    num rating2Count,
    num rating3Count,
    num rating4Count,
    num rating5Count,
    bool requirePosUpdate,
    num routerRunningNumber,
    Timestamp serverSideTimeStamp,
    String serviceName,
    List<String> serviceType,
    DateTime startDate,
    String state,
    String town,
    num tripIdRunningNumber,
    num vehicleRunningNumber,
    num version,
    String website,
    num zipCode,
    String createdBy,
    Map tFri,
    Map tMon,
    Map tSat,
    Map tSun,
    Map tThu,
    Map tTue,
    Map tWed,
    Map subscriptions,
    bool hasapt,
    bool hasecom,
    bool hastrip,
    bool hasregistration,
    String apttype,
    bool justlisting,
    String subdis,
    String dis,
    bool hasrapt,
    bool hasqapt,
    bool hasvapt,
    int aptpslots,
    bool hasfscan,
    bool justlist,
    bool hasrent,
    bool hassec,
    bool onlyallowedregisteredecom,
    bool requirepaymentecom,
    bool doinventorymanagement,
    bool hasfeemanagement,
    bool requirepaymentapt,
    bool hasexternalmanagedtrips,
    bool hasadhoctrips,
    bool requirecutomerregistration,
    bool requirepayment,
    bool requireticketing,
    bool onlinetripbooking,
    bool mainatainenceservicerequest,
    bool hassecurity,
    bool requirepaymentaptreg,
  }) {
    return ServiceModel(
      serviceID: serviceID ?? this.serviceID,
      timeInterval: timeInterval ?? this.timeInterval,
      address: address ?? this.address,
      associatedComplexId: associatedComplexId ?? this.associatedComplexId,
      associatedComplexName:
          associatedComplexName ?? this.associatedComplexName,
      associatedComplexNumber:
          associatedComplexNumber ?? this.associatedComplexNumber,
      createdBy: createdBy ?? this.createdBy,
      biography: biography ?? this.biography,
      category: category ?? this.category,
      channel: channel ?? this.channel,
      email: email ?? this.email,
      endDate: endDate ?? this.endDate,
      extraCost: extraCost ?? this.extraCost,
      geoHash: geoHash ?? this.geoHash,
      idRunningNumber: idRunningNumber ?? this.idRunningNumber,
      independentComplex: independentComplex ?? this.independentComplex,
      languages: languages ?? this.languages,
      lastUpdateTime: lastUpdateTime ?? this.lastUpdateTime,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      photo1: photo1 ?? this.photo1,
      pointPlacesRunningNumber:
          pointPlacesRunningNumber ?? this.pointPlacesRunningNumber,
      providePickup: providePickup ?? this.providePickup,
      providerDelivery: providerDelivery ?? this.providerDelivery,
      rangeInKm: rangeInKm ?? this.rangeInKm,
      rating1Count: rating1Count ?? this.rating1Count,
      rating2Count: rating2Count ?? this.rating2Count,
      rating3Count: rating3Count ?? this.rating3Count,
      rating4Count: rating4Count ?? this.rating4Count,
      rating5Count: rating5Count ?? this.rating5Count,
      phone: phone ?? this.phone,
      serviceOffered: serviceOffered ?? this.serviceOffered,
      requirePosUpdate: requirePosUpdate ?? this.requirePosUpdate,
      routerRunningNumber: routerRunningNumber ?? this.routerRunningNumber,
      serverSideTimeStamp: serverSideTimeStamp ?? this.serverSideTimeStamp,
      serviceName: serviceName ?? this.serviceName,
      serviceType: serviceType ?? this.serviceType,
      startDate: startDate ?? this.startDate,
      state: state ?? this.state,
      town: town ?? this.town,
      tripIdRunningNumber: tripIdRunningNumber ?? this.tripIdRunningNumber,
      vehicleRunningNumber: vehicleRunningNumber ?? this.vehicleRunningNumber,
      version: version ?? this.version,
      website: website ?? this.website,
      zipCode: zipCode ?? this.zipCode,
      tFri: tFri ?? this.tFri,
      tMon: tMon ?? this.tMon,
      tSat: tSat ?? this.tSat,
      tSun: tSun ?? this.tSun,
      tThu: tThu ?? this.tThu,
      tTue: tTue ?? this.tTue,
      tWed: tWed ?? this.tWed,
      subscriptions: subscriptions ?? this.subscriptions,
      hasapt: hasapt ?? this.hasapt,
      hasecom: hasecom ?? this.hasecom,
      hastrip: hastrip ?? this.hastrip,
      hasregistration: hasregistration ?? this.hasregistration,
      apttype: apttype ?? this.apttype,
      justlisting: justlisting ?? this.justlisting,
      subdis: subdis ?? this.subdis,
      dis: dis ?? this.dis,
      hasrapt: hasrapt ?? this.hasrapt,
      hasqapt: hasqapt ?? this.hasqapt,
      hasvapt: hasvapt ?? this.hasvapt,
      aptpslots: aptpslots ?? this.aptpslots,
      hasfscan: hasfscan ?? this.hasfscan,
      justlist: justlist ?? this.justlist,
      hasrent: hasrent ?? this.hasrent,
      hassec: hassec ?? this.hassec,
      onlyallowedregisteredecom:
          onlyallowedregisteredecom ?? this.onlyallowedregisteredecom,
      requirepaymentecom: requirepaymentecom ?? this.requirepaymentecom,
      doinventorymanagement:
          doinventorymanagement ?? this.doinventorymanagement,
      hasfeemanagement: hasfeemanagement ?? this.hasfeemanagement,
      requirepaymentapt: requirepaymentapt ?? this.requirepaymentapt,
      hasexternalmanagedtrips:
          hasexternalmanagedtrips ?? this.hasexternalmanagedtrips,
      hasadhoctrips: hasadhoctrips ?? this.hasadhoctrips,
      requirecutomerregistration:
          requirecutomerregistration ?? this.requirecutomerregistration,
      requirepayment: requirepayment ?? this.requirepayment,
      requireticketing: requireticketing ?? this.requireticketing,
      onlinetripbooking: onlinetripbooking ?? this.onlinetripbooking,
      mainatainenceservicerequest:
          mainatainenceservicerequest ?? this.mainatainenceservicerequest,
      hassecurity: hassecurity ?? this.hassecurity,
      requirepaymentaptreg: requirepaymentaptreg ?? this.requirepaymentaptreg,
      roles: roles ?? this.roles,
      serviceTypes: serviceTypes ?? this.serviceTypes,
    );
  }

  ServiceModel.fromJson(
    Map<String, dynamic> json,
    List<String> userRoles,
    String serviceID,
  ) {
    this.serviceID = serviceID;
    if (json['servicetype'] != null) {
      List<ServiceType> serviceTypes;
      json['servicetype'].forEach((type) {
        if (type == 'SCHOOL') {
          serviceTypes.add(ServiceType.School);
        } else if (type == 'TRIP') {
          serviceTypes.add(ServiceType.Trip);
        } else if (type == 'SHOP') {
          serviceTypes.add(ServiceType.Shop);
        }
      });
    } else {
      serviceTypes = [];
    }
    if (userRoles != null) {
      List<EntityRoles> roles;
      userRoles.forEach((role) {
        if (role == 'staff') {
          roles.add(EntityRoles.Staff);
        } else if (role == 'manager') {
          roles.add(EntityRoles.Manager);
        } else if (role == 'instructor') {
          roles.add(EntityRoles.Instructor);
        } else if (role == 'instructionmanager') {
          roles.add(EntityRoles.InstructionManager);
        } else if (role == 'feeManager') {
          roles.add(EntityRoles.FeeManager);
        } else if (role == 'security') {
          roles.add(EntityRoles.Security);
        }
      });
    } else {
      roles = [];
    }
    if (json['servicetype'] != null) {
      List<String> serviceType;
      json['servicetype'].forEach((v) {
        serviceType.add(v);
      });
    } else {
      serviceType = [];
    }

    if (json['channels'] != null) {
      List<String> channel;
      json['channels'].forEach((v) {
        channel.add(v);
      });
    } else {
      channel = [];
    }
    if (json['languages'] != null) {
      List<String> languages;
      json['languages'].forEach((v) {
        languages.add(v);
      });
    } else {
      languages = [];
    }
    if (json['phone'] != null) {
      List<String> phone;
      json['phone'].forEach((v) {
        phone.add(v.toString());
      });
    } else {
      phone = [];
    }
    if (json['serviceoffered'] != null) {
      List<String> serviceOffered;
      json['serviceoffered'].forEach((v) {
        serviceOffered.add(v);
      });
    } else {
      serviceOffered = [];
    }
    createdBy = json['createdby'];
    timeInterval = json['TimeInterval'];
    address = json['address'];
    associatedComplexId = json['associatedcomplexid'];
    associatedComplexName = json['associatedcomplexname'];
    associatedComplexNumber = json['associatedunitnumber'];
    biography = json['biography'];
    category = json['category'];
    email = json['email'];
    endDate = json['enddate'] is int
        ? CommonUIHandler.toDate(timestamp: json['enddate'])
        : DateTime.now();
    extraCost = json['extracost'];
    geoHash = json['geohash'].toString();
    idRunningNumber = json['idrunningnumber'];
    independentComplex = json['independentcomplex'];
    lastUpdateTime = json['lastupdatetime'];
    //Map loc1 = json['loc'];
    //longitude= loc1 !=null? loc1['geopoint']['longitude']:0;
    //latitude= loc1 !=null? loc1['geopoint']['latitude']:0;
    //geoHash=loc1 !=null? loc1['geohash']['latitude']:"";
    latitude = json['latitude'];

    longitude = json['longitude'];
    if (json['photo1'] is String) {
      photo1 = json['photo1'];
    } else {
      try {
        photo1 = String.fromCharCodes(json['photo1'].bytes);
      } catch (e) {}
    }
    //photo1 = String.fromCharCodes(json['photo1'].bytes);
    // photo1 = null;
    pointPlacesRunningNumber = json['pointplacesrunningnumber'];
    providePickup = json['providepickup'];
    providerDelivery = json['providerdelivery'];
    rangeInKm = json['rangeinkm'];
    rating1Count = json['rating1count'];
    rating2Count = json['rating2count'];
    rating3Count = json['rating3count'];
    rating4Count = json['rating4count'];
    rating5Count = json['rating5count'];
    requirePosUpdate = json['requirposupdate'];
    routerRunningNumber = json['routerunningnumber'];
    serverSideTimeStamp = json['serversidetimestamp'];
    serviceName = json['servicename'];
    startDate = json['startdate'] is int
        ? CommonUIHandler.toDate(timestamp: json['startdate'])
        : DateTime.now();
    state = json['state'];
    town = json['town'];
    tripIdRunningNumber = json['tripidrunningnumber'];
    vehicleRunningNumber = json['vehicleidrunningnumber'];
    version = json['version'];
    website = json['website'];
    zipCode = json['zipCode'];
    tFri = json['t_fri'];
    tMon = json['t_mon'];
    tSat = json['t_sat'];
    tSun = json['t_sun'];
    tThu = json['t_thu'];
    tTue = json['t_tue'];
    tWed = json['t_wed'];
    subscriptions = json['subscriptions'];
    hasapt = json["hasapt"] == null ? false : json["hasapt"];
    hasecom = json["hasecom"] == null ? false : json["hasecom"];
    hastrip = json["hastrip"] == null ? false : json["hastrip"];
    hasregistration =
        json["hasregistration"] == null ? false : json["hasregistration"];
    apttype = json["apttype"] == null ? "" : json["apttype"];
    justlisting = json["justlisting"] == null ? false : json["justlisting"];
    subdis = json["subdis"] == null ? "" : json["subdis"];
    dis = json["dis"] == null ? "" : json["dis"];
    hasrapt = json["hasrapt"] == null ? false : json["hasrapt"];
    hasqapt = json["hasqapt"] == null ? false : json["hasqapt"];
    hasvapt = json["hasvapt"] == null ? false : json["hasvapt"];
    aptpslots = json["aptpslots"] == null ? null : json["aptpslots"];
    hasfscan = json["hasfscan"] == null ? false : json["hasfscan"];
    justlist = json["justlist"] == null ? false : json["justlist"];
    hasrent = json["hasrent"] == null ? false : json["hasrent"];
    hassec = json["hassec"] == null ? false : json["hassec"];

    onlyallowedregisteredecom = json['onlyallowedregisteredecom'] ?? false;
    requirepaymentecom = json['requirepaymentecom'] ?? false;
    doinventorymanagement = json['doinventorymanagement'] ?? false;
    hasfeemanagement = json['hasfeemanagement'] ?? false;
    requirepaymentapt = json['requirepaymentapt'] ?? false;
    hasexternalmanagedtrips = json['hasexternalmanagedtrips'] ?? false;
    hasadhoctrips = json['hasadhoctrips'] ?? false;
    requirecutomerregistration = json['requirecutomerregistration'] ?? false;
    requirepayment = json['requirepayment'] ?? false;
    requireticketing = json['requireticketing'] ?? false;
    onlinetripbooking = json['onlinetripbooking'] ?? false;
    mainatainenceservicerequest = json['mainatainenceservicerequest'] ?? false;
    hassecurity = json['hassecurity'] ?? false;
    requirepaymentaptreg = json['requirepaymentaptreg'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = Map<String, dynamic>();

    List<String> mlanguage = [];
    List<String> mphone = [];
    List<String> mserviceoffered = [];
    List<String> mservicetypes = [];
    //Never send channel to db

    if (this.serviceType != null) {
      this.serviceType.forEach((element) {
        mservicetypes.add(element);
      });
    }

    if (this.languages != null) {
      this.languages.forEach((element) {
        mlanguage.add(element);
      });
    }
    if (this.phone != null) {
      this.phone.forEach((element) {
        mphone.add(element);
      });
    }
    if (this.serviceOffered != null) {
      this.serviceOffered.forEach((element) {
        mserviceoffered.add(element);
      });
    }

    json['serviceoffered'] = mserviceoffered;
    json['phone'] = mphone;
    json['servicetype'] = mservicetypes;
    json['languages'] = mlanguage;
    json['TimeInterval'] = this.timeInterval;
    json['address'] = this.address;
    json['associatedcomplexid'] = this.associatedComplexId;
    json['associatedcomplexname'] = this.associatedComplexName;
    json['associatedunitnumber'] = this.associatedComplexNumber;
    json['biography'] = this.biography;
    json['category'] = this.category;
    json['email'] = this.email;
    json['createdby'] = this.createdBy;
    json['enddate'] = CommonUIHandler.toTimeStamp(dateTime: this.endDate);
    json['extracost'] = this.extraCost;
    //json['geohash'] = this.geoHash;
    json['idrunningnumber'] = this.idRunningNumber;
    json['independentcomplex'] = this.independentComplex;
    json['lastupdatetime'] = this.lastUpdateTime;
    // GeoFirePoint mdata = GeoFirePoint(latitude, longitude);
    // json['loc'] = mdata.data;

    json['latitude'] = this.latitude;
    json['longitude'] = this.longitude;
    // json['geohash'] = mdata.hash;
    json['photo1'] = this.photo1;
    json['pointplacesrunningnumber'] = this.pointPlacesRunningNumber;
    json['providepickup'] = this.providePickup;
    json['providerdelivery'] = this.providerDelivery;
    json['rangeinkm'] = this.rangeInKm;
    json['rating1count'] = this.rating1Count;
    json['rating2count'] = this.rating2Count;
    json['rating3count'] = this.rating3Count;
    json['rating4count'] = this.rating4Count;
    json['rating5count'] = this.rating5Count;
    json['requirposupdate'] = this.requirePosUpdate;
    json['routerunningnumber'] = this.routerRunningNumber;
    json['servicename'] = this.serviceName;
    json['servicetype'] = this.serviceType;
    json['startdate'] = CommonUIHandler.toTimeStamp(dateTime: this.startDate);
    json['state'] = this.state;
    json['town'] = this.town;
    json['tripidrunningnumber'] = this.tripIdRunningNumber;
    json['vehicleidrunningnumber'] = this.vehicleRunningNumber;
    json['version'] = this.version;
    json['website'] = this.website;
    json['zipCode'] = this.zipCode;
    json['t_fri'] = tFri;
    json['t_mon'] = tMon;
    json['t_sat'] = tSat;
    json['t_sun'] = tSun;
    json['t_thu'] = tThu;
    json['t_tue'] = tTue;
    json['t_wed'] = tWed;
    json['subscriptions'] = subscriptions;
    json["hasapt"] = hasapt;
    json["hasecom"] = hasecom;
    json["hastrip"] = hastrip;
    json["hasregistration"] = hasregistration;
    json["apttype"] = apttype;
    json["justlisting"] = justlisting;
    json["subdis"] = subdis;
    json["dis"] = dis;
    json["hasrapt"] = hasrapt;
    json["hasqapt"] = hasqapt;
    json["hasvapt"] = hasvapt;
    json["aptpslots"] = aptpslots;
    json["hasfscan"] = hasfscan;
    json["justlist"] = justlist;
    json["hasrent"] = hasrent;
    json["hassec"] = hassec;
    json["requirepaymentaptreg"] = requirepaymentaptreg;
    json["onlyallowedregisteredecom"] = onlyallowedregisteredecom;
    json["requirepaymentecom"] = requirepaymentecom;
    json["requirepaymentapt"] = requirepaymentapt;
    json["hasexternalmanagedtrips"] = hasexternalmanagedtrips;
    json["hasadhoctrips"] = hasadhoctrips;
    json["requirecutomerregistration"] = requirecutomerregistration;
    json["requirepayment"] = requirepayment;
    json["requireticketing"] = requireticketing;
    json["onlinetripbooking"] = onlinetripbooking;

    json['onlyallowedregisteredecom'] = onlyallowedregisteredecom;
    json['requirepaymentecom'] = requirepaymentecom;
    json['doinventorymanagement'] = doinventorymanagement;
    json['hasfeemanagement'] = hasfeemanagement;
    json['requirepaymentapt'] = requirepaymentapt;
    json['hasexternalmanagedtrips'] = hasexternalmanagedtrips;
    json['hasadhoctrips'] = hasadhoctrips;
    json['requirecutomerregistration'] = requirecutomerregistration;
    json['requirepayment'] = requirepayment;
    json['requireticketing'] = requireticketing;
    json['onlinetripbooking'] = onlinetripbooking;
    json['mainatainenceservicerequest'] = mainatainenceservicerequest;
    json['hassecurity'] = hassecurity;
    json['uid'] = createdBy;
    json['requirepaymentaptreg'] = requirepaymentaptreg;
    return json;
  }
}
