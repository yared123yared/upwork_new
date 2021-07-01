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

Map<String, dynamic> _$_$RoomInfoToJson(_$RoomInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('roomaddr', instance.roomAddr);
  writeNotNull('roomname', instance.roomName);
  return val;
}

_$ExamTermInfo _$_$ExamTermInfoFromJson(Map<String, dynamic> json) {
  return _$ExamTermInfo(
    mainTermName: json['maintermname'] as String,
    subTermName: json['subtermname'] as String,
  );
}

Map<String, dynamic> _$_$ExamTermInfoToJson(_$ExamTermInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('maintermname', instance.mainTermName);
  writeNotNull('subtermname', instance.subTermName);
  return val;
}

_$SessionTerm _$_$SessionTermFromJson(Map<String, dynamic> json) {
  return _$SessionTerm(
    endDate: JsonHelper.fromJsonTimeStamp(json['enddate'] as Timestamp),
    isActive: json['isactive'] as bool,
    termName: json['termname'] as String,
    startDate: JsonHelper.fromJsonTimeStamp(json['startdate'] as Timestamp),
  );
}

Map<String, dynamic> _$_$SessionTermToJson(_$SessionTerm instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enddate', JsonHelper.toJsonTimeStamp(instance.endDate));
  writeNotNull('isactive', instance.isActive);
  writeNotNull('termname', instance.termName);
  writeNotNull('startdate', JsonHelper.toJsonTimeStamp(instance.startDate));
  return val;
}

_$RoomInfoList _$_$RoomInfoListFromJson(Map<String, dynamic> json) {
  return _$RoomInfoList(
    list: (json['roominfo'] as List)
        ?.map((e) =>
            e == null ? null : RoomInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$RoomInfoListToJson(_$RoomInfoList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('roominfo', instance.list?.map((e) => e?.toJson())?.toList());
  return val;
}

_$ExamTermInfoList _$_$ExamTermInfoListFromJson(Map<String, dynamic> json) {
  return _$ExamTermInfoList(
    list: (json['examTermInfo'] as List)
        ?.map((e) =>
            e == null ? null : ExamTermInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$ExamTermInfoListToJson(_$ExamTermInfoList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'examTermInfo', instance.list?.map((e) => e?.toJson())?.toList());
  return val;
}

_$SessionTermList _$_$SessionTermListFromJson(Map<String, dynamic> json) {
  return _$SessionTermList(
    list: (json['sessionterm'] as List)
        ?.map((e) =>
            e == null ? null : SessionTerm.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$SessionTermListToJson(_$SessionTermList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sessionterm', instance.list?.map((e) => e?.toJson())?.toList());
  return val;
}

_$Offerings _$_$OfferingsFromJson(Map<String, dynamic> json) {
  return _$Offerings(
    list: (json['offerings'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$OfferingsToJson(_$Offerings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('offerings', instance.list);
  return val;
}

_$FeeItems _$_$FeeItemsFromJson(Map<String, dynamic> json) {
  return _$FeeItems(
    list: (json['feeitemlist'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$FeeItemsToJson(_$FeeItems instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('feeitemlist', instance.list);
  return val;
}

_$Grades _$_$GradesFromJson(Map<String, dynamic> json) {
  return _$Grades(
    list: (json['grades'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$GradesToJson(_$Grades instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('grades', instance.list);
  return val;
}
