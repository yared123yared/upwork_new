import 'package:equatable/equatable.dart';
import 'package:complex/common/helputil.dart';



// ignore: must_be_immutable
class ComplexVehicleModel extends Equatable {
  String appUserId;
  DateTime endDate;
  String generatedQRCode;
  String generatedQRCodeLink;
  bool isActive;
  bool isPickAndDrop;
  bool isStaff;
  bool isSubEmployee;
  bool isVisitor;
  String numberPlate;
  String ownerName;
  String photoLink;
  String registrationNum;
  DateTime startDate;
  bool terminate;
  String unitAddress;
  String userEmail;
  String userName;
  num userPhoneNum;
  String vehicleType;
  String vehicleID;
  String forstaffid;
  String forstaffname;

  ComplexVehicleModel({
    this.userName,
    this.vehicleID,
    this.isActive,
    this.startDate,
    this.endDate,
    this.appUserId,
    this.generatedQRCode,
    this.generatedQRCodeLink,
    this.isPickAndDrop,
    this.isStaff,
    this.isSubEmployee,
    this.isVisitor,
    this.numberPlate,
    this.ownerName,
    this.photoLink,
    this.registrationNum,
    this.terminate,
    this.unitAddress,
    this.userEmail,
    this.userPhoneNum,
    this.forstaffid,
    this.forstaffname,
    this.vehicleType,
  });

  @override
  List<Object> get props => [
        userName,
        isActive,
        startDate,
        endDate,
        appUserId,
        generatedQRCode,
        generatedQRCodeLink,
        isPickAndDrop,
        isSubEmployee,
        isStaff,
        isVisitor,
        numberPlate,
        ownerName,
        photoLink,
        registrationNum,
        terminate,
        unitAddress,
        userEmail,
        userPhoneNum,
        vehicleType,
        forstaffid,
        forstaffname,
      ];

  ComplexVehicleModel copyWith({
    String appUserId,
    DateTime endDate,
    String generatedQRCode,
    String generatedQRCodeLink,
    bool isActive,
    bool isPickAndDrop,
    bool isStaff,
    bool isSubEmployee,
    bool isVisitor,
    String numberPlate,
    String ownerName,
    String photoLink,
    num registrationNum,
    DateTime startDate,
    bool terminate,
    String unitAddress,
    String userEmail,
    String userName,
    num userPhoneNum,
    String vehicleType,
    num version,
    String forstaffid,
    String forstaffname,
  }) {
    return ComplexVehicleModel(
        userName: userName ?? this.userName,
        isActive: isActive ?? this.isActive,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        appUserId: appUserId ?? this.appUserId,
        generatedQRCode: generatedQRCode ?? this.generatedQRCode,
        generatedQRCodeLink: generatedQRCodeLink ?? this.generatedQRCodeLink,
        isPickAndDrop: isPickAndDrop ?? this.isPickAndDrop,
        isStaff: isStaff ?? this.isStaff,
        isSubEmployee: isSubEmployee ?? this.isSubEmployee,
        isVisitor: isVisitor ?? this.isVisitor,
        numberPlate: numberPlate ?? this.numberPlate,
        ownerName: ownerName ?? this.ownerName,
        photoLink: photoLink ?? this.photoLink,
        registrationNum: registrationNum ?? this.registrationNum,
        terminate: terminate ?? this.terminate,
        unitAddress: unitAddress ?? this.unitAddress,
        userEmail: userEmail ?? this.userEmail,
        userPhoneNum: userPhoneNum ?? this.userPhoneNum,
        vehicleType: vehicleType ?? this.vehicleType,
        forstaffid: forstaffid ?? this.forstaffid,
        forstaffname: forstaffname ?? this.forstaffname);
  }

  ComplexVehicleModel.fromJson(Map<String, dynamic> json, String docID) {
    vehicleID = docID;
    appUserId = json['appuserid'];
    endDate = HelpUtil.toDate(timestamp: json['enddate']);
    generatedQRCode = json['generatedqrcode'];
    generatedQRCodeLink = json['generatedqrcodelink'];
    isActive = json['isactive'];
    isPickAndDrop = json['ispickanddrop'];
    isStaff = json['isstaff'];
    isSubEmployee = json['issubemployee'];
    isVisitor = json['isvisitor'];
    numberPlate = json['numberplate'];
    ownerName = json['ownername'];
    photoLink = json['photolink'];
    registrationNum = json['registrationnum'];
    startDate = HelpUtil.toDate(timestamp: json['startdate']);
    terminate = json['terminate'];
    unitAddress = json['unitaddress'];
    userEmail = json['useremail'];
    userName = json['username'];
    userPhoneNum = json['userphonenum'];
    vehicleType = json['vehicletype'];
    forstaffname = json.containsKey('forstaff') ? json['forstaffname'] : null;
    forstaffid = json.containsKey('forstaffid') ? json['forstaffid'] : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
    json['appuserid'] = this.appUserId;
    json['enddate'] = HelpUtil.toTimeStamp(dateTime: this.endDate);
    json['generatedqrcode'] = this.generatedQRCode;
    json['generatedqrcodelink'] = this.generatedQRCodeLink;
    json['isactive'] = this.isActive;
    json['ispickanddrop'] = this.isPickAndDrop;
    json['isStaff'] = this.isStaff;
    json['issubemployee'] = this.isSubEmployee;
    json['isvisitor'] = this.isVisitor;
    json['numberplate'] = this.numberPlate;
    json['ownername'] = this.ownerName;
    json['photolink'] = this.photoLink;
    json['registrationnum'] = this.registrationNum;
    json['startedate'] = HelpUtil.toTimeStamp(dateTime: this.startDate);
    json['terminate'] = this.terminate;
    json['unitaddress'] = this.unitAddress;
    json['useremail'] = this.userEmail;
    json['username'] = this.userName;
    json['userphonenum'] = this.userPhoneNum;
    json['vehicletype'] = this.vehicleType;
    json['forstaffid'] = forstaffid;
    json['forstaffname'] = forstaffname;

    return json;
  }

  static List<ComplexVehicleModel> listFromJson(
      List<dynamic> json, List<String> docID) {
    List<ComplexVehicleModel> _list = [];
    if (json != null) {
      json.asMap().forEach((index, j) {
        _list.add(ComplexVehicleModel.fromJson(j(), docID[index]));
      });
    }
    return _list;
  }
}
