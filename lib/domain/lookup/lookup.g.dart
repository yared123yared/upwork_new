// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lookup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomInfo _$_$RoomInfoFromJson(Map<String, dynamic> json) {
  return _$RoomInfo(
    roomAddr: json['roomaddr'] as String,
    roomName: json['roomname'] as String,
  );
}

Map<String, dynamic> _$_$RoomInfoToJson(_$RoomInfo instance) =>
    <String, dynamic>{
      'roomaddr': instance.roomAddr,
      'roomname': instance.roomName,
    };

_$ExamTermInfo _$_$ExamTermInfoFromJson(Map<String, dynamic> json) {
  return _$ExamTermInfo(
    mainTermName: json['maintermname'] as String,
    subTermName: json['subtermname'] as String,
  );
}

Map<String, dynamic> _$_$ExamTermInfoToJson(_$ExamTermInfo instance) =>
    <String, dynamic>{
      'maintermname': instance.mainTermName,
      'subtermname': instance.subTermName,
    };

_$SessionTermModel _$_$SessionTermModelFromJson(Map<String, dynamic> json) {
  return _$SessionTermModel(
    endDate: JsonHelper.fromJsonTimeStamp(json['enddate'] as Timestamp),
    isActive: json['isactive'] as bool,
    termName: json['termname'] as String,
    startDate: JsonHelper.fromJsonTimeStamp(json['startdate'] as Timestamp),
  );
}

Map<String, dynamic> _$_$SessionTermModelToJson(_$SessionTermModel instance) =>
    <String, dynamic>{
      'enddate': JsonHelper.toJsonTimeStamp(instance.endDate),
      'isactive': instance.isActive,
      'termname': instance.termName,
      'startdate': JsonHelper.toJsonTimeStamp(instance.startDate),
    };
