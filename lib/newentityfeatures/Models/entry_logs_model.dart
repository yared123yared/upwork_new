import 'package:equatable/equatable.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/qrcode_model.dart';

// ignore: must_be_immutable
class EntryLogModel extends Equatable {
  DateTime timeDate;
  String loggedInSecurity;
  String logType;
  String userId;
  String identity;
  String servicerequid;
  String entrytype;
  String logID;

  String unitaddress;

  EntryLogModel({
    this.logID,
    this.identity,
    this.timeDate,
    this.loggedInSecurity,
    this.logType,
    this.userId,
    this.unitaddress,
    this.servicerequid,
    this.entrytype,
  });

  @override
  List<Object> get props => [
        identity,
        timeDate,
        loggedInSecurity,
        logType,
        userId,
        entrytype,
        unitaddress,
        servicerequid,
      ];

  EntryLogModel copyWith({
    DateTime timeDate,
    String loggedInSecurity,
    String logType,
    String userId,
    String userName,
    num version,
    String unitaddress,
    String entrytype,
    String servicerequid,
  }) {
    return EntryLogModel(
      timeDate: timeDate ?? this.timeDate,
      loggedInSecurity: loggedInSecurity ?? this.loggedInSecurity,
      logType: logType ?? this.logType,
      userId: userId ?? this.userId,
      identity: userName ?? this.identity,
      unitaddress: unitaddress ?? this.unitaddress,
      entrytype: entrytype ?? this.entrytype,
      servicerequid: servicerequid ?? this.servicerequid,
    );
  }

  EntryLogModel.fromJson(Map<String, dynamic> json, String docID) {
    logID = docID;
    timeDate = HelpUtil.toDate(timestamp: json['datetime']);
    loggedInSecurity = json['loggedinsecurity'];
    logType = json['logtype'];
    userId = json['userid'];
    identity = json['identity'];
    unitaddress = json['unitaddress'];
    entrytype = json['entrytype'];
    servicerequid = json['servicerequid'];
  }

  EntryLogModel.fromQRCodeModel(QRCodeModel qr, String etype) {
    logType = qr.entityType;
    timeDate = DateTime.now();
    identity = qr.identity;
    unitaddress = qr.residentdetailsid;
    entrytype = etype;
    servicerequid = qr.forservicereqid;
    userId = qr.userid;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['datetime'] = HelpUtil.toTimeStamp(dateTime: this.timeDate);
    data['loggedinsecurity'] = this.loggedInSecurity;
    data['logtype'] = this.logType;
    data['userid'] = this.userId;
    data['identity'] = this.identity;
    data['unitaddress'] = this.unitaddress;
    data['entrytype'] = this.entrytype;
    data['servicerequid'] = this.servicerequid;
    data['userId'] = this.userId;

    return data;
  }

  static List<EntryLogModel> listFromJson(
      List<dynamic> json, List<String> docID) {
    List<EntryLogModel> _list = [];
    if (json != null) {
      json.asMap().forEach((index, j) {
        _list.add(EntryLogModel.fromJson(j(), docID[index]));
      });
    }
    return _list;
  }
}
