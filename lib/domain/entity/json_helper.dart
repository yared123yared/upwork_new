import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
export 'package:cloud_firestore/cloud_firestore.dart';

class JsonHelper {
  static DateTime fromJsonTimeStamp(dynamic val) {
    if(val == null)
        return new DateTime(1970,1,1);
    if(val is Timestamp)
      return DateTime.fromMicrosecondsSinceEpoch(val.millisecondsSinceEpoch);
    else if (val is int)
    return  DateTime.fromMillisecondsSinceEpoch(val );
    else
      return new DateTime(1970,1,1);

  }
  static dynamic toJsonTimeStamp(DateTime time) =>time !=null ?
  (time.millisecondsSinceEpoch/1000).round():null;
}
