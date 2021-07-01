import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sembast/timestamp.dart';

part 'lookup.freezed.dart';
part 'lookup.g.dart';

class JsonHelper {
  static DateTime fromJsonTimeStamp(Timestamp val) =>
      DateTime.fromMillisecondsSinceEpoch(val.millisecondsSinceEpoch);
  static Timestamp toJsonTimeStamp(DateTime time) =>
      Timestamp.fromMillisecondsSinceEpoch(time.millisecondsSinceEpoch);
}

@freezed
abstract class Lookup with _$Lookup {
  const factory Lookup.roomInfo({
    @JsonKey(name: 'roomaddr') @required String roomAddr,
    @JsonKey(name: 'roomname') @required String roomName,
  }) = RoomInfo;

  const factory Lookup.examTermInfo({
    @JsonKey(name: 'maintermname') @required String mainTermName,
    @JsonKey(name: 'subtermname') @required String subTermName,
  }) = ExamTermInfo;

  const factory Lookup.sessionTerm({
    @JsonKey(
        name: "enddate",
        fromJson: JsonHelper.fromJsonTimeStamp,
        toJson: JsonHelper.toJsonTimeStamp)
    @required
        DateTime endDate,
    @JsonKey(name: 'isactive') @required bool isActive,
    @JsonKey(name: 'termname') @required String termName,
    @JsonKey(
        name: "startdate",
        fromJson: JsonHelper.fromJsonTimeStamp,
        toJson: JsonHelper.toJsonTimeStamp)
    @required
        DateTime startDate,
  }) = SessionTerm;

  // const factory Lookup.paymentPeriodInfo() = PaymentPeriodInfo;
  // const factory Lookup.periodInfo() = PeriodInfo;
  // const factory Lookup.classPeriodInfo() = ClassPeriodInfo;
  // const factory Lookup.schedule() = Schedule;

  factory Lookup.fromJson(Map<String, dynamic> json) => _$LookupFromJson(json);
}

@freezed
abstract class LookupList with _$LookupList {
  const factory LookupList.roomInfoList(
          {@JsonKey(name: 'roominfo') @required List<RoomInfo> list}) =
      RoomInfoList;

  const factory LookupList.examTermInfoList(
          {@JsonKey(name: 'examTermInfo') @required List<ExamTermInfo> list}) =
      ExamTermInfoList;

  const factory LookupList.sessionTermList(
          {@JsonKey(name: 'sessionterm') @required List<SessionTerm> list}) =
      SessionTermList;

  const factory LookupList.offering(
      {@JsonKey(name: 'offerings') @required List<String> list}) = Offerings;

  const factory LookupList.feeItem(
      {@JsonKey(name: 'feeitemlist') @required List<String> list}) = FeeItems;

  const factory LookupList.grade(
      {@JsonKey(name: 'grades') @required List<String> list}) = Grades;

  factory LookupList.fromJson(Map<String, dynamic> json) =>
      _$LookupListFromJson(json);
}
