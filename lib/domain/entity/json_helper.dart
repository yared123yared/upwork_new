import 'package:cloud_firestore/cloud_firestore.dart';
export 'package:cloud_firestore/cloud_firestore.dart';

class JsonHelper {
  static DateTime fromJsonTimeStamp(Timestamp val) => val != null
      ? DateTime.fromMillisecondsSinceEpoch(val.millisecondsSinceEpoch)
      : DateTime.now();
  static Timestamp toJsonTimeStamp(DateTime time) =>
      Timestamp.fromMillisecondsSinceEpoch(time.millisecondsSinceEpoch);
}
