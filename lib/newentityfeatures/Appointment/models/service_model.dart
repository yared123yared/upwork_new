//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:equatable/equatable.dart';
//
//import 'entity_roles.dart';
//
//enum ServiceType{School,Trip,Shop}
//
//class ServiceModel extends Equatable {
//  num timeInterval;
//  String address;
//  String associatedComplexId;
//  String associatedComplexName;
//  String associatedComplexNumber;
//  String biography;
//  String category;
//  List<String> channel;
//  String email;
//  String endDate;
//  num extraCost;
//  num geoHash;
//  num idRunningNumber;
//  bool independentComplex;
//  List<String> languages;
//  List<int> phone;
//  List<String> serviceOffered;
//  num lastUpdateTime;
//  num latitude;
//  num longitude;
//  String photo1;
//  num pointPlacesRunningNumber;
//  bool providePickup;
//  bool providerDelivery;
//  num rangeInKm;
//  num rating1Count;
//  num rating2Count;
//  num rating3Count;
//  num rating4Count;
//  num rating5Count;
//  bool requirePosUpdate;
//  num routerRunningNumber;
//  Timestamp serverSideTimeStamp;
//  String serviceName;
//  List<String> serviceType;
//  String startDate;
//  String state;
//  String town;
//  num tripIdRunningNumber;
//  num vehicleRunningNumber;
//  num version;
//  String website;
//  num zipCode;
//  List<EntityRoles> roles;
//  List<ServiceType> serviceTypes;
//  String serviceID;
//  ServiceModel(
//      {this.timeInterval,
//        this.serviceType,
//        this.version,
//        this.serviceID,
//        this.roles,
//        this.channel,
//        this.address,
//        this.startDate,
//        this.photo1,
//        this.endDate,
//        this.email,
//        this.category,
//        this.serverSideTimeStamp,
//        this.longitude,
//        this.latitude,
//        this.zipCode,
//        this.state,
//        this.town,
//        this.associatedComplexId,
//        this.associatedComplexName,
//        this.associatedComplexNumber,
//        this.biography,
//        this.extraCost,
//        this.geoHash,
//        this.idRunningNumber,
//        this.independentComplex,
//        this.languages,
//        this.lastUpdateTime,
//        this.phone,
//        this.serviceOffered,
//        this.pointPlacesRunningNumber,
//        this.providePickup,
//        this.providerDelivery,
//        this.rangeInKm,
//        this.rating1Count,
//        this.rating2Count,
//        this.rating3Count,
//        this.rating4Count,
//        this.rating5Count,
//        this.requirePosUpdate,
//        this.routerRunningNumber,
//        this.serviceName,
//        this.serviceTypes,
//        this.tripIdRunningNumber,
//        this.vehicleRunningNumber,
//        this.website});
//
//  @override
//  List<Object> get props => [
//    timeInterval,
//    serviceTypes,
//    version,
//    channel,
//    address,
//    startDate,
//    photo1,
//    endDate,
//    email,
//    category,
//    serverSideTimeStamp,
//    longitude,
//    latitude,
//    zipCode,
//    state,
//    town,
//    phone,
//    serviceOffered,
//    associatedComplexId,
//    associatedComplexName,
//    associatedComplexNumber,
//    biography,
//    extraCost,
//    geoHash,
//    idRunningNumber,
//    independentComplex,
//    languages,
//    lastUpdateTime,
//    pointPlacesRunningNumber,
//    providePickup,
//    providerDelivery,
//    rangeInKm,
//    rating1Count,
//    rating2Count,
//    rating3Count,
//    rating4Count,
//    rating5Count,
//    requirePosUpdate,
//    routerRunningNumber,
//    serviceName,
//    serviceType,
//    tripIdRunningNumber,
//    vehicleRunningNumber,
//    website
//  ];
//
//  ServiceModel copyWith({
//    num timeInterval,
//    String address,
//    String associatedComplexId,
//    String associatedComplexName,
//    String associatedComplexNumber,
//    String biography,
//    String category,
//    List<String> channel,
//    String email,
//    String endDate,
//    num extraCost,
//    num geoHash,
//    num idRunningNumber,
//    bool independentComplex,
//    List<String> languages,
//    List<String> phone,
//    List<String> serviceOffered,
//    num lastUpdateTime,
//    num latitude,
//    num longitude,
//    String photo1,
//    num pointPlacesRunningNumber,
//    bool providePickup,
//    bool providerDelivery,
//    num rangeInKm,
//    num rating1Count,
//    num rating2Count,
//    num rating3Count,
//    num rating4Count,
//    num rating5Count,
//    bool requirePosUpdate,
//    num routerRunningNumber,
//    Timestamp serverSideTimeStamp,
//    String serviceName,
//    String serviceType,
//    String startDate,
//    String state,
//    String town,
//    num tripIdRunningNumber,
//    num vehicleRunningNumber,
//    num version,
//    String website,
//    num zipCode,
//  }) {
//    return ServiceModel(
//      timeInterval: timeInterval ?? this.timeInterval,
//      address: address ?? this.address,
//      associatedComplexId: associatedComplexId ?? this.associatedComplexId,
//      associatedComplexName:
//      associatedComplexName ?? this.associatedComplexName,
//      associatedComplexNumber:
//      associatedComplexNumber ?? this.associatedComplexNumber,
//      biography: biography ?? this.biography,
//      category: category ?? this.category,
//      channel: channel ?? this.channel,
//      email: email ?? this.email,
//      endDate: endDate ?? this.endDate,
//      extraCost: extraCost ?? this.extraCost,
//      geoHash: geoHash ?? this.geoHash,
//      idRunningNumber: idRunningNumber ?? this.idRunningNumber,
//      independentComplex: independentComplex ?? this.independentComplex,
//      languages: languages ?? this.languages,
//      lastUpdateTime: lastUpdateTime ?? this.lastUpdateTime,
//      latitude: latitude ?? this.latitude,
//      longitude: longitude ?? this.longitude,
//      photo1: photo1 ?? this.photo1,
//      pointPlacesRunningNumber:
//      pointPlacesRunningNumber ?? this.pointPlacesRunningNumber,
//      providePickup: providePickup ?? this.providePickup,
//      providerDelivery: providerDelivery ?? this.providerDelivery,
//      rangeInKm: rangeInKm ?? this.rangeInKm,
//      rating1Count: rating1Count ?? this.rating1Count,
//      rating2Count: rating2Count ?? this.rating2Count,
//      rating3Count: rating3Count ?? this.rating3Count,
//      rating4Count: rating4Count ?? this.rating4Count,
//      rating5Count: rating5Count ?? this.rating5Count,
//      phone: phone ?? this.phone,
//      serviceOffered: serviceOffered ?? this.serviceOffered,
//      requirePosUpdate: requirePosUpdate ?? this.requirePosUpdate,
//      routerRunningNumber: routerRunningNumber ?? this.routerRunningNumber,
//      serverSideTimeStamp: serverSideTimeStamp ?? this.serverSideTimeStamp,
//      serviceName: serviceName ?? this.serviceName,
//      serviceType: serviceType ?? this.serviceType,
//      startDate: startDate ?? this.startDate,
//      state: state ?? this.state,
//      town: town ?? this.town,
//      tripIdRunningNumber: tripIdRunningNumber ?? this.tripIdRunningNumber,
//      vehicleRunningNumber: vehicleRunningNumber ?? this.vehicleRunningNumber,
//      version: version ?? this.version,
//      website: website ?? this.website,
//      zipCode: zipCode ?? this.zipCode,
//    );
//  }
//
//  ServiceModel.fromJson(Map<String, dynamic> json,List<String> userRoles,String serviceID) {
//    this.serviceID = serviceID;
//    if(json['servicetype'] != null){
//      serviceTypes = List<ServiceType>();
//      json['servicetype'].forEach((type) {
//        if(type == 'SCHOOL'){serviceTypes.add(ServiceType.School);}
//        else if(type == 'TRIP'){serviceTypes.add(ServiceType.Trip);}
//        else if(type == 'SHOP'){serviceTypes.add(ServiceType.Shop);}
//      });
//    }else{
//      serviceTypes = [];
//    }
//    if(userRoles != null){
//      roles = List<EntityRoles>();
//      userRoles.forEach((role) {
//        if(role == 'owner'){roles.add(EntityRoles.Owner);}
//        else if(role == 'resident'){roles.add(EntityRoles.Resident);}
//        else if(role == 'staff'){roles.add(EntityRoles.Staff);}
//        else if(role == 'manager'){roles.add(EntityRoles.Manager);}
//      });
//    }else{
//      roles = [];
//    }
//    if (json['servicetype'] != null) {
//      serviceType = List<String>();
//      json['servicetype'].forEach((v) {
//        serviceType.add(v);
//      });
//    } else {
//      serviceType = [];
//    }
//
//    if (json['channels'] != null) {
//      channel = List<String>();
//      json['channels'].forEach((v) {
//        channel.add(v);
//      });
//    } else {
//      channel = [];
//    }
//    if (json['languages'] != null) {
//      languages = List<String>();
//      json['languages'].forEach((v) {
//        languages.add(v);
//      });
//    } else {
//      languages = [];
//    }
//    if (json['phone'] != null) {
//      phone = List<int>();
//      json['phone'].forEach((v) {
//        phone.add(v);
//      });
//    } else {
//      phone = [];
//    }
//    if (json['serviceoffered'] != null) {
//      serviceOffered = List<String>();
//      json['serviceoffered'].forEach((v) {
//        serviceOffered.add(v);
//      });
//    } else {
//      serviceOffered = [];
//    }
//    timeInterval = json['TimeInterval'];
//    address = json['address'];
//    associatedComplexId = json['associatedcomplexid'];
//    associatedComplexName = json['associatedcomplexname'];
//    associatedComplexNumber = json['associatedunitnumber'];
//    biography = json['biography'];
//    category = json['category'];
//    email = json['email'];
//    endDate = json['enddate'];
//    extraCost = json['extracost'];
//    geoHash = json['geohash'];
//    idRunningNumber = json['idrunningnumber'];
//    independentComplex = json['independentcomplex'];
//    lastUpdateTime = json['lastupdatetime'];
//    latitude = json['latitude'];
//    longitude = json['longitude'];
//    photo1 = json['photo1'];
//    pointPlacesRunningNumber = json['pointplacesrunningnumber'];
//    providePickup = json['providepickup'];
//    providerDelivery = json['providerdelivery'];
//    rangeInKm = json['rangeinkm'];
//    rating1Count = json['rating1count'];
//    rating2Count = json['rating2count'];
//    rating3Count = json['rating3count'];
//    rating4Count = json['rating4count'];
//    rating5Count = json['rating5count'];
//    requirePosUpdate = json['requirposupdate'];
//    routerRunningNumber = json['routerunningnumber'];
//    serverSideTimeStamp = json['serversidetimestamp'];
//    serviceName = json['servicename'];
//    startDate = json['startdate'];
//    state = json['state'];
//    town = json['town'];
//    tripIdRunningNumber = json['tripidrunningnumber'];
//    vehicleRunningNumber = json['vehicleidrunningnumber'];
//    version = json['version'];
//    website = json['website'];
//    zipCode = json['zipCode'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> json = new Map<String, dynamic>();
//
//    List<String> channel = [];
//    List<String> language = [];
//    List<int> phone = [];
//    List<String> serviceOffered = [];
//
//    this.channel.forEach((element) {
//      channel.add(element);
//    });
//
//    this.languages.forEach((element) {
//      language.add(element);
//    });
//    this.phone.forEach((element) {
//      phone.add(element);
//    });
//    this.serviceOffered.forEach((element) {
//      serviceOffered.add(element);
//    });
//
//    json['TimeInterval'] = this.timeInterval;
//    json['address'] = this.address;
//    json['associatedcomplexid'] = this.associatedComplexId;
//    json['associatedcomplexname'] = this.associatedComplexName;
//    json['associatedunitnumber'] = this.associatedComplexNumber;
//    json['biography'] = this.biography;
//    json['category'] = this.category;
//    json['email'] = this.email;
//    json['enddate'] = this.endDate;
//    json['extracost'] = this.extraCost;
//    json['geohash'] = this.geoHash;
//    json['idrunningnumber'] = this.idRunningNumber;
//    json['independentcomplex'] = this.independentComplex;
//    json['lastupdatetime'] = this.lastUpdateTime;
//    json['latitude'] = this.latitude;
//    json['longitude'] = this.longitude;
//    json['photo1'] = this.photo1;
//    json['pointplacesrunningnumber'] = this.pointPlacesRunningNumber;
//    json['providepickup'] = this.providePickup;
//    json['providerdelivery'] = this.providerDelivery;
//    json['rangeinkm'] = this.rangeInKm;
//    json['rating1count'] = this.rating1Count;
//    json['rating2count'] = this.rating2Count;
//    json['rating3count'] = this.rating3Count;
//    json['rating4count'] = this.rating4Count;
//    json['rating5count'] = this.rating5Count;
//    json['requirposupdate'] = this.requirePosUpdate;
//    json['routerunningnumber'] = this.routerRunningNumber;
//    json['serversidetimestamp'] = this.serverSideTimeStamp;
//    json['servicename'] = this.serviceName;
//    json['servicetype'] = this.serviceType;
//    json['startdate'] = this.startDate;
//    json['state'] = this.state;
//    json['town'] = this.town;
//    json['tripidrunningnumber'] = this.tripIdRunningNumber;
//    json['vehicleidrunningnumber'] = this.vehicleRunningNumber;
//    json['version'] = this.version;
//    json['website'] = this.website;
//    json['zipCode'] = this.zipCode;
//
//    return json;
//  }
//}

// enum ServiceType { School, Trip, Shop }
