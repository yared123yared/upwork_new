import 'package:equatable/equatable.dart';

//import  '../ui/dynamic_complex_state.dart';
// ignore: must_be_immutable
class QRCodeModel extends Equatable {
  String entityType;
  DateTime startdate;
  DateTime enddate;
  String identity;
  String userid;
  String residentdetailsid;
  String foruserid;
  String forservicereqid;

  QRCodeModel({
    this.entityType,
    this.startdate,
    this.enddate,
    this.userid,
    this.identity,
    this.residentdetailsid,
    this.foruserid,
    this.forservicereqid,
  });

  @override
  List<Object> get props => [
        entityType,
        startdate,
        enddate,
        identity,
        residentdetailsid,
        foruserid,
        forservicereqid,
      ];

  QRCodeModel copyWith({
    String entityType,
    DateTime startdate,
    DateTime enddate,
    String identity,
    String unitaddress,
    String foruserid,
    String forservicereqid,
  }) {
    return QRCodeModel(
      entityType: entityType ?? this.entityType,
      startdate: startdate ?? this.startdate,
      enddate: enddate ?? this.enddate,
      identity: identity ?? this.identity,
      residentdetailsid: unitaddress ?? this.residentdetailsid,
      foruserid: foruserid ?? this.foruserid,
      forservicereqid: forservicereqid ?? this.forservicereqid,
    );
  }

  QRCodeModel.fromJson(Map<String, dynamic> json) {
    String enttype = json['entytype'];
    if (enttype == "m") {
      entityType = "STAFF";
      identity = json['name'];
      foruserid = json['userid'];
      startdate = DateTime.now();
      enddate = DateTime.now();

      //json['startdate'] is int

    } else if (enttype == "r") {
      entityType = "RESIDENT";
      identity = json['name'];
      foruserid = json['userid'];
      startdate = DateTime.now();
      enddate = DateTime.now();
    } else if (enttype == "h") {
      entityType = "HOMEHELP";
      identity = json['name'];
      startdate = DateTime.now();
      enddate = DateTime.now();
      List<dynamic> kd = json['relatedentry'];
      if (kd.length > 0) {
        var bk = Map<String, dynamic>.from(kd[0]);
        forservicereqid = bk.containsKey("sr") ? bk["sr"] : null;
        residentdetailsid = bk.containsKey("sr") ? bk["rd"] : null;
      }
    } else if (enttype == "g") {
      entityType = "GUEST";
      forservicereqid = json['qrcode'];
    } else if (enttype == "v") {
      entityType = "VEHICLE";
    } else {
      entityType = "UNKNOWN";
    }
  }
}
