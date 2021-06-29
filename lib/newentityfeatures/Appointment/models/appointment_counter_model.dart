import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/common/helputil.dart';


class AppointmentCounterModel{
  String id;
  String ownerId;
  int runningNumber;
  int maxRunningNumber;
  String date;
  String period;

  AppointmentCounterModel({
    this.id,
    this.ownerId,
    this.runningNumber,
    this.maxRunningNumber,
    this.date,
    this.period,
  });

  AppointmentCounterModel.fromData(Map data) {
    //id doc.documentID;
    ownerId = data['ownerId'] ?? '';
    runningNumber = data['runningNumber'] ?? 0;
    maxRunningNumber = data['maxRunningNumber'] ?? 0;
    date = HelpUtil.formattedDateToString(
        HelpUtil.toDate(timestamp: data['date']),
            DateTimeMode.DATE) ??
        '1-1-1';
    period = data['period'] ?? '';
  }

  factory AppointmentCounterModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data();
    return AppointmentCounterModel(
      id: doc.id,
      ownerId: data['ownerId'] ?? '',
      runningNumber: data['runningNumber'] ?? 0,
      maxRunningNumber: data['maxRunningNumber'] ?? 0,
      date: data['date'] ?? '',
      period: data['period'] ?? '',
    );
  }

  Map<String, dynamic> toMapUpdate() {
    return {
      "ownerId": ownerId,
      "runningNumber": runningNumber,
      "maxRunningNumber": maxRunningNumber,
      "date": date,
      "period": period,
    }..removeWhere((key, value) => value == null);
  }

  Map<String, dynamic> toMap() {
    return {
      "ownerId": ownerId,
      "runningNumber": runningNumber,
      "maxRunningNumber": maxRunningNumber,
      "date": date,
      "period": period,
    };
  }

}
