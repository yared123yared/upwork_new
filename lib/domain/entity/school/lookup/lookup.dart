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

  const factory Lookup.paymentPeriodInfo({
    @JsonKey(name: 'grpname') @required String grpName,
    @JsonKey(name: 'periodinfo') @required List<PeriodInfo> periodInfo,
    @JsonKey(name: 'sessionname') @required String sessionName,
    @JsonKey(name: 'isfrozen') @required bool isfrozen,
    @JsonKey(name: 'numperiods') @required int numperiods,
  }) = PaymentPeriodInfo;
  const factory Lookup.periodInfo({
    @JsonKey(
        name: "duedate",
        fromJson: JsonHelper.fromJsonTimeStamp,
        toJson: JsonHelper.toJsonTimeStamp)
    @required
        DateTime dueDate,
    @JsonKey(
        name: "startdate",
        fromJson: JsonHelper.fromJsonTimeStamp,
        toJson: JsonHelper.toJsonTimeStamp)
    @required
        DateTime startDate,
    @JsonKey(
        name: "enddate",
        fromJson: JsonHelper.fromJsonTimeStamp,
        toJson: JsonHelper.toJsonTimeStamp)
    @required
        DateTime endDate,
    @JsonKey(name: 'paymentperiodname') @required String paymentPeriodName,
    @JsonKey(name: 'numdays') @required int numDays,
  }) = PeriodInfo;
  const factory Lookup.classPeriodInfo({
    @JsonKey(name: 'schedule') @required List<Schedule> schedule,
    @JsonKey(name: 'type') @required String type,
  }) = ClassPeriodInfo;
  const factory Lookup.schedule({
    @JsonKey(
        name: "starttime",
        fromJson: JsonHelper.fromJsonTimeStamp,
        toJson: JsonHelper.toJsonTimeStamp)
    @required
        DateTime startTime,
    @JsonKey(
        name: "endtime",
        fromJson: JsonHelper.fromJsonTimeStamp,
        toJson: JsonHelper.toJsonTimeStamp)
    @required
        DateTime endTime,
    @JsonKey(name: 'classperiodname') @required String classPeriodName,
  }) = Schedule;

  const factory Lookup.offering({@required String offering}) = Offering;

  const factory Lookup.feeItem({@required String feeItem}) = FeeItem;

  factory Lookup.fromJson(Map<String, dynamic> json) => _$LookupFromJson(json);
}

@freezed
abstract class LookupList with _$LookupList {
  const factory LookupList.roomInfoList(
          {@JsonKey(name: 'roominfo') @required List<RoomInfo> list}) =
      RoomInfoList;

  const factory LookupList.examTermInfoList(
          {@JsonKey(name: 'examterminfo') @required List<ExamTermInfo> list}) =
      ExamTermInfoList;

  const factory LookupList.sessionTermList(
          {@JsonKey(name: 'sessionterm') @required List<SessionTerm> list}) =
      SessionTermList;

  const factory LookupList.offering(
      {@JsonKey(name: 'subject') @required List<String> list}) = Offerings;

  const factory LookupList.feeItem(
      {@JsonKey(name: 'feeitemlist') @required List<String> list}) = FeeItems;

  const factory LookupList.grade(
      {@JsonKey(name: 'grades') @required List<String> list}) = Grades;
  const factory LookupList.classPeriod(
      {@JsonKey(name: 'classperiodinfo')
      @required
          List<ClassPeriodInfo> list}) = ClassPeriodInfoList;

  const factory LookupList.paymentPeriodInfo(
      {@JsonKey(name: 'paymentperiodinfo')
      @required
          List<PaymentPeriodInfo> list}) = PaymentPeriodInfoList;
  const factory LookupList.empty() = LookupListEmpty;

  factory LookupList.fromJson(Map<String, dynamic> json) =>
      _$LookupListFromJson(json);
}

@freezed
abstract class LookupType with _$LookupType {
  const factory LookupType.feeItem() = _FeeItem;
  const factory LookupType.offering() = _Offering;
  const factory LookupType.grade() = _Grade;
  const factory LookupType.rooms() = _Rooms;
  const factory LookupType.examTerm() = _ExamTerm;
  const factory LookupType.sessionTerm() = _SessionTerm;
  const factory LookupType.classPeriod() = _ClassPeriod;
  const factory LookupType.paymentPeriod() = _PaymentPeriod;

  factory LookupType.from(Lookup lookup) => lookup.map(
      roomInfo: (roomInfo) => LookupType.rooms(),
      examTermInfo: (examTermInfo) => LookupType.examTerm(),
      sessionTerm: (sessionTerm) => LookupType.sessionTerm(),
      paymentPeriodInfo: (paymentPeriodInfo) => LookupType.paymentPeriod(),
      periodInfo: (periodInfo) => LookupType.paymentPeriod(),
      classPeriodInfo: (classPeriodInfo) => LookupType.classPeriod(),
      schedule: (schedule) => LookupType.classPeriod(),
      feeItem: (feeItem) => LookupType.feeItem(),
      offering: (offering) => LookupType.offering());
}
