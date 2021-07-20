import 'package:cloud_firestore/cloud_firestore.dart';
export 'package:cloud_firestore/cloud_firestore.dart';

class JsonHelper {
  static DateTime fromJsonTimeStamp(Timestamp val) => val != null
      ? DateTime.fromMillisecondsSinceEpoch(val.millisecondsSinceEpoch)
      : DateTime.now();
  static dynamic toJsonTimeStamp(DateTime time) =>time !=null ?
      Timestamp.fromMillisecondsSinceEpoch(time.millisecondsSinceEpoch):null;
}
