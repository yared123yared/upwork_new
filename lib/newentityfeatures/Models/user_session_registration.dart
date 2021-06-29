import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
//only to include fields which are allowed to change from UI
Map<String, dynamic> toUserSessionUpdateData(
    UserSessionRegModel oldData, UserSessionRegModel newData) {
  return {
    if (oldData.allocatedTransportCost != newData.allocatedTransportCost)
      'allocatedtransportcost': newData.allocatedTransportCost,
    if (oldData.feePlanType != newData.feePlanType)
      'feeplantype': newData.feePlanType,
    if (oldData.feePlanPeriodType != newData.feePlanPeriodType)
      'feeplanperiodtype': newData.feePlanPeriodType,
    if (oldData.startPeriod != newData.startPeriod)
      'startperiod': newData.startPeriod,
    if (oldData.feePLan != newData.feePLan) 'feeplan': newData.feePLan,
    if (oldData.applicableDiscount != newData.applicableDiscount)
      'applicablediscount': newData.applicableDiscount,
    if (oldData.house != newData.house) 'house': newData.house,
    if (oldData.virtualRoom != newData.virtualRoom)
      'virtualroom': newData.virtualRoom,
    if (oldData.rollNumber != newData.rollNumber)
      'rollnumber': newData.rollNumber,
    if (oldData.offeringsTaken != newData.offeringsTaken)
      'offeringstaken': newData.offeringsTaken,
    if (oldData.offeringSchedules != newData.offeringSchedules)
      "offeringsschedule": newData.offeringSchedules
          ?.map((offeringSchedule) => offeringSchedule.toJson())
          ?.toList(),
    if (oldData.isActive != newData.isActive) 'isActive': newData.isActive,
  };
}

class UserSessionRegModel {
  String activeSession;
  int allocatedTransportCost;
  bool allocatedTransportedRoute;
  int applicableDiscount;
  String feePLan;
  String feePlanPeriodType;
  String feePlanType;
  String house;
  String startPeriod;
  bool isActive;
  String idCardNum;
  List<OfferingWeeklySchedule> offeringSchedules;
  List<String> offeringsTaken;
  int rollNumber;
  int version;
  String virtualRoom;
  String docID;
  FeePlanModel feeplandata;

  UserSessionRegModel({
    this.version,
    this.feePlanType,
    this.offeringSchedules,
    this.applicableDiscount,
    this.allocatedTransportCost,
    this.rollNumber,
    this.isActive,
    this.activeSession,
    this.allocatedTransportedRoute,
    this.feePLan,
    this.startPeriod,
    this.feePlanPeriodType,
    this.house,
    this.offeringsTaken,
    this.idCardNum,
    this.virtualRoom,
  });

  UserSessionRegModel copyWith({
    String activeSession,
    int allocatedTransportCost,
    String allocatedTransportedRoute,
    int applicableDiscount,
    String feePLan,
    String feePLanPeriodType,
    String feePlanType,
    String house,
    bool isActive,
    List<String> offeringsTaken,
    int rollNumber,
    int version,
    String idCardNum,
    int virtualRoom,
  }) {
    return UserSessionRegModel(
        activeSession: activeSession ?? this.activeSession,
        allocatedTransportCost:
        allocatedTransportCost ?? this.allocatedTransportCost,
        allocatedTransportedRoute:
        allocatedTransportedRoute ?? this.allocatedTransportedRoute,
        applicableDiscount: applicableDiscount ?? this.applicableDiscount,
        feePLan: feePLan ?? this.feePLan,
        feePlanPeriodType: feePLanPeriodType ?? this.feePlanPeriodType,
        feePlanType: feePlanType ?? this.feePlanType,
        house: house ?? this.house,
        offeringsTaken: offeringsTaken ?? this.offeringsTaken,
        rollNumber: rollNumber ?? this.rollNumber,
        version: version ?? this.version,
        virtualRoom: virtualRoom ?? this.virtualRoom,
        idCardNum: idCardNum ?? this.idCardNum,
        isActive: isActive ?? this.isActive);
  }

  UserSessionRegModel.fromJson(Map<String, dynamic> json, String id) {
    if (json != null) {
      activeSession = json['activesession'];
      docID = id;
      if (json['offerings'] != null) {
        offeringsTaken = List<String>();
        json['offerings'].forEach((v) {
          offeringsTaken.add(v);
        });
      } else {
        offeringsTaken = [];
      }

      if (json['offeringsschedule'] != null) {
        offeringSchedules = <OfferingWeeklySchedule>[];
        json['offeringsschedule'].forEach((v) {
          //todo get the id of offering weekly schedule
          offeringSchedules.add(OfferingWeeklySchedule.fromJson(v, ''));
        });
      } else {
        offeringSchedules = [];
      }
      isActive = json['isActive'];
      allocatedTransportCost = json['allocatedtransportcost'];
      allocatedTransportedRoute =
      json['allocatedtransportroute'] == "true" ? true : false;
      applicableDiscount = json['applicablediscount'];
      feePLan = json['feeplan'];
      feePlanPeriodType = json['feeplanperiodtype'];
      feePlanType = json['feeplantype'];
      house = json['house'];
      rollNumber = json['rollnumber'];
      startPeriod = json['startperiod'];
      version = json['version'];
      virtualRoom = json['virtualroom'];
      idCardNum = json['idcardnum'];
      if (json.containsKey('feeplandata') && json['feeplandata'] != null) {
        feeplandata = FeePlanModel.fromJson(json['feeplandata']);
      }
      print(feeplandata);
    }
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = {
      "version": this.version,
      "activesession": this.activeSession,
      "allocatedtransportroute": this.allocatedTransportedRoute,
      "allocatedtransportcost": this.allocatedTransportCost,
      "feeplantype": this.feePlanType,
      "feeplanperiodtype": this.feePlanPeriodType,
      "startperiod": this.startPeriod,
      "feeplan": this.feePLan,
      "applicablediscount": this.applicableDiscount,
      "house": this.house,
      "virtualroom": this.virtualRoom,
      "rollnumber": this.rollNumber,
      "offerings": this.offeringsTaken,
      "offeringsschedule": this
          .offeringSchedules
          ?.map((offeringSchedule) => offeringSchedule.toJson())
          ?.toList() ??
          [],
      "isActive": this.isActive,
      "idcardnum": this.idCardNum,
      "qrcode": "None",
    };
    return data;
  }

  static List<UserSessionRegModel> listFromJson(
      List<dynamic> json, List<String> docIdList) {
    List<UserSessionRegModel> _list = [];
    json.asMap().forEach((i, j) {
      _list.add(UserSessionRegModel.fromJson(j(), docIdList[i]));
    });
    return _list;
  }
}
