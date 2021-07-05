import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/data/models/response/user_response/user_entity.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/utils/utility.dart';

enum ServiceType { School, Trip, Shop }

class ServiceModel {
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

  bool isMobile;
  bool locationShared;
  bool hasStudentUserTransport;
  bool hasCheckInShop;
  bool hasStaffServices;

  ///wither has appointment or not
  bool hasApt;
  bool hasRapt; // has regular appointment
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
    List<String> mrolelist = [];
    mrolelist.add('MANAGER');
    mrolelist.add('STAFF');
    if (hasApt) mrolelist.add('APPOINTMENT_MANAGER');
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
    this.timeInterval,
    this.serviceType,
    this.version,
    this.createdBy,
    this.serviceID,
    this.roles,
    this.channel,
    this.address,
    this.startDate,
    this.photo1,
    this.endDate,
    this.email,
    this.category,
    this.serverSideTimeStamp,
    this.longitude,
    this.latitude,
    this.zipCode,
    this.state,
    this.town,
    this.associatedComplexId,
    this.associatedComplexName,
    this.associatedComplexNumber,
    this.biography,
    this.extraCost,
    this.geoHash,
    this.idRunningNumber,
    this.independentComplex,
    this.languages,
    this.lastUpdateTime,
    this.phone,
    this.serviceOffered,
    this.pointPlacesRunningNumber,
    this.providePickup,
    this.providerDelivery,
    this.rangeInKm,
    this.rating1Count,
    this.rating2Count,
    this.rating3Count,
    this.rating4Count,
    this.rating5Count,
    this.tFri,
    this.tMon,
    this.tSat,
    this.tSun,
    this.tThu,
    this.tTue,
    this.tWed,
    this.requirePosUpdate,
    this.routerRunningNumber,
    this.serviceName,
    this.serviceTypes,
    this.tripIdRunningNumber,
    this.vehicleRunningNumber,
    this.website,
    this.subscriptions,
    this.hasApt,
    this.hasecom,
    this.hastrip,
    this.hasregistration,
    this.apttype,
    this.justlisting,
    this.subdis,
    this.dis,
    this.hasRapt,
    this.isMobile,
    this.locationShared,
    this.hasStudentUserTransport,
    this.hasCheckInShop,
    this.hasStaffServices,
    
    this.hasqapt,
    this.hasvapt,
    this.aptpslots,
    this.hasfscan,
    this.justlist,
    this.hasrent,
    this.hassec,
    this.onlyallowedregisteredecom,
    this.requirepaymentecom,
    this.doinventorymanagement,
    this.hasfeemanagement,
    this.requirepaymentapt,
    this.hasexternalmanagedtrips,
    this.hasadhoctrips,
    this.requirecutomerregistration,
    this.requirepayment,
    this.requireticketing,
    this.onlinetripbooking,
    this.mainatainenceservicerequest,
    this.hassecurity,
    this.requirepaymentaptreg,
  });

  LimitedServiceModel getLimitedServiceModel() {
    LimitedServiceModel lsm;
    return null;
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
        hasApt, // has appointment
        hasecom,
        hastrip,
        hasregistration,
        apttype,
        justlisting,
        subdis,
        dis,
        hasRapt,
        isMobile,
        locationShared,
        hasStudentUserTransport,
        hasCheckInShop,
        hasStaffServices,
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
    Map t_fri,
    Map t_mon,
    Map t_sat,
    Map t_sun,
    Map t_thu,
    Map t_tue,
    Map t_wed,
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
    bool isMobile,
    bool locationShared,
    bool hasStudentUserTransport,
    bool hasCheckInShop,
    bool hasStaffServices,
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
    List<ServiceType> serviceTypes,
    List<EntityRoles> roles,
  }) {
    return ServiceModel(
      roles: roles ?? this.roles,
      serviceTypes: serviceTypes ?? this.serviceTypes,
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
      tFri: t_fri ?? this.tFri,
      tMon: t_mon ?? this.tMon,
      tSat: t_sat ?? this.tSat,
      tSun: t_sun ?? this.tSun,
      tThu: t_thu ?? this.tThu,
      tTue: t_tue ?? this.tTue,
      tWed: t_wed ?? this.tWed,
      subscriptions: subscriptions ?? this.subscriptions,
      hasApt: hasapt ?? this.hasApt,
      hasecom: hasecom ?? this.hasecom,
      hastrip: hastrip ?? this.hastrip,
      hasregistration: hasregistration ?? this.hasregistration,
      apttype: apttype ?? this.apttype,
      justlisting: justlisting ?? this.justlisting,
      subdis: subdis ?? this.subdis,
      dis: dis ?? this.dis,
      hasRapt: hasrapt ?? this.hasRapt,
      isMobile: isMobile ?? this.isMobile,
      locationShared: locationShared ?? this.locationShared,
      hasStudentUserTransport:
          hasStudentUserTransport ?? this.hasStudentUserTransport,
      hasCheckInShop: hasCheckInShop ?? this.hasCheckInShop,
      hasStaffServices: hasStaffServices ?? this.hasStaffServices,
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
    );
  }

  ServiceModel.fromJson(
    Map<String, dynamic> json,
    List<String> userRoles,
    String serviceID,
  ) {
    this.serviceID = serviceID;
    if (json['servicetype'] != null) {
      serviceTypes = <ServiceType>[];
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
      roles = [];
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
      serviceType = [];
      json['servicetype'].forEach((v) {
        serviceType.add(v);
      });
    } else {
      serviceType = [];
    }

    if (json['channels'] != null) {
      channel = [];
      json['channels'].forEach((v) {
        channel.add(v);
      });
    } else {
      channel = [];
    }
    if (json['languages'] != null) {
      languages = [];
      json['languages'].forEach((v) {
        languages.add(v);
      });
    } else {
      languages = [];
    }
    if (json['phone'] != null) {
      phone = [];
      json['phone'].forEach((v) {
        phone.add(v.toString());
      });
    } else {
      phone = [];
    }
    if (json['serviceoffered'] != null) {
      serviceOffered = [];
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
        ? Utility.toDate(timestamp: json['enddate'])
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
        ? Utility.toDate(timestamp: json['startdate'])
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
    hasApt = json["hasapt"] == null ? false : json["hasapt"];
    hasecom = json["hasecom"] == null ? false : json["hasecom"];
    hastrip = json["hastrip"] == null ? false : json["hastrip"];
    hasregistration =
        json["hasregistration"] == null ? false : json["hasregistration"];
    apttype = json["apttype"] == null ? "" : json["apttype"];
    justlisting = json["justlisting"] == null ? false : json["justlisting"];
    subdis = json["subdis"] == null ? "" : json["subdis"];
    dis = json["dis"] == null ? "" : json["dis"];
    hasRapt = json["hasrapt"] == null ? false : json["hasrapt"];
    isMobile = json["isMobile"] == null ? false : json["isMobile"];
    locationShared =
        json["locationShared"] == null ? false : json["locationShared"];
    hasStudentUserTransport = json["hasStudentUserTransport"] == null
        ? false
        : json["hasStudentUserTransport"];
    hasCheckInShop =
        json["hasCheckInShop"] == null ? false : json["hasCheckInShop"];
    hasStaffServices =
        json["hasStaffServices"] == null ? false : json["hasStaffServices"];

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

    List<String> mchannel = [];
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
    json['enddate'] = Utility.toTimeStamp(dateTime: this.endDate);
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
    json['startdate'] = Utility.toTimeStamp(dateTime: this.startDate);
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
    json["hasapt"] = hasApt;
    json["hasecom"] = hasecom;
    json["hastrip"] = hastrip;
    json["hasregistration"] = hasregistration;
    json["apttype"] = apttype;
    json["justlisting"] = justlisting;
    json["subdis"] = subdis;
    json["dis"] = dis;
    json["hasrapt"] = hasRapt;
    json["isMobile"] = isMobile;
    json["locationShared"] = locationShared;
    json["hasStudentUserTransport"] = hasStudentUserTransport;
    json["hasCheckInShop"] = hasCheckInShop;
    json["hasStaffServices"] = hasStaffServices;
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
