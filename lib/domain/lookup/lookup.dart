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
    @JsonKey(name: 'roomaddr') String roomAddr,
    @JsonKey(name: 'roomname') String roomName,
  }) = RoomInfo;
  const factory Lookup.examTermInfo({
    @JsonKey(name: 'maintermname') String mainTermName,
    @JsonKey(name: 'subtermname') String subTermName,
  }) = ExamTermInfo;
  const factory Lookup.sessionTerm({
    @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime endDate,
    @JsonKey(name: 'isactive') bool isActive,
    @JsonKey(name: 'termname') String termName,
    @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime startDate,
  }) = SessionTermModel;

  factory Lookup.fromJson(Map<String, dynamic> json) => _$LookupFromJson(json);
}
