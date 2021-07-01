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

_$PaymentPeriodInfo _$_$PaymentPeriodInfoFromJson(Map<String, dynamic> json) {
  return _$PaymentPeriodInfo(
    grpName: json['grpname'] as String,
    periodInfo: (json['periodinfo'] as List)
        ?.map((e) =>
            e == null ? null : PeriodInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sessionName: json['sessionname'] as String,
    isfrozen: json['isfrozen'] as bool,
    numperiods: json['numperiods'] as int,
  );
}

Map<String, dynamic> _$_$PaymentPeriodInfoToJson(_$PaymentPeriodInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('grpname', instance.grpName);
  writeNotNull(
      'periodinfo', instance.periodInfo?.map((e) => e?.toJson())?.toList());
  writeNotNull('sessionname', instance.sessionName);
  writeNotNull('isfrozen', instance.isfrozen);
  writeNotNull('numperiods', instance.numperiods);
  return val;
}

_$PeriodInfo _$_$PeriodInfoFromJson(Map<String, dynamic> json) {
  return _$PeriodInfo(
    dueDate: JsonHelper.fromJsonTimeStamp(json['duedate'] as Timestamp),
    startDate: JsonHelper.fromJsonTimeStamp(json['startdate'] as Timestamp),
    endDate: JsonHelper.fromJsonTimeStamp(json['enddate'] as Timestamp),
    paymentPeriodName: json['paymentperiodname'] as String,
    numDays: json['numdays'] as int,
  );
}

Map<String, dynamic> _$_$PeriodInfoToJson(_$PeriodInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('duedate', JsonHelper.toJsonTimeStamp(instance.dueDate));
  writeNotNull('startdate', JsonHelper.toJsonTimeStamp(instance.startDate));
  writeNotNull('enddate', JsonHelper.toJsonTimeStamp(instance.endDate));
  writeNotNull('paymentperiodname', instance.paymentPeriodName);
  writeNotNull('numdays', instance.numDays);
  return val;
}

_$ClassPeriodInfo _$_$ClassPeriodInfoFromJson(Map<String, dynamic> json) {
  return _$ClassPeriodInfo(
    schedule: (json['schedule'] as List)
        ?.map((e) =>
            e == null ? null : Schedule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$_$ClassPeriodInfoToJson(_$ClassPeriodInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'schedule', instance.schedule?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  return val;
}

_$Schedule _$_$ScheduleFromJson(Map<String, dynamic> json) {
  return _$Schedule(
    startTime: JsonHelper.fromJsonTimeStamp(json['starttime'] as Timestamp),
    endTime: JsonHelper.fromJsonTimeStamp(json['endtime'] as Timestamp),
    classPeriodName: json['classperiodname'] as String,
  );
}

Map<String, dynamic> _$_$ScheduleToJson(_$Schedule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('starttime', JsonHelper.toJsonTimeStamp(instance.startTime));
  writeNotNull('endtime', JsonHelper.toJsonTimeStamp(instance.endTime));
  writeNotNull('classperiodname', instance.classPeriodName);
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
    list: (json['subject'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$OfferingsToJson(_$Offerings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subject', instance.list);
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

_$ClassPeriodInfoList _$_$ClassPeriodInfoListFromJson(
    Map<String, dynamic> json) {
  return _$ClassPeriodInfoList(
    list: (json['classperiodinfo'] as List)
        ?.map((e) => e == null
            ? null
            : ClassPeriodInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$ClassPeriodInfoListToJson(
    _$ClassPeriodInfoList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'classperiodinfo', instance.list?.map((e) => e?.toJson())?.toList());
  return val;
}

_$PaymentPeriodInfoList _$_$PaymentPeriodInfoListFromJson(
    Map<String, dynamic> json) {
  return _$PaymentPeriodInfoList(
    list: (json['paymentperiodinfo'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentPeriodInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$PaymentPeriodInfoListToJson(
    _$PaymentPeriodInfoList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'paymentperiodinfo', instance.list?.map((e) => e?.toJson())?.toList());
  return val;
}

_$LookupListEmpty _$_$LookupListEmptyFromJson(Map<String, dynamic> json) {
  return _$LookupListEmpty();
}

Map<String, dynamic> _$_$LookupListEmptyToJson(_$LookupListEmpty instance) =>
    <String, dynamic>{};
