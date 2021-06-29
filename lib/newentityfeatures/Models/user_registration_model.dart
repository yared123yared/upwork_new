import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class UserRegistrationModel extends Equatable {
  num academicPercentage;
  String addressLine;
  num allocatedTransportCost;
  String allocatedTransportRoute;
  num applicableDiscount;
  bool bplStudent;
  String caste;
  String email;
  String appuserid;
  String classAttended;
  DateTime dateOfJoining;
  String dob;
  String feePlan;
  String feePlanPeriodType;
  String feePlanType;
  String guardian1AppUserId;
  String guardian1email;
  String guardian1name;
  String guardian1phone;
  String guardian1relation;
  String guardian2appUserId;
  String guardian2email;
  String guardian2name;
  String guardian2phone;
  String guardian2relation;
  String gender;
  String idCardNum;
  bool isAdult;
  String motherToungue;
  String name;
  String photo;
  String qrCode;
  String religion;
  String schoolAttended;
  Timestamp serverSideTimeStamp;
  String state;
  String town;
  String country;
  String tripId;
  num version;
  num zipCode;

  UserRegistrationModel({
    this.version,
    this.email,
    this.name,
    this.appuserid,
    this.idCardNum,
    this.serverSideTimeStamp,
    this.feePlan,
    this.feePlanType,
    this.academicPercentage,
    this.addressLine,
    this.allocatedTransportCost,
    this.allocatedTransportRoute,
    this.applicableDiscount,
    this.bplStudent,
    this.caste,
    this.classAttended,
    this.dateOfJoining,
    this.dob,
    this.feePlanPeriodType,
    this.gender,
    this.country,
    this.guardian1AppUserId,
    this.guardian1email,
    this.guardian1name,
    this.guardian1phone,
    this.guardian1relation,
    this.guardian2appUserId,
    this.guardian2email,
    this.guardian2name,
    this.guardian2phone,
    this.guardian2relation,
    this.isAdult,
    this.motherToungue,
    this.photo,
    this.qrCode,
    this.religion,
    this.schoolAttended,
    this.state,
    this.town,
    this.tripId,
    this.zipCode,
  })  : assert(guardian2phone == null || guardian2phone is String),
        assert(guardian2phone == null || guardian2phone is String);

  @override
  List<Object> get props => [
        academicPercentage,
        email,
        name,
        qrCode,
    appuserid,
        addressLine,
        allocatedTransportRoute,
        allocatedTransportCost,
        applicableDiscount,
        bplStudent,
        caste,
        classAttended,
        dateOfJoining,
        dob,
        country,
        feePlan,
        feePlanType,
        feePlanPeriodType,
        guardian2relation,
        guardian2phone,
        guardian2name,
        guardian2email,
        guardian2appUserId,
        guardian1relation,
        guardian1phone,
        guardian1name,
        guardian1email,
        guardian1AppUserId,
        gender,
        idCardNum,
        isAdult,
        motherToungue,
        name,
        photo,
        religion,
        schoolAttended,
        serverSideTimeStamp,
        state,
        town,
        tripId,
        version,
        zipCode,
      ];

  UserRegistrationModel copyWith({
    num academicPercentage,
    String addressLine,
    String email,
    String appuserid,
    num allocatedTransportCost,
    String allocatedTransportRoute,
    num applicableDiscount,
    bool bplStudent,
    String caste,
    String classAttended,
    DateTime dateOfJoining,
    String dob,
    String feePlan,
    String feePlanPeriodType,
    String feePlanType,
    String guardian1AppUserId,
    String guardian1email,
    String guardian1name,
    String guardian1phone,
    String guardian1relation,
    String guardian2appUserId,
    String guardian2email,
    String guardian2name,
    String guardian2phone,
    String guardian2relation,
    String gender,
    String idCardNum,
    bool isAdult,
    String motherToungue,
    String name,
    String photo,
    String qrCode,
    String religion,
    String schoolAttended,
    DateTime serverSideTimeStamp,
    String state,
    String town,
    String country,
    String tripId,
    num version,
    num zipCode,
  }) {
    return UserRegistrationModel(
      academicPercentage: academicPercentage ?? this.academicPercentage,
      name: name ?? this.name,
      appuserid: appuserid ?? this.appuserid,
      email: email ?? this.email,
      qrCode: qrCode ?? this.qrCode,
      addressLine: addressLine ?? this.addressLine,
      allocatedTransportCost:
          allocatedTransportCost ?? this.allocatedTransportCost,
      allocatedTransportRoute:
          allocatedTransportRoute ?? this.allocatedTransportRoute,
      applicableDiscount: applicableDiscount ?? this.applicableDiscount,
      bplStudent: bplStudent ?? this.bplStudent,
      caste: caste ?? this.caste,
      classAttended: classAttended ?? this.classAttended,
      dateOfJoining: dateOfJoining ?? this.dateOfJoining,
      dob: dob ?? this.dob,
      feePlan: feePlan ?? this.feePlan,
      feePlanPeriodType: feePlanPeriodType ?? this.feePlanPeriodType,
      feePlanType: feePlanType ?? this.feePlanType,
      guardian1AppUserId: guardian1AppUserId ?? this.guardian1AppUserId,
      guardian1email: guardian1email ?? this.guardian1email,
      guardian1name: guardian1name ?? this.guardian1name,
      guardian1phone: guardian1phone ?? this.guardian1phone,
      guardian1relation: guardian1relation ?? this.guardian1relation,
      guardian2appUserId: guardian2appUserId ?? this.guardian2appUserId,
      guardian2email: guardian2email ?? this.guardian2email,
      guardian2name: guardian2name ?? this.guardian2name,
      guardian2phone: guardian2phone ?? this.guardian2phone,
      guardian2relation: guardian2relation ?? this.guardian1relation,
      gender: gender ?? this.gender,
      idCardNum: idCardNum ?? this.idCardNum,
      isAdult: isAdult ?? this.isAdult,
      motherToungue: motherToungue ?? this.motherToungue,
      photo: photo ?? this.photo,
      religion: religion ?? this.religion,
      schoolAttended: schoolAttended ?? this.schoolAttended,
      serverSideTimeStamp: serverSideTimeStamp ?? this.serverSideTimeStamp,
      state: state ?? this.state,
      country: country ?? this.country,
      town: town ?? this.town,
      tripId: tripId ?? this.tripId,
      version: version ?? this.version,
      zipCode: zipCode ?? this.zipCode,
    );
  }

  UserRegistrationModel.fromJsonForLookUp(Map<String, dynamic> json) {
    guardian1name = json['gaurdian1name'];
    guardian1phone = json['gaurdian1phone'];
    guardian1relation = json['gaurdian1relation'];
    guardian2name = json['gaurdian2name'];
    guardian2phone = json['gaurdian2phone'];
    idCardNum = json['idcardnum'];
    name = json['name'];
  }

  UserRegistrationModel.fromJson(Map<String, dynamic> json) {
    academicPercentage = json['academicpercentage'];
    email = json['email'];

    addressLine = json['addressline'];
    allocatedTransportCost = json['allocatedtransportcost'];
//    allocatedTransportRoute = json['allocatedtransportroute'];
    applicableDiscount = json['applicablediscount'];

    bplStudent = json['bplstudent'];
    caste = json['caste'];
    classAttended = json['classattended'];
    dateOfJoining = (json['dateofjoining'] as Timestamp).toDate();

    dob = json['dob'];

    feePlan = json['feeplan'];
    feePlanPeriodType = json['feeplanperiodtype'];
    feePlanType = json['feeplantype'];
    guardian1AppUserId = json['gaurdian1appuserid'];
    guardian1email = json['gaurdian1email'];
    guardian1name = json['gaurdian1name'];
    guardian1phone = json['gaurdian1phone']?.toString();
    guardian1relation = json['gaurdian1relation'];
    guardian2appUserId = json['gaurdian2appuserid'];
    guardian2email = json['gaurdian2email'];
    guardian2name = json['gaurdian2name'];
    guardian2phone = json['gaurdian2phone']?.toString();
    guardian2relation = json['gaurdian2relation'];
    gender = json['gender'];
    idCardNum = json['idcardnum'];
    isAdult = json['isadult'];
    motherToungue = json['mothertounge'];
    name = json['name'];
    photo = json['photo'];
    qrCode = json['qrcode'];
    religion = json['religion'];
    schoolAttended = json['schoolattended'];
    serverSideTimeStamp = json['serversidetimestamp'];
    state = json['state'];
    country = json['country'];
    town = json['town'];
    tripId = json['tripregid'];
    version = json['version'];
    zipCode = json['zipcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['academicpercentage'] = this.academicPercentage;
    data['appuserid']=this.appuserid;

    data['email'] = this.email;
    data['addressline'] = this.addressLine;
    data['allocatedtransportcost'] = this.allocatedTransportCost;
    data['allocatedtransportroute'] = this.allocatedTransportRoute;
    data['applicablediscount'] = this.applicableDiscount;

    data['bplstudent'] = this.bplStudent;
    data['caste'] = this.caste;
    data['classattended'] = this.classAttended;
    data['dateofjoining'] = this.dateOfJoining;

    data['dob'] = this.dob;

    data['feeplan'] = this.feePlan;
    data['feeplanperiodtype'] = this.feePlanPeriodType;
    data['feeplantype'] = this.feePlanType;
    data['gaurdian1appuserid'] = this.guardian1AppUserId;
    data['gaurdian1email'] = this.guardian1email;
    data['gaurdian1name'] = this.guardian1name;
    data['gaurdian1phone'] = this.guardian1phone;
    data['gaurdian1relation'] = this.guardian1relation;
    data['gaurdian2appuserid'] = this.guardian2appUserId;
    data['gaurdian2email'] = this.guardian2email;
    data['gaurdian2name'] = this.guardian2name;
    data['gaurdian2phone'] = this.guardian2phone;
    data['gaurdian2relation'] = this.guardian2relation;
    data['phoneslist'] = [this.guardian1phone, this.guardian2phone];
    data['emaillist'] = [
      this.guardian1email?.toLowerCase(),
      this.guardian2email?.toLowerCase()
    ];
    data['gender'] = this.gender;
    data['idcardnum'] = this.idCardNum;
    data['isadult'] = this.isAdult;
    data['mothertounge'] = this.motherToungue;
    data['name'] = this.name;
    data['photo'] = this.photo;
    data['qrcode'] = this.qrCode;
    data['religion'] = this.religion;
    data['schoolattended'] = this.schoolAttended;
    data['serversidetimestamp'] = this.serverSideTimeStamp;
    data['state'] = this.state;
    data['town'] = this.town;
    data['country'] = this.country;
    data['tripregid'] = this.tripId;
    data['version'] = this.version;
    data['zipcode'] = this.zipCode;

    return data;
  }

  static List<UserRegistrationModel> listFromJson(List<dynamic> json) {
    List<UserRegistrationModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(UserRegistrationModel.fromJson(j()));
      });
    }
    return _list;
  }

  static List<UserRegistrationModel> listFromJsonforlookup(List<dynamic> json) {
    List<UserRegistrationModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(UserRegistrationModel.fromJsonForLookUp(j()));
      });
    }
    return _list;
  }
}
