import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/utils/utility.dart';

class MessageModel {
  String from;
  String msg;
  DateTime dateTime;
  String to;
  num version;

  MessageModel({
    this.from,
    this.msg,
    this.dateTime,
    this.to,
    this.version,
  });

  @override
  List<Object> get props => [version, from, msg, dateTime, to];

  MessageModel copyWith({
    String from,
    String msg,
    Timestamp serverTimeStamp,
    String to,
    String version,
  }) {
    return MessageModel(
      from: from ?? this.from,
      msg: msg ?? this.msg,
      to: to ?? this.to,
      version: version ?? this.version,
    );
  }

  MessageModel.fromData(Map<String, dynamic> data) {
    from = data['from'];
    msg = data['msg'];
    dateTime = data['servertimestamps'] is int
        ? Utility.toDate(timestamp: data['servertimestamps'])
        : DateTime.now();
    to = data['to'];
    version = data['version'];
  }

  MessageModel.fromSnapshot(DocumentSnapshot snapshot) {
    from = snapshot.data()['from'];
    msg = snapshot.data()['msg'];
    dateTime = snapshot.data()['servertimestamps'] is Timestamp
        ? snapshot.data()['servertimestamps'].toDate()
        : DateTime.now();
    to = snapshot.data()['to'];
    version = snapshot.data()['version'];
  }

  MessageModel.fromDb(dynamic data) {
    from = data['from'];
    msg = data['msg'];
    dateTime = data['servertimestamps'] is Timestamp
        ? data['servertimestamps'].toDate()
        : DateTime.now();
    to = data['to'];
    version = data['version'];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['from'] = this.from;
    data['msg'] = this.msg;
    data['servertimestamps'] = FieldValue.serverTimestamp();
    //CommonUIHandler.toTimeStamp(dateTime: DateTime.now());
    data['to'] = this.to;
    data['version'] = this.version;
    return data;
  }

  Map<String, dynamic> toLocalData() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['from'] = this.from;
    data['msg'] = this.msg;
    data['servertimestamps'] = DateTime.now().toString();
    //CommonUIHandler.toTimeStamp(dateTime: DateTime.now());
    data['to'] = this.to;
    data['version'] = this.version;
    return data;
  }

  static List<MessageModel> listFromSnapshot(List<DocumentSnapshot> data) {
    List<MessageModel> _list = [];
    if (data != null) {
      var _data = data.reversed;
      _data.forEach((d) {
        _list.add(MessageModel.fromSnapshot(d));
      });
    }
    return _list;
  }

  static List<MessageModel> listFromLocalDb(List<dynamic> data) {
    List<MessageModel> _list = [];
    if (data != null) {
      var _data = data.reversed;
      _data.forEach((d) {
        _list.add(MessageModel.fromDb(d));
      });
    }
    return _list;
  }

  static List<MessageModel> listFromData(List<dynamic> data) {
    List<MessageModel> _list = [];
    if (data != null) {
      data.forEach((j) {
        _list.add(MessageModel.fromData(j));
      });
    }
    return _list;
  }
}
