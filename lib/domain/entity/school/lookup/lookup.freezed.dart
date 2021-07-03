// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lookup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Lookup _$LookupFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'roomInfo':
      return RoomInfo.fromJson(json);
    case 'examTermInfo':
      return ExamTermInfo.fromJson(json);
    case 'sessionTerm':
      return SessionTerm.fromJson(json);
    case 'paymentPeriodInfo':
      return PaymentPeriodInfo.fromJson(json);
    case 'periodInfo':
      return PeriodInfo.fromJson(json);
    case 'classPeriodInfo':
      return ClassPeriodInfo.fromJson(json);
    case 'schedule':
      return Schedule.fromJson(json);
    case 'offering':
      return Offering.fromJson(json);
    case 'feeItem':
      return FeeItem.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$LookupTearOff {
  const _$LookupTearOff();

// ignore: unused_element
  RoomInfo roomInfo(
      {@required @JsonKey(name: 'roomaddr') String roomAddr,
      @required @JsonKey(name: 'roomname') String roomName}) {
    return RoomInfo(
      roomAddr: roomAddr,
      roomName: roomName,
    );
  }

// ignore: unused_element
  ExamTermInfo examTermInfo(
      {@required @JsonKey(name: 'maintermname') String mainTermName,
      @required @JsonKey(name: 'subtermname') String subTermName}) {
    return ExamTermInfo(
      mainTermName: mainTermName,
      subTermName: subTermName,
    );
  }

// ignore: unused_element
  SessionTerm sessionTerm(
      {@required
      @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @required
      @JsonKey(name: 'isactive')
          bool isActive,
      @required
      @JsonKey(name: 'termname')
          String termName,
      @required
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate}) {
    return SessionTerm(
      endDate: endDate,
      isActive: isActive,
      termName: termName,
      startDate: startDate,
    );
  }

// ignore: unused_element
  PaymentPeriodInfo paymentPeriodInfo(
      {@required @JsonKey(name: 'grpname') String grpName,
      @required @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
      @required @JsonKey(name: 'sessionname') String sessionName,
      @required @JsonKey(name: 'isfrozen') bool isfrozen,
      @required @JsonKey(name: 'numperiods') int numperiods}) {
    return PaymentPeriodInfo(
      grpName: grpName,
      periodInfo: periodInfo,
      sessionName: sessionName,
      isfrozen: isfrozen,
      numperiods: numperiods,
    );
  }

// ignore: unused_element
  PeriodInfo periodInfo(
      {@required
      @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime dueDate,
      @required
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @required
      @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @required
      @JsonKey(name: 'paymentperiodname')
          String paymentPeriodName,
      @required
      @JsonKey(name: 'numdays')
          int numDays}) {
    return PeriodInfo(
      dueDate: dueDate,
      startDate: startDate,
      endDate: endDate,
      paymentPeriodName: paymentPeriodName,
      numDays: numDays,
    );
  }

// ignore: unused_element
  ClassPeriodInfo classPeriodInfo(
      {@required @JsonKey(name: 'schedule') List<Schedule> schedule,
      @required @JsonKey(name: 'type') String type}) {
    return ClassPeriodInfo(
      schedule: schedule,
      type: type,
    );
  }

// ignore: unused_element
  Schedule schedule(
      {@required
      @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startTime,
      @required
      @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endTime,
      @required
      @JsonKey(name: 'classperiodname')
          String classPeriodName}) {
    return Schedule(
      startTime: startTime,
      endTime: endTime,
      classPeriodName: classPeriodName,
    );
  }

// ignore: unused_element
  Offering offering({@required String offering}) {
    return Offering(
      offering: offering,
    );
  }

// ignore: unused_element
  FeeItem feeItem({@required String feeItem}) {
    return FeeItem(
      feeItem: feeItem,
    );
  }

// ignore: unused_element
  Lookup fromJson(Map<String, Object> json) {
    return Lookup.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Lookup = _$LookupTearOff();

/// @nodoc
mixin _$Lookup {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
            @JsonKey(name: 'roomname') String roomName),
    @required
        TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
            @JsonKey(name: 'subtermname') String subTermName),
    @required
        TResult sessionTerm(
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'isactive')
                bool isActive,
            @JsonKey(name: 'termname')
                String termName,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'grpname') String grpName,
            @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
            @JsonKey(name: 'sessionname') String sessionName,
            @JsonKey(name: 'isfrozen') bool isfrozen,
            @JsonKey(name: 'numperiods') int numperiods),
    @required
        TResult periodInfo(
            @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime dueDate,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate,
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'paymentperiodname')
                String paymentPeriodName,
            @JsonKey(name: 'numdays')
                int numDays),
    @required
        TResult classPeriodInfo(
            @JsonKey(name: 'schedule') List<Schedule> schedule,
            @JsonKey(name: 'type') String type),
    @required
        TResult schedule(
            @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startTime,
            @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endTime,
            @JsonKey(name: 'classperiodname')
                String classPeriodName),
    @required TResult offering(String offering),
    @required TResult feeItem(String feeItem),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
        @JsonKey(name: 'roomname') String roomName),
    TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
        @JsonKey(name: 'subtermname') String subTermName),
    TResult sessionTerm(
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'isactive')
            bool isActive,
        @JsonKey(name: 'termname')
            String termName,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'grpname') String grpName,
        @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
        @JsonKey(name: 'sessionname') String sessionName,
        @JsonKey(name: 'isfrozen') bool isfrozen,
        @JsonKey(name: 'numperiods') int numperiods),
    TResult periodInfo(
        @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime dueDate,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate,
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'paymentperiodname')
            String paymentPeriodName,
        @JsonKey(name: 'numdays')
            int numDays),
    TResult classPeriodInfo(@JsonKey(name: 'schedule') List<Schedule> schedule,
        @JsonKey(name: 'type') String type),
    TResult schedule(
        @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startTime,
        @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endTime,
        @JsonKey(name: 'classperiodname')
            String classPeriodName),
    TResult offering(String offering),
    TResult feeItem(String feeItem),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfo value),
    @required TResult periodInfo(PeriodInfo value),
    @required TResult classPeriodInfo(ClassPeriodInfo value),
    @required TResult schedule(Schedule value),
    @required TResult offering(Offering value),
    @required TResult feeItem(FeeItem value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
    TResult paymentPeriodInfo(PaymentPeriodInfo value),
    TResult periodInfo(PeriodInfo value),
    TResult classPeriodInfo(ClassPeriodInfo value),
    TResult schedule(Schedule value),
    TResult offering(Offering value),
    TResult feeItem(FeeItem value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $LookupCopyWith<$Res> {
  factory $LookupCopyWith(Lookup value, $Res Function(Lookup) then) =
      _$LookupCopyWithImpl<$Res>;
}

/// @nodoc
class _$LookupCopyWithImpl<$Res> implements $LookupCopyWith<$Res> {
  _$LookupCopyWithImpl(this._value, this._then);

  final Lookup _value;
  // ignore: unused_field
  final $Res Function(Lookup) _then;
}

/// @nodoc
abstract class $RoomInfoCopyWith<$Res> {
  factory $RoomInfoCopyWith(RoomInfo value, $Res Function(RoomInfo) then) =
      _$RoomInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'roomaddr') String roomAddr,
      @JsonKey(name: 'roomname') String roomName});
}

/// @nodoc
class _$RoomInfoCopyWithImpl<$Res> extends _$LookupCopyWithImpl<$Res>
    implements $RoomInfoCopyWith<$Res> {
  _$RoomInfoCopyWithImpl(RoomInfo _value, $Res Function(RoomInfo) _then)
      : super(_value, (v) => _then(v as RoomInfo));

  @override
  RoomInfo get _value => super._value as RoomInfo;

  @override
  $Res call({
    Object roomAddr = freezed,
    Object roomName = freezed,
  }) {
    return _then(RoomInfo(
      roomAddr: roomAddr == freezed ? _value.roomAddr : roomAddr as String,
      roomName: roomName == freezed ? _value.roomName : roomName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$RoomInfo implements RoomInfo {
  const _$RoomInfo(
      {@required @JsonKey(name: 'roomaddr') this.roomAddr,
      @required @JsonKey(name: 'roomname') this.roomName})
      : assert(roomAddr != null),
        assert(roomName != null);

  factory _$RoomInfo.fromJson(Map<String, dynamic> json) =>
      _$_$RoomInfoFromJson(json);

  @override
  @JsonKey(name: 'roomaddr')
  final String roomAddr;
  @override
  @JsonKey(name: 'roomname')
  final String roomName;

  @override
  String toString() {
    return 'Lookup.roomInfo(roomAddr: $roomAddr, roomName: $roomName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoomInfo &&
            (identical(other.roomAddr, roomAddr) ||
                const DeepCollectionEquality()
                    .equals(other.roomAddr, roomAddr)) &&
            (identical(other.roomName, roomName) ||
                const DeepCollectionEquality()
                    .equals(other.roomName, roomName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(roomAddr) ^
      const DeepCollectionEquality().hash(roomName);

  @JsonKey(ignore: true)
  @override
  $RoomInfoCopyWith<RoomInfo> get copyWith =>
      _$RoomInfoCopyWithImpl<RoomInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
            @JsonKey(name: 'roomname') String roomName),
    @required
        TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
            @JsonKey(name: 'subtermname') String subTermName),
    @required
        TResult sessionTerm(
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'isactive')
                bool isActive,
            @JsonKey(name: 'termname')
                String termName,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'grpname') String grpName,
            @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
            @JsonKey(name: 'sessionname') String sessionName,
            @JsonKey(name: 'isfrozen') bool isfrozen,
            @JsonKey(name: 'numperiods') int numperiods),
    @required
        TResult periodInfo(
            @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime dueDate,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate,
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'paymentperiodname')
                String paymentPeriodName,
            @JsonKey(name: 'numdays')
                int numDays),
    @required
        TResult classPeriodInfo(
            @JsonKey(name: 'schedule') List<Schedule> schedule,
            @JsonKey(name: 'type') String type),
    @required
        TResult schedule(
            @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startTime,
            @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endTime,
            @JsonKey(name: 'classperiodname')
                String classPeriodName),
    @required TResult offering(String offering),
    @required TResult feeItem(String feeItem),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return roomInfo(roomAddr, roomName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
        @JsonKey(name: 'roomname') String roomName),
    TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
        @JsonKey(name: 'subtermname') String subTermName),
    TResult sessionTerm(
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'isactive')
            bool isActive,
        @JsonKey(name: 'termname')
            String termName,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'grpname') String grpName,
        @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
        @JsonKey(name: 'sessionname') String sessionName,
        @JsonKey(name: 'isfrozen') bool isfrozen,
        @JsonKey(name: 'numperiods') int numperiods),
    TResult periodInfo(
        @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime dueDate,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate,
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'paymentperiodname')
            String paymentPeriodName,
        @JsonKey(name: 'numdays')
            int numDays),
    TResult classPeriodInfo(@JsonKey(name: 'schedule') List<Schedule> schedule,
        @JsonKey(name: 'type') String type),
    TResult schedule(
        @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startTime,
        @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endTime,
        @JsonKey(name: 'classperiodname')
            String classPeriodName),
    TResult offering(String offering),
    TResult feeItem(String feeItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomInfo != null) {
      return roomInfo(roomAddr, roomName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfo value),
    @required TResult periodInfo(PeriodInfo value),
    @required TResult classPeriodInfo(ClassPeriodInfo value),
    @required TResult schedule(Schedule value),
    @required TResult offering(Offering value),
    @required TResult feeItem(FeeItem value),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return roomInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
    TResult paymentPeriodInfo(PaymentPeriodInfo value),
    TResult periodInfo(PeriodInfo value),
    TResult classPeriodInfo(ClassPeriodInfo value),
    TResult schedule(Schedule value),
    TResult offering(Offering value),
    TResult feeItem(FeeItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomInfo != null) {
      return roomInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RoomInfoToJson(this)..['runtimeType'] = 'roomInfo';
  }
}

abstract class RoomInfo implements Lookup {
  const factory RoomInfo(
      {@required @JsonKey(name: 'roomaddr') String roomAddr,
      @required @JsonKey(name: 'roomname') String roomName}) = _$RoomInfo;

  factory RoomInfo.fromJson(Map<String, dynamic> json) = _$RoomInfo.fromJson;

  @JsonKey(name: 'roomaddr')
  String get roomAddr;
  @JsonKey(name: 'roomname')
  String get roomName;
  @JsonKey(ignore: true)
  $RoomInfoCopyWith<RoomInfo> get copyWith;
}

/// @nodoc
abstract class $ExamTermInfoCopyWith<$Res> {
  factory $ExamTermInfoCopyWith(
          ExamTermInfo value, $Res Function(ExamTermInfo) then) =
      _$ExamTermInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'maintermname') String mainTermName,
      @JsonKey(name: 'subtermname') String subTermName});
}

/// @nodoc
class _$ExamTermInfoCopyWithImpl<$Res> extends _$LookupCopyWithImpl<$Res>
    implements $ExamTermInfoCopyWith<$Res> {
  _$ExamTermInfoCopyWithImpl(
      ExamTermInfo _value, $Res Function(ExamTermInfo) _then)
      : super(_value, (v) => _then(v as ExamTermInfo));

  @override
  ExamTermInfo get _value => super._value as ExamTermInfo;

  @override
  $Res call({
    Object mainTermName = freezed,
    Object subTermName = freezed,
  }) {
    return _then(ExamTermInfo(
      mainTermName: mainTermName == freezed
          ? _value.mainTermName
          : mainTermName as String,
      subTermName:
          subTermName == freezed ? _value.subTermName : subTermName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$ExamTermInfo implements ExamTermInfo {
  const _$ExamTermInfo(
      {@required @JsonKey(name: 'maintermname') this.mainTermName,
      @required @JsonKey(name: 'subtermname') this.subTermName})
      : assert(mainTermName != null),
        assert(subTermName != null);

  factory _$ExamTermInfo.fromJson(Map<String, dynamic> json) =>
      _$_$ExamTermInfoFromJson(json);

  @override
  @JsonKey(name: 'maintermname')
  final String mainTermName;
  @override
  @JsonKey(name: 'subtermname')
  final String subTermName;

  @override
  String toString() {
    return 'Lookup.examTermInfo(mainTermName: $mainTermName, subTermName: $subTermName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExamTermInfo &&
            (identical(other.mainTermName, mainTermName) ||
                const DeepCollectionEquality()
                    .equals(other.mainTermName, mainTermName)) &&
            (identical(other.subTermName, subTermName) ||
                const DeepCollectionEquality()
                    .equals(other.subTermName, subTermName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mainTermName) ^
      const DeepCollectionEquality().hash(subTermName);

  @JsonKey(ignore: true)
  @override
  $ExamTermInfoCopyWith<ExamTermInfo> get copyWith =>
      _$ExamTermInfoCopyWithImpl<ExamTermInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
            @JsonKey(name: 'roomname') String roomName),
    @required
        TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
            @JsonKey(name: 'subtermname') String subTermName),
    @required
        TResult sessionTerm(
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'isactive')
                bool isActive,
            @JsonKey(name: 'termname')
                String termName,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'grpname') String grpName,
            @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
            @JsonKey(name: 'sessionname') String sessionName,
            @JsonKey(name: 'isfrozen') bool isfrozen,
            @JsonKey(name: 'numperiods') int numperiods),
    @required
        TResult periodInfo(
            @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime dueDate,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate,
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'paymentperiodname')
                String paymentPeriodName,
            @JsonKey(name: 'numdays')
                int numDays),
    @required
        TResult classPeriodInfo(
            @JsonKey(name: 'schedule') List<Schedule> schedule,
            @JsonKey(name: 'type') String type),
    @required
        TResult schedule(
            @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startTime,
            @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endTime,
            @JsonKey(name: 'classperiodname')
                String classPeriodName),
    @required TResult offering(String offering),
    @required TResult feeItem(String feeItem),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return examTermInfo(mainTermName, subTermName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
        @JsonKey(name: 'roomname') String roomName),
    TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
        @JsonKey(name: 'subtermname') String subTermName),
    TResult sessionTerm(
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'isactive')
            bool isActive,
        @JsonKey(name: 'termname')
            String termName,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'grpname') String grpName,
        @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
        @JsonKey(name: 'sessionname') String sessionName,
        @JsonKey(name: 'isfrozen') bool isfrozen,
        @JsonKey(name: 'numperiods') int numperiods),
    TResult periodInfo(
        @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime dueDate,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate,
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'paymentperiodname')
            String paymentPeriodName,
        @JsonKey(name: 'numdays')
            int numDays),
    TResult classPeriodInfo(@JsonKey(name: 'schedule') List<Schedule> schedule,
        @JsonKey(name: 'type') String type),
    TResult schedule(
        @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startTime,
        @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endTime,
        @JsonKey(name: 'classperiodname')
            String classPeriodName),
    TResult offering(String offering),
    TResult feeItem(String feeItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (examTermInfo != null) {
      return examTermInfo(mainTermName, subTermName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfo value),
    @required TResult periodInfo(PeriodInfo value),
    @required TResult classPeriodInfo(ClassPeriodInfo value),
    @required TResult schedule(Schedule value),
    @required TResult offering(Offering value),
    @required TResult feeItem(FeeItem value),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return examTermInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
    TResult paymentPeriodInfo(PaymentPeriodInfo value),
    TResult periodInfo(PeriodInfo value),
    TResult classPeriodInfo(ClassPeriodInfo value),
    TResult schedule(Schedule value),
    TResult offering(Offering value),
    TResult feeItem(FeeItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (examTermInfo != null) {
      return examTermInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ExamTermInfoToJson(this)..['runtimeType'] = 'examTermInfo';
  }
}

abstract class ExamTermInfo implements Lookup {
  const factory ExamTermInfo(
          {@required @JsonKey(name: 'maintermname') String mainTermName,
          @required @JsonKey(name: 'subtermname') String subTermName}) =
      _$ExamTermInfo;

  factory ExamTermInfo.fromJson(Map<String, dynamic> json) =
      _$ExamTermInfo.fromJson;

  @JsonKey(name: 'maintermname')
  String get mainTermName;
  @JsonKey(name: 'subtermname')
  String get subTermName;
  @JsonKey(ignore: true)
  $ExamTermInfoCopyWith<ExamTermInfo> get copyWith;
}

/// @nodoc
abstract class $SessionTermCopyWith<$Res> {
  factory $SessionTermCopyWith(
          SessionTerm value, $Res Function(SessionTerm) then) =
      _$SessionTermCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'isactive')
          bool isActive,
      @JsonKey(name: 'termname')
          String termName,
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate});
}

/// @nodoc
class _$SessionTermCopyWithImpl<$Res> extends _$LookupCopyWithImpl<$Res>
    implements $SessionTermCopyWith<$Res> {
  _$SessionTermCopyWithImpl(
      SessionTerm _value, $Res Function(SessionTerm) _then)
      : super(_value, (v) => _then(v as SessionTerm));

  @override
  SessionTerm get _value => super._value as SessionTerm;

  @override
  $Res call({
    Object endDate = freezed,
    Object isActive = freezed,
    Object termName = freezed,
    Object startDate = freezed,
  }) {
    return _then(SessionTerm(
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
      termName: termName == freezed ? _value.termName : termName as String,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$SessionTerm implements SessionTerm {
  const _$SessionTerm(
      {@required
      @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.endDate,
      @required
      @JsonKey(name: 'isactive')
          this.isActive,
      @required
      @JsonKey(name: 'termname')
          this.termName,
      @required
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.startDate})
      : assert(endDate != null),
        assert(isActive != null),
        assert(termName != null),
        assert(startDate != null);

  factory _$SessionTerm.fromJson(Map<String, dynamic> json) =>
      _$_$SessionTermFromJson(json);

  @override
  @JsonKey(
      name: "enddate",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime endDate;
  @override
  @JsonKey(name: 'isactive')
  final bool isActive;
  @override
  @JsonKey(name: 'termname')
  final String termName;
  @override
  @JsonKey(
      name: "startdate",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime startDate;

  @override
  String toString() {
    return 'Lookup.sessionTerm(endDate: $endDate, isActive: $isActive, termName: $termName, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionTerm &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.termName, termName) ||
                const DeepCollectionEquality()
                    .equals(other.termName, termName)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(termName) ^
      const DeepCollectionEquality().hash(startDate);

  @JsonKey(ignore: true)
  @override
  $SessionTermCopyWith<SessionTerm> get copyWith =>
      _$SessionTermCopyWithImpl<SessionTerm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
            @JsonKey(name: 'roomname') String roomName),
    @required
        TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
            @JsonKey(name: 'subtermname') String subTermName),
    @required
        TResult sessionTerm(
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'isactive')
                bool isActive,
            @JsonKey(name: 'termname')
                String termName,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'grpname') String grpName,
            @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
            @JsonKey(name: 'sessionname') String sessionName,
            @JsonKey(name: 'isfrozen') bool isfrozen,
            @JsonKey(name: 'numperiods') int numperiods),
    @required
        TResult periodInfo(
            @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime dueDate,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate,
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'paymentperiodname')
                String paymentPeriodName,
            @JsonKey(name: 'numdays')
                int numDays),
    @required
        TResult classPeriodInfo(
            @JsonKey(name: 'schedule') List<Schedule> schedule,
            @JsonKey(name: 'type') String type),
    @required
        TResult schedule(
            @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startTime,
            @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endTime,
            @JsonKey(name: 'classperiodname')
                String classPeriodName),
    @required TResult offering(String offering),
    @required TResult feeItem(String feeItem),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return sessionTerm(endDate, isActive, termName, startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
        @JsonKey(name: 'roomname') String roomName),
    TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
        @JsonKey(name: 'subtermname') String subTermName),
    TResult sessionTerm(
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'isactive')
            bool isActive,
        @JsonKey(name: 'termname')
            String termName,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'grpname') String grpName,
        @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
        @JsonKey(name: 'sessionname') String sessionName,
        @JsonKey(name: 'isfrozen') bool isfrozen,
        @JsonKey(name: 'numperiods') int numperiods),
    TResult periodInfo(
        @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime dueDate,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate,
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'paymentperiodname')
            String paymentPeriodName,
        @JsonKey(name: 'numdays')
            int numDays),
    TResult classPeriodInfo(@JsonKey(name: 'schedule') List<Schedule> schedule,
        @JsonKey(name: 'type') String type),
    TResult schedule(
        @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startTime,
        @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endTime,
        @JsonKey(name: 'classperiodname')
            String classPeriodName),
    TResult offering(String offering),
    TResult feeItem(String feeItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionTerm != null) {
      return sessionTerm(endDate, isActive, termName, startDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfo value),
    @required TResult periodInfo(PeriodInfo value),
    @required TResult classPeriodInfo(ClassPeriodInfo value),
    @required TResult schedule(Schedule value),
    @required TResult offering(Offering value),
    @required TResult feeItem(FeeItem value),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return sessionTerm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
    TResult paymentPeriodInfo(PaymentPeriodInfo value),
    TResult periodInfo(PeriodInfo value),
    TResult classPeriodInfo(ClassPeriodInfo value),
    TResult schedule(Schedule value),
    TResult offering(Offering value),
    TResult feeItem(FeeItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionTerm != null) {
      return sessionTerm(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SessionTermToJson(this)..['runtimeType'] = 'sessionTerm';
  }
}

abstract class SessionTerm implements Lookup {
  const factory SessionTerm(
      {@required
      @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @required
      @JsonKey(name: 'isactive')
          bool isActive,
      @required
      @JsonKey(name: 'termname')
          String termName,
      @required
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate}) = _$SessionTerm;

  factory SessionTerm.fromJson(Map<String, dynamic> json) =
      _$SessionTerm.fromJson;

  @JsonKey(
      name: "enddate",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endDate;
  @JsonKey(name: 'isactive')
  bool get isActive;
  @JsonKey(name: 'termname')
  String get termName;
  @JsonKey(
      name: "startdate",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startDate;
  @JsonKey(ignore: true)
  $SessionTermCopyWith<SessionTerm> get copyWith;
}

/// @nodoc
abstract class $PaymentPeriodInfoCopyWith<$Res> {
  factory $PaymentPeriodInfoCopyWith(
          PaymentPeriodInfo value, $Res Function(PaymentPeriodInfo) then) =
      _$PaymentPeriodInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'grpname') String grpName,
      @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
      @JsonKey(name: 'sessionname') String sessionName,
      @JsonKey(name: 'isfrozen') bool isfrozen,
      @JsonKey(name: 'numperiods') int numperiods});
}

/// @nodoc
class _$PaymentPeriodInfoCopyWithImpl<$Res> extends _$LookupCopyWithImpl<$Res>
    implements $PaymentPeriodInfoCopyWith<$Res> {
  _$PaymentPeriodInfoCopyWithImpl(
      PaymentPeriodInfo _value, $Res Function(PaymentPeriodInfo) _then)
      : super(_value, (v) => _then(v as PaymentPeriodInfo));

  @override
  PaymentPeriodInfo get _value => super._value as PaymentPeriodInfo;

  @override
  $Res call({
    Object grpName = freezed,
    Object periodInfo = freezed,
    Object sessionName = freezed,
    Object isfrozen = freezed,
    Object numperiods = freezed,
  }) {
    return _then(PaymentPeriodInfo(
      grpName: grpName == freezed ? _value.grpName : grpName as String,
      periodInfo: periodInfo == freezed
          ? _value.periodInfo
          : periodInfo as List<PeriodInfo>,
      sessionName:
          sessionName == freezed ? _value.sessionName : sessionName as String,
      isfrozen: isfrozen == freezed ? _value.isfrozen : isfrozen as bool,
      numperiods: numperiods == freezed ? _value.numperiods : numperiods as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$PaymentPeriodInfo implements PaymentPeriodInfo {
  const _$PaymentPeriodInfo(
      {@required @JsonKey(name: 'grpname') this.grpName,
      @required @JsonKey(name: 'periodinfo') this.periodInfo,
      @required @JsonKey(name: 'sessionname') this.sessionName,
      @required @JsonKey(name: 'isfrozen') this.isfrozen,
      @required @JsonKey(name: 'numperiods') this.numperiods})
      : assert(grpName != null),
        assert(periodInfo != null),
        assert(sessionName != null),
        assert(isfrozen != null),
        assert(numperiods != null);

  factory _$PaymentPeriodInfo.fromJson(Map<String, dynamic> json) =>
      _$_$PaymentPeriodInfoFromJson(json);

  @override
  @JsonKey(name: 'grpname')
  final String grpName;
  @override
  @JsonKey(name: 'periodinfo')
  final List<PeriodInfo> periodInfo;
  @override
  @JsonKey(name: 'sessionname')
  final String sessionName;
  @override
  @JsonKey(name: 'isfrozen')
  final bool isfrozen;
  @override
  @JsonKey(name: 'numperiods')
  final int numperiods;

  @override
  String toString() {
    return 'Lookup.paymentPeriodInfo(grpName: $grpName, periodInfo: $periodInfo, sessionName: $sessionName, isfrozen: $isfrozen, numperiods: $numperiods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentPeriodInfo &&
            (identical(other.grpName, grpName) ||
                const DeepCollectionEquality()
                    .equals(other.grpName, grpName)) &&
            (identical(other.periodInfo, periodInfo) ||
                const DeepCollectionEquality()
                    .equals(other.periodInfo, periodInfo)) &&
            (identical(other.sessionName, sessionName) ||
                const DeepCollectionEquality()
                    .equals(other.sessionName, sessionName)) &&
            (identical(other.isfrozen, isfrozen) ||
                const DeepCollectionEquality()
                    .equals(other.isfrozen, isfrozen)) &&
            (identical(other.numperiods, numperiods) ||
                const DeepCollectionEquality()
                    .equals(other.numperiods, numperiods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(grpName) ^
      const DeepCollectionEquality().hash(periodInfo) ^
      const DeepCollectionEquality().hash(sessionName) ^
      const DeepCollectionEquality().hash(isfrozen) ^
      const DeepCollectionEquality().hash(numperiods);

  @JsonKey(ignore: true)
  @override
  $PaymentPeriodInfoCopyWith<PaymentPeriodInfo> get copyWith =>
      _$PaymentPeriodInfoCopyWithImpl<PaymentPeriodInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
            @JsonKey(name: 'roomname') String roomName),
    @required
        TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
            @JsonKey(name: 'subtermname') String subTermName),
    @required
        TResult sessionTerm(
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'isactive')
                bool isActive,
            @JsonKey(name: 'termname')
                String termName,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'grpname') String grpName,
            @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
            @JsonKey(name: 'sessionname') String sessionName,
            @JsonKey(name: 'isfrozen') bool isfrozen,
            @JsonKey(name: 'numperiods') int numperiods),
    @required
        TResult periodInfo(
            @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime dueDate,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate,
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'paymentperiodname')
                String paymentPeriodName,
            @JsonKey(name: 'numdays')
                int numDays),
    @required
        TResult classPeriodInfo(
            @JsonKey(name: 'schedule') List<Schedule> schedule,
            @JsonKey(name: 'type') String type),
    @required
        TResult schedule(
            @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startTime,
            @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endTime,
            @JsonKey(name: 'classperiodname')
                String classPeriodName),
    @required TResult offering(String offering),
    @required TResult feeItem(String feeItem),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return paymentPeriodInfo(
        grpName, this.periodInfo, sessionName, isfrozen, numperiods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
        @JsonKey(name: 'roomname') String roomName),
    TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
        @JsonKey(name: 'subtermname') String subTermName),
    TResult sessionTerm(
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'isactive')
            bool isActive,
        @JsonKey(name: 'termname')
            String termName,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'grpname') String grpName,
        @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
        @JsonKey(name: 'sessionname') String sessionName,
        @JsonKey(name: 'isfrozen') bool isfrozen,
        @JsonKey(name: 'numperiods') int numperiods),
    TResult periodInfo(
        @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime dueDate,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate,
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'paymentperiodname')
            String paymentPeriodName,
        @JsonKey(name: 'numdays')
            int numDays),
    TResult classPeriodInfo(@JsonKey(name: 'schedule') List<Schedule> schedule,
        @JsonKey(name: 'type') String type),
    TResult schedule(
        @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startTime,
        @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endTime,
        @JsonKey(name: 'classperiodname')
            String classPeriodName),
    TResult offering(String offering),
    TResult feeItem(String feeItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentPeriodInfo != null) {
      return paymentPeriodInfo(
          grpName, this.periodInfo, sessionName, isfrozen, numperiods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfo value),
    @required TResult periodInfo(PeriodInfo value),
    @required TResult classPeriodInfo(ClassPeriodInfo value),
    @required TResult schedule(Schedule value),
    @required TResult offering(Offering value),
    @required TResult feeItem(FeeItem value),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return paymentPeriodInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
    TResult paymentPeriodInfo(PaymentPeriodInfo value),
    TResult periodInfo(PeriodInfo value),
    TResult classPeriodInfo(ClassPeriodInfo value),
    TResult schedule(Schedule value),
    TResult offering(Offering value),
    TResult feeItem(FeeItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentPeriodInfo != null) {
      return paymentPeriodInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PaymentPeriodInfoToJson(this)
      ..['runtimeType'] = 'paymentPeriodInfo';
  }
}

abstract class PaymentPeriodInfo implements Lookup {
  const factory PaymentPeriodInfo(
          {@required @JsonKey(name: 'grpname') String grpName,
          @required @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
          @required @JsonKey(name: 'sessionname') String sessionName,
          @required @JsonKey(name: 'isfrozen') bool isfrozen,
          @required @JsonKey(name: 'numperiods') int numperiods}) =
      _$PaymentPeriodInfo;

  factory PaymentPeriodInfo.fromJson(Map<String, dynamic> json) =
      _$PaymentPeriodInfo.fromJson;

  @JsonKey(name: 'grpname')
  String get grpName;
  @JsonKey(name: 'periodinfo')
  List<PeriodInfo> get periodInfo;
  @JsonKey(name: 'sessionname')
  String get sessionName;
  @JsonKey(name: 'isfrozen')
  bool get isfrozen;
  @JsonKey(name: 'numperiods')
  int get numperiods;
  @JsonKey(ignore: true)
  $PaymentPeriodInfoCopyWith<PaymentPeriodInfo> get copyWith;
}

/// @nodoc
abstract class $PeriodInfoCopyWith<$Res> {
  factory $PeriodInfoCopyWith(
          PeriodInfo value, $Res Function(PeriodInfo) then) =
      _$PeriodInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime dueDate,
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'paymentperiodname')
          String paymentPeriodName,
      @JsonKey(name: 'numdays')
          int numDays});
}

/// @nodoc
class _$PeriodInfoCopyWithImpl<$Res> extends _$LookupCopyWithImpl<$Res>
    implements $PeriodInfoCopyWith<$Res> {
  _$PeriodInfoCopyWithImpl(PeriodInfo _value, $Res Function(PeriodInfo) _then)
      : super(_value, (v) => _then(v as PeriodInfo));

  @override
  PeriodInfo get _value => super._value as PeriodInfo;

  @override
  $Res call({
    Object dueDate = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object paymentPeriodName = freezed,
    Object numDays = freezed,
  }) {
    return _then(PeriodInfo(
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as DateTime,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      paymentPeriodName: paymentPeriodName == freezed
          ? _value.paymentPeriodName
          : paymentPeriodName as String,
      numDays: numDays == freezed ? _value.numDays : numDays as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$PeriodInfo implements PeriodInfo {
  const _$PeriodInfo(
      {@required
      @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.dueDate,
      @required
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.startDate,
      @required
      @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.endDate,
      @required
      @JsonKey(name: 'paymentperiodname')
          this.paymentPeriodName,
      @required
      @JsonKey(name: 'numdays')
          this.numDays})
      : assert(dueDate != null),
        assert(startDate != null),
        assert(endDate != null),
        assert(paymentPeriodName != null),
        assert(numDays != null);

  factory _$PeriodInfo.fromJson(Map<String, dynamic> json) =>
      _$_$PeriodInfoFromJson(json);

  @override
  @JsonKey(
      name: "duedate",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime dueDate;
  @override
  @JsonKey(
      name: "startdate",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime startDate;
  @override
  @JsonKey(
      name: "enddate",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime endDate;
  @override
  @JsonKey(name: 'paymentperiodname')
  final String paymentPeriodName;
  @override
  @JsonKey(name: 'numdays')
  final int numDays;

  @override
  String toString() {
    return 'Lookup.periodInfo(dueDate: $dueDate, startDate: $startDate, endDate: $endDate, paymentPeriodName: $paymentPeriodName, numDays: $numDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PeriodInfo &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.paymentPeriodName, paymentPeriodName) ||
                const DeepCollectionEquality()
                    .equals(other.paymentPeriodName, paymentPeriodName)) &&
            (identical(other.numDays, numDays) ||
                const DeepCollectionEquality().equals(other.numDays, numDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(paymentPeriodName) ^
      const DeepCollectionEquality().hash(numDays);

  @JsonKey(ignore: true)
  @override
  $PeriodInfoCopyWith<PeriodInfo> get copyWith =>
      _$PeriodInfoCopyWithImpl<PeriodInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
            @JsonKey(name: 'roomname') String roomName),
    @required
        TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
            @JsonKey(name: 'subtermname') String subTermName),
    @required
        TResult sessionTerm(
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'isactive')
                bool isActive,
            @JsonKey(name: 'termname')
                String termName,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'grpname') String grpName,
            @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
            @JsonKey(name: 'sessionname') String sessionName,
            @JsonKey(name: 'isfrozen') bool isfrozen,
            @JsonKey(name: 'numperiods') int numperiods),
    @required
        TResult periodInfo(
            @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime dueDate,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate,
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'paymentperiodname')
                String paymentPeriodName,
            @JsonKey(name: 'numdays')
                int numDays),
    @required
        TResult classPeriodInfo(
            @JsonKey(name: 'schedule') List<Schedule> schedule,
            @JsonKey(name: 'type') String type),
    @required
        TResult schedule(
            @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startTime,
            @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endTime,
            @JsonKey(name: 'classperiodname')
                String classPeriodName),
    @required TResult offering(String offering),
    @required TResult feeItem(String feeItem),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return periodInfo(dueDate, startDate, endDate, paymentPeriodName, numDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
        @JsonKey(name: 'roomname') String roomName),
    TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
        @JsonKey(name: 'subtermname') String subTermName),
    TResult sessionTerm(
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'isactive')
            bool isActive,
        @JsonKey(name: 'termname')
            String termName,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'grpname') String grpName,
        @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
        @JsonKey(name: 'sessionname') String sessionName,
        @JsonKey(name: 'isfrozen') bool isfrozen,
        @JsonKey(name: 'numperiods') int numperiods),
    TResult periodInfo(
        @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime dueDate,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate,
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'paymentperiodname')
            String paymentPeriodName,
        @JsonKey(name: 'numdays')
            int numDays),
    TResult classPeriodInfo(@JsonKey(name: 'schedule') List<Schedule> schedule,
        @JsonKey(name: 'type') String type),
    TResult schedule(
        @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startTime,
        @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endTime,
        @JsonKey(name: 'classperiodname')
            String classPeriodName),
    TResult offering(String offering),
    TResult feeItem(String feeItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (periodInfo != null) {
      return periodInfo(
          dueDate, startDate, endDate, paymentPeriodName, numDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfo value),
    @required TResult periodInfo(PeriodInfo value),
    @required TResult classPeriodInfo(ClassPeriodInfo value),
    @required TResult schedule(Schedule value),
    @required TResult offering(Offering value),
    @required TResult feeItem(FeeItem value),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return periodInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
    TResult paymentPeriodInfo(PaymentPeriodInfo value),
    TResult periodInfo(PeriodInfo value),
    TResult classPeriodInfo(ClassPeriodInfo value),
    TResult schedule(Schedule value),
    TResult offering(Offering value),
    TResult feeItem(FeeItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (periodInfo != null) {
      return periodInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PeriodInfoToJson(this)..['runtimeType'] = 'periodInfo';
  }
}

abstract class PeriodInfo implements Lookup {
  const factory PeriodInfo(
      {@required
      @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime dueDate,
      @required
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @required
      @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @required
      @JsonKey(name: 'paymentperiodname')
          String paymentPeriodName,
      @required
      @JsonKey(name: 'numdays')
          int numDays}) = _$PeriodInfo;

  factory PeriodInfo.fromJson(Map<String, dynamic> json) =
      _$PeriodInfo.fromJson;

  @JsonKey(
      name: "duedate",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get dueDate;
  @JsonKey(
      name: "startdate",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startDate;
  @JsonKey(
      name: "enddate",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endDate;
  @JsonKey(name: 'paymentperiodname')
  String get paymentPeriodName;
  @JsonKey(name: 'numdays')
  int get numDays;
  @JsonKey(ignore: true)
  $PeriodInfoCopyWith<PeriodInfo> get copyWith;
}

/// @nodoc
abstract class $ClassPeriodInfoCopyWith<$Res> {
  factory $ClassPeriodInfoCopyWith(
          ClassPeriodInfo value, $Res Function(ClassPeriodInfo) then) =
      _$ClassPeriodInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'schedule') List<Schedule> schedule,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class _$ClassPeriodInfoCopyWithImpl<$Res> extends _$LookupCopyWithImpl<$Res>
    implements $ClassPeriodInfoCopyWith<$Res> {
  _$ClassPeriodInfoCopyWithImpl(
      ClassPeriodInfo _value, $Res Function(ClassPeriodInfo) _then)
      : super(_value, (v) => _then(v as ClassPeriodInfo));

  @override
  ClassPeriodInfo get _value => super._value as ClassPeriodInfo;

  @override
  $Res call({
    Object schedule = freezed,
    Object type = freezed,
  }) {
    return _then(ClassPeriodInfo(
      schedule:
          schedule == freezed ? _value.schedule : schedule as List<Schedule>,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$ClassPeriodInfo implements ClassPeriodInfo {
  const _$ClassPeriodInfo(
      {@required @JsonKey(name: 'schedule') this.schedule,
      @required @JsonKey(name: 'type') this.type})
      : assert(schedule != null),
        assert(type != null);

  factory _$ClassPeriodInfo.fromJson(Map<String, dynamic> json) =>
      _$_$ClassPeriodInfoFromJson(json);

  @override
  @JsonKey(name: 'schedule')
  final List<Schedule> schedule;
  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'Lookup.classPeriodInfo(schedule: $schedule, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClassPeriodInfo &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  $ClassPeriodInfoCopyWith<ClassPeriodInfo> get copyWith =>
      _$ClassPeriodInfoCopyWithImpl<ClassPeriodInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
            @JsonKey(name: 'roomname') String roomName),
    @required
        TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
            @JsonKey(name: 'subtermname') String subTermName),
    @required
        TResult sessionTerm(
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'isactive')
                bool isActive,
            @JsonKey(name: 'termname')
                String termName,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'grpname') String grpName,
            @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
            @JsonKey(name: 'sessionname') String sessionName,
            @JsonKey(name: 'isfrozen') bool isfrozen,
            @JsonKey(name: 'numperiods') int numperiods),
    @required
        TResult periodInfo(
            @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime dueDate,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate,
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'paymentperiodname')
                String paymentPeriodName,
            @JsonKey(name: 'numdays')
                int numDays),
    @required
        TResult classPeriodInfo(
            @JsonKey(name: 'schedule') List<Schedule> schedule,
            @JsonKey(name: 'type') String type),
    @required
        TResult schedule(
            @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startTime,
            @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endTime,
            @JsonKey(name: 'classperiodname')
                String classPeriodName),
    @required TResult offering(String offering),
    @required TResult feeItem(String feeItem),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return classPeriodInfo(this.schedule, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
        @JsonKey(name: 'roomname') String roomName),
    TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
        @JsonKey(name: 'subtermname') String subTermName),
    TResult sessionTerm(
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'isactive')
            bool isActive,
        @JsonKey(name: 'termname')
            String termName,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'grpname') String grpName,
        @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
        @JsonKey(name: 'sessionname') String sessionName,
        @JsonKey(name: 'isfrozen') bool isfrozen,
        @JsonKey(name: 'numperiods') int numperiods),
    TResult periodInfo(
        @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime dueDate,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate,
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'paymentperiodname')
            String paymentPeriodName,
        @JsonKey(name: 'numdays')
            int numDays),
    TResult classPeriodInfo(@JsonKey(name: 'schedule') List<Schedule> schedule,
        @JsonKey(name: 'type') String type),
    TResult schedule(
        @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startTime,
        @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endTime,
        @JsonKey(name: 'classperiodname')
            String classPeriodName),
    TResult offering(String offering),
    TResult feeItem(String feeItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (classPeriodInfo != null) {
      return classPeriodInfo(this.schedule, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfo value),
    @required TResult periodInfo(PeriodInfo value),
    @required TResult classPeriodInfo(ClassPeriodInfo value),
    @required TResult schedule(Schedule value),
    @required TResult offering(Offering value),
    @required TResult feeItem(FeeItem value),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return classPeriodInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
    TResult paymentPeriodInfo(PaymentPeriodInfo value),
    TResult periodInfo(PeriodInfo value),
    TResult classPeriodInfo(ClassPeriodInfo value),
    TResult schedule(Schedule value),
    TResult offering(Offering value),
    TResult feeItem(FeeItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (classPeriodInfo != null) {
      return classPeriodInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ClassPeriodInfoToJson(this)..['runtimeType'] = 'classPeriodInfo';
  }
}

abstract class ClassPeriodInfo implements Lookup {
  const factory ClassPeriodInfo(
      {@required @JsonKey(name: 'schedule') List<Schedule> schedule,
      @required @JsonKey(name: 'type') String type}) = _$ClassPeriodInfo;

  factory ClassPeriodInfo.fromJson(Map<String, dynamic> json) =
      _$ClassPeriodInfo.fromJson;

  @JsonKey(name: 'schedule')
  List<Schedule> get schedule;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(ignore: true)
  $ClassPeriodInfoCopyWith<ClassPeriodInfo> get copyWith;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startTime,
      @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endTime,
      @JsonKey(name: 'classperiodname')
          String classPeriodName});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res> extends _$LookupCopyWithImpl<$Res>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(Schedule _value, $Res Function(Schedule) _then)
      : super(_value, (v) => _then(v as Schedule));

  @override
  Schedule get _value => super._value as Schedule;

  @override
  $Res call({
    Object startTime = freezed,
    Object endTime = freezed,
    Object classPeriodName = freezed,
  }) {
    return _then(Schedule(
      startTime:
          startTime == freezed ? _value.startTime : startTime as DateTime,
      endTime: endTime == freezed ? _value.endTime : endTime as DateTime,
      classPeriodName: classPeriodName == freezed
          ? _value.classPeriodName
          : classPeriodName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Schedule implements Schedule {
  const _$Schedule(
      {@required
      @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.startTime,
      @required
      @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.endTime,
      @required
      @JsonKey(name: 'classperiodname')
          this.classPeriodName})
      : assert(startTime != null),
        assert(endTime != null),
        assert(classPeriodName != null);

  factory _$Schedule.fromJson(Map<String, dynamic> json) =>
      _$_$ScheduleFromJson(json);

  @override
  @JsonKey(
      name: "starttime",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime startTime;
  @override
  @JsonKey(
      name: "endtime",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime endTime;
  @override
  @JsonKey(name: 'classperiodname')
  final String classPeriodName;

  @override
  String toString() {
    return 'Lookup.schedule(startTime: $startTime, endTime: $endTime, classPeriodName: $classPeriodName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Schedule &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.classPeriodName, classPeriodName) ||
                const DeepCollectionEquality()
                    .equals(other.classPeriodName, classPeriodName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(classPeriodName);

  @JsonKey(ignore: true)
  @override
  $ScheduleCopyWith<Schedule> get copyWith =>
      _$ScheduleCopyWithImpl<Schedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
            @JsonKey(name: 'roomname') String roomName),
    @required
        TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
            @JsonKey(name: 'subtermname') String subTermName),
    @required
        TResult sessionTerm(
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'isactive')
                bool isActive,
            @JsonKey(name: 'termname')
                String termName,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'grpname') String grpName,
            @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
            @JsonKey(name: 'sessionname') String sessionName,
            @JsonKey(name: 'isfrozen') bool isfrozen,
            @JsonKey(name: 'numperiods') int numperiods),
    @required
        TResult periodInfo(
            @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime dueDate,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate,
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'paymentperiodname')
                String paymentPeriodName,
            @JsonKey(name: 'numdays')
                int numDays),
    @required
        TResult classPeriodInfo(
            @JsonKey(name: 'schedule') List<Schedule> schedule,
            @JsonKey(name: 'type') String type),
    @required
        TResult schedule(
            @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startTime,
            @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endTime,
            @JsonKey(name: 'classperiodname')
                String classPeriodName),
    @required TResult offering(String offering),
    @required TResult feeItem(String feeItem),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return schedule(startTime, endTime, classPeriodName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
        @JsonKey(name: 'roomname') String roomName),
    TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
        @JsonKey(name: 'subtermname') String subTermName),
    TResult sessionTerm(
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'isactive')
            bool isActive,
        @JsonKey(name: 'termname')
            String termName,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'grpname') String grpName,
        @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
        @JsonKey(name: 'sessionname') String sessionName,
        @JsonKey(name: 'isfrozen') bool isfrozen,
        @JsonKey(name: 'numperiods') int numperiods),
    TResult periodInfo(
        @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime dueDate,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate,
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'paymentperiodname')
            String paymentPeriodName,
        @JsonKey(name: 'numdays')
            int numDays),
    TResult classPeriodInfo(@JsonKey(name: 'schedule') List<Schedule> schedule,
        @JsonKey(name: 'type') String type),
    TResult schedule(
        @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startTime,
        @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endTime,
        @JsonKey(name: 'classperiodname')
            String classPeriodName),
    TResult offering(String offering),
    TResult feeItem(String feeItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (schedule != null) {
      return schedule(startTime, endTime, classPeriodName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfo value),
    @required TResult periodInfo(PeriodInfo value),
    @required TResult classPeriodInfo(ClassPeriodInfo value),
    @required TResult schedule(Schedule value),
    @required TResult offering(Offering value),
    @required TResult feeItem(FeeItem value),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return schedule(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
    TResult paymentPeriodInfo(PaymentPeriodInfo value),
    TResult periodInfo(PeriodInfo value),
    TResult classPeriodInfo(ClassPeriodInfo value),
    TResult schedule(Schedule value),
    TResult offering(Offering value),
    TResult feeItem(FeeItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (schedule != null) {
      return schedule(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ScheduleToJson(this)..['runtimeType'] = 'schedule';
  }
}

abstract class Schedule implements Lookup {
  const factory Schedule(
      {@required
      @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startTime,
      @required
      @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endTime,
      @required
      @JsonKey(name: 'classperiodname')
          String classPeriodName}) = _$Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) = _$Schedule.fromJson;

  @JsonKey(
      name: "starttime",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startTime;
  @JsonKey(
      name: "endtime",
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endTime;
  @JsonKey(name: 'classperiodname')
  String get classPeriodName;
  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith;
}

/// @nodoc
abstract class $OfferingCopyWith<$Res> {
  factory $OfferingCopyWith(Offering value, $Res Function(Offering) then) =
      _$OfferingCopyWithImpl<$Res>;
  $Res call({String offering});
}

/// @nodoc
class _$OfferingCopyWithImpl<$Res> extends _$LookupCopyWithImpl<$Res>
    implements $OfferingCopyWith<$Res> {
  _$OfferingCopyWithImpl(Offering _value, $Res Function(Offering) _then)
      : super(_value, (v) => _then(v as Offering));

  @override
  Offering get _value => super._value as Offering;

  @override
  $Res call({
    Object offering = freezed,
  }) {
    return _then(Offering(
      offering: offering == freezed ? _value.offering : offering as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Offering implements Offering {
  const _$Offering({@required this.offering}) : assert(offering != null);

  factory _$Offering.fromJson(Map<String, dynamic> json) =>
      _$_$OfferingFromJson(json);

  @override
  final String offering;

  @override
  String toString() {
    return 'Lookup.offering(offering: $offering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Offering &&
            (identical(other.offering, offering) ||
                const DeepCollectionEquality()
                    .equals(other.offering, offering)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(offering);

  @JsonKey(ignore: true)
  @override
  $OfferingCopyWith<Offering> get copyWith =>
      _$OfferingCopyWithImpl<Offering>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
            @JsonKey(name: 'roomname') String roomName),
    @required
        TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
            @JsonKey(name: 'subtermname') String subTermName),
    @required
        TResult sessionTerm(
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'isactive')
                bool isActive,
            @JsonKey(name: 'termname')
                String termName,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'grpname') String grpName,
            @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
            @JsonKey(name: 'sessionname') String sessionName,
            @JsonKey(name: 'isfrozen') bool isfrozen,
            @JsonKey(name: 'numperiods') int numperiods),
    @required
        TResult periodInfo(
            @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime dueDate,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate,
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'paymentperiodname')
                String paymentPeriodName,
            @JsonKey(name: 'numdays')
                int numDays),
    @required
        TResult classPeriodInfo(
            @JsonKey(name: 'schedule') List<Schedule> schedule,
            @JsonKey(name: 'type') String type),
    @required
        TResult schedule(
            @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startTime,
            @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endTime,
            @JsonKey(name: 'classperiodname')
                String classPeriodName),
    @required TResult offering(String offering),
    @required TResult feeItem(String feeItem),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return offering(this.offering);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
        @JsonKey(name: 'roomname') String roomName),
    TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
        @JsonKey(name: 'subtermname') String subTermName),
    TResult sessionTerm(
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'isactive')
            bool isActive,
        @JsonKey(name: 'termname')
            String termName,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'grpname') String grpName,
        @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
        @JsonKey(name: 'sessionname') String sessionName,
        @JsonKey(name: 'isfrozen') bool isfrozen,
        @JsonKey(name: 'numperiods') int numperiods),
    TResult periodInfo(
        @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime dueDate,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate,
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'paymentperiodname')
            String paymentPeriodName,
        @JsonKey(name: 'numdays')
            int numDays),
    TResult classPeriodInfo(@JsonKey(name: 'schedule') List<Schedule> schedule,
        @JsonKey(name: 'type') String type),
    TResult schedule(
        @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startTime,
        @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endTime,
        @JsonKey(name: 'classperiodname')
            String classPeriodName),
    TResult offering(String offering),
    TResult feeItem(String feeItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offering != null) {
      return offering(this.offering);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfo value),
    @required TResult periodInfo(PeriodInfo value),
    @required TResult classPeriodInfo(ClassPeriodInfo value),
    @required TResult schedule(Schedule value),
    @required TResult offering(Offering value),
    @required TResult feeItem(FeeItem value),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return offering(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
    TResult paymentPeriodInfo(PaymentPeriodInfo value),
    TResult periodInfo(PeriodInfo value),
    TResult classPeriodInfo(ClassPeriodInfo value),
    TResult schedule(Schedule value),
    TResult offering(Offering value),
    TResult feeItem(FeeItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offering != null) {
      return offering(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$OfferingToJson(this)..['runtimeType'] = 'offering';
  }
}

abstract class Offering implements Lookup {
  const factory Offering({@required String offering}) = _$Offering;

  factory Offering.fromJson(Map<String, dynamic> json) = _$Offering.fromJson;

  String get offering;
  @JsonKey(ignore: true)
  $OfferingCopyWith<Offering> get copyWith;
}

/// @nodoc
abstract class $FeeItemCopyWith<$Res> {
  factory $FeeItemCopyWith(FeeItem value, $Res Function(FeeItem) then) =
      _$FeeItemCopyWithImpl<$Res>;
  $Res call({String feeItem});
}

/// @nodoc
class _$FeeItemCopyWithImpl<$Res> extends _$LookupCopyWithImpl<$Res>
    implements $FeeItemCopyWith<$Res> {
  _$FeeItemCopyWithImpl(FeeItem _value, $Res Function(FeeItem) _then)
      : super(_value, (v) => _then(v as FeeItem));

  @override
  FeeItem get _value => super._value as FeeItem;

  @override
  $Res call({
    Object feeItem = freezed,
  }) {
    return _then(FeeItem(
      feeItem: feeItem == freezed ? _value.feeItem : feeItem as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$FeeItem implements FeeItem {
  const _$FeeItem({@required this.feeItem}) : assert(feeItem != null);

  factory _$FeeItem.fromJson(Map<String, dynamic> json) =>
      _$_$FeeItemFromJson(json);

  @override
  final String feeItem;

  @override
  String toString() {
    return 'Lookup.feeItem(feeItem: $feeItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeeItem &&
            (identical(other.feeItem, feeItem) ||
                const DeepCollectionEquality().equals(other.feeItem, feeItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(feeItem);

  @JsonKey(ignore: true)
  @override
  $FeeItemCopyWith<FeeItem> get copyWith =>
      _$FeeItemCopyWithImpl<FeeItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
            @JsonKey(name: 'roomname') String roomName),
    @required
        TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
            @JsonKey(name: 'subtermname') String subTermName),
    @required
        TResult sessionTerm(
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'isactive')
                bool isActive,
            @JsonKey(name: 'termname')
                String termName,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'grpname') String grpName,
            @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
            @JsonKey(name: 'sessionname') String sessionName,
            @JsonKey(name: 'isfrozen') bool isfrozen,
            @JsonKey(name: 'numperiods') int numperiods),
    @required
        TResult periodInfo(
            @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime dueDate,
            @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startDate,
            @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endDate,
            @JsonKey(name: 'paymentperiodname')
                String paymentPeriodName,
            @JsonKey(name: 'numdays')
                int numDays),
    @required
        TResult classPeriodInfo(
            @JsonKey(name: 'schedule') List<Schedule> schedule,
            @JsonKey(name: 'type') String type),
    @required
        TResult schedule(
            @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime startTime,
            @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime endTime,
            @JsonKey(name: 'classperiodname')
                String classPeriodName),
    @required TResult offering(String offering),
    @required TResult feeItem(String feeItem),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return feeItem(this.feeItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfo(@JsonKey(name: 'roomaddr') String roomAddr,
        @JsonKey(name: 'roomname') String roomName),
    TResult examTermInfo(@JsonKey(name: 'maintermname') String mainTermName,
        @JsonKey(name: 'subtermname') String subTermName),
    TResult sessionTerm(
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'isactive')
            bool isActive,
        @JsonKey(name: 'termname')
            String termName,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'grpname') String grpName,
        @JsonKey(name: 'periodinfo') List<PeriodInfo> periodInfo,
        @JsonKey(name: 'sessionname') String sessionName,
        @JsonKey(name: 'isfrozen') bool isfrozen,
        @JsonKey(name: 'numperiods') int numperiods),
    TResult periodInfo(
        @JsonKey(name: "duedate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime dueDate,
        @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startDate,
        @JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endDate,
        @JsonKey(name: 'paymentperiodname')
            String paymentPeriodName,
        @JsonKey(name: 'numdays')
            int numDays),
    TResult classPeriodInfo(@JsonKey(name: 'schedule') List<Schedule> schedule,
        @JsonKey(name: 'type') String type),
    TResult schedule(
        @JsonKey(name: "starttime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime startTime,
        @JsonKey(name: "endtime", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime endTime,
        @JsonKey(name: 'classperiodname')
            String classPeriodName),
    TResult offering(String offering),
    TResult feeItem(String feeItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feeItem != null) {
      return feeItem(this.feeItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfo value),
    @required TResult periodInfo(PeriodInfo value),
    @required TResult classPeriodInfo(ClassPeriodInfo value),
    @required TResult schedule(Schedule value),
    @required TResult offering(Offering value),
    @required TResult feeItem(FeeItem value),
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    assert(paymentPeriodInfo != null);
    assert(periodInfo != null);
    assert(classPeriodInfo != null);
    assert(schedule != null);
    assert(offering != null);
    assert(feeItem != null);
    return feeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
    TResult paymentPeriodInfo(PaymentPeriodInfo value),
    TResult periodInfo(PeriodInfo value),
    TResult classPeriodInfo(ClassPeriodInfo value),
    TResult schedule(Schedule value),
    TResult offering(Offering value),
    TResult feeItem(FeeItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feeItem != null) {
      return feeItem(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$FeeItemToJson(this)..['runtimeType'] = 'feeItem';
  }
}

abstract class FeeItem implements Lookup {
  const factory FeeItem({@required String feeItem}) = _$FeeItem;

  factory FeeItem.fromJson(Map<String, dynamic> json) = _$FeeItem.fromJson;

  String get feeItem;
  @JsonKey(ignore: true)
  $FeeItemCopyWith<FeeItem> get copyWith;
}

LookupList _$LookupListFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'roomInfoList':
      return RoomInfoList.fromJson(json);
    case 'examTermInfoList':
      return ExamTermInfoList.fromJson(json);
    case 'sessionTermList':
      return SessionTermList.fromJson(json);
    case 'offering':
      return Offerings.fromJson(json);
    case 'feeItem':
      return FeeItems.fromJson(json);
    case 'grade':
      return Grades.fromJson(json);
    case 'classPeriod':
      return ClassPeriodInfoList.fromJson(json);
    case 'paymentPeriodInfo':
      return PaymentPeriodInfoList.fromJson(json);
    case 'empty':
      return LookupListEmpty.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$LookupListTearOff {
  const _$LookupListTearOff();

// ignore: unused_element
  RoomInfoList roomInfoList(
      {@required @JsonKey(name: 'roominfo') List<RoomInfo> list}) {
    return RoomInfoList(
      list: list,
    );
  }

// ignore: unused_element
  ExamTermInfoList examTermInfoList(
      {@required @JsonKey(name: 'examterminfo') List<ExamTermInfo> list}) {
    return ExamTermInfoList(
      list: list,
    );
  }

// ignore: unused_element
  SessionTermList sessionTermList(
      {@required @JsonKey(name: 'sessionterm') List<SessionTerm> list}) {
    return SessionTermList(
      list: list,
    );
  }

// ignore: unused_element
  Offerings offering({@required @JsonKey(name: 'subject') List<String> list}) {
    return Offerings(
      list: list,
    );
  }

// ignore: unused_element
  FeeItems feeItem(
      {@required @JsonKey(name: 'feeitemlist') List<String> list}) {
    return FeeItems(
      list: list,
    );
  }

// ignore: unused_element
  Grades grade({@required @JsonKey(name: 'grades') List<String> list}) {
    return Grades(
      list: list,
    );
  }

// ignore: unused_element
  ClassPeriodInfoList classPeriod(
      {@required
      @JsonKey(name: 'classperiodinfo')
          List<ClassPeriodInfo> list}) {
    return ClassPeriodInfoList(
      list: list,
    );
  }

// ignore: unused_element
  PaymentPeriodInfoList paymentPeriodInfo(
      {@required
      @JsonKey(name: 'paymentperiodinfo')
          List<PaymentPeriodInfo> list}) {
    return PaymentPeriodInfoList(
      list: list,
    );
  }

// ignore: unused_element
  LookupListEmpty empty() {
    return const LookupListEmpty();
  }

// ignore: unused_element
  LookupList fromJson(Map<String, Object> json) {
    return LookupList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LookupList = _$LookupListTearOff();

/// @nodoc
mixin _$LookupList {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    @required
        TResult examTermInfoList(
            @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'subject') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
    @required
        TResult classPeriod(
            @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    @required TResult empty(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'subject') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
    TResult classPeriod(
        @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    TResult empty(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfoList(RoomInfoList value),
    @required TResult examTermInfoList(ExamTermInfoList value),
    @required TResult sessionTermList(SessionTermList value),
    @required TResult offering(Offerings value),
    @required TResult feeItem(FeeItems value),
    @required TResult grade(Grades value),
    @required TResult classPeriod(ClassPeriodInfoList value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    @required TResult empty(LookupListEmpty value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
    TResult classPeriod(ClassPeriodInfoList value),
    TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    TResult empty(LookupListEmpty value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $LookupListCopyWith<$Res> {
  factory $LookupListCopyWith(
          LookupList value, $Res Function(LookupList) then) =
      _$LookupListCopyWithImpl<$Res>;
}

/// @nodoc
class _$LookupListCopyWithImpl<$Res> implements $LookupListCopyWith<$Res> {
  _$LookupListCopyWithImpl(this._value, this._then);

  final LookupList _value;
  // ignore: unused_field
  final $Res Function(LookupList) _then;
}

/// @nodoc
abstract class $RoomInfoListCopyWith<$Res> {
  factory $RoomInfoListCopyWith(
          RoomInfoList value, $Res Function(RoomInfoList) then) =
      _$RoomInfoListCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'roominfo') List<RoomInfo> list});
}

/// @nodoc
class _$RoomInfoListCopyWithImpl<$Res> extends _$LookupListCopyWithImpl<$Res>
    implements $RoomInfoListCopyWith<$Res> {
  _$RoomInfoListCopyWithImpl(
      RoomInfoList _value, $Res Function(RoomInfoList) _then)
      : super(_value, (v) => _then(v as RoomInfoList));

  @override
  RoomInfoList get _value => super._value as RoomInfoList;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(RoomInfoList(
      list: list == freezed ? _value.list : list as List<RoomInfo>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$RoomInfoList implements RoomInfoList {
  const _$RoomInfoList({@required @JsonKey(name: 'roominfo') this.list})
      : assert(list != null);

  factory _$RoomInfoList.fromJson(Map<String, dynamic> json) =>
      _$_$RoomInfoListFromJson(json);

  @override
  @JsonKey(name: 'roominfo')
  final List<RoomInfo> list;

  @override
  String toString() {
    return 'LookupList.roomInfoList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoomInfoList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $RoomInfoListCopyWith<RoomInfoList> get copyWith =>
      _$RoomInfoListCopyWithImpl<RoomInfoList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    @required
        TResult examTermInfoList(
            @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'subject') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
    @required
        TResult classPeriod(
            @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    @required TResult empty(),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return roomInfoList(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'subject') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
    TResult classPeriod(
        @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomInfoList != null) {
      return roomInfoList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfoList(RoomInfoList value),
    @required TResult examTermInfoList(ExamTermInfoList value),
    @required TResult sessionTermList(SessionTermList value),
    @required TResult offering(Offerings value),
    @required TResult feeItem(FeeItems value),
    @required TResult grade(Grades value),
    @required TResult classPeriod(ClassPeriodInfoList value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    @required TResult empty(LookupListEmpty value),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return roomInfoList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
    TResult classPeriod(ClassPeriodInfoList value),
    TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    TResult empty(LookupListEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomInfoList != null) {
      return roomInfoList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RoomInfoListToJson(this)..['runtimeType'] = 'roomInfoList';
  }
}

abstract class RoomInfoList implements LookupList {
  const factory RoomInfoList(
          {@required @JsonKey(name: 'roominfo') List<RoomInfo> list}) =
      _$RoomInfoList;

  factory RoomInfoList.fromJson(Map<String, dynamic> json) =
      _$RoomInfoList.fromJson;

  @JsonKey(name: 'roominfo')
  List<RoomInfo> get list;
  @JsonKey(ignore: true)
  $RoomInfoListCopyWith<RoomInfoList> get copyWith;
}

/// @nodoc
abstract class $ExamTermInfoListCopyWith<$Res> {
  factory $ExamTermInfoListCopyWith(
          ExamTermInfoList value, $Res Function(ExamTermInfoList) then) =
      _$ExamTermInfoListCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'examterminfo') List<ExamTermInfo> list});
}

/// @nodoc
class _$ExamTermInfoListCopyWithImpl<$Res>
    extends _$LookupListCopyWithImpl<$Res>
    implements $ExamTermInfoListCopyWith<$Res> {
  _$ExamTermInfoListCopyWithImpl(
      ExamTermInfoList _value, $Res Function(ExamTermInfoList) _then)
      : super(_value, (v) => _then(v as ExamTermInfoList));

  @override
  ExamTermInfoList get _value => super._value as ExamTermInfoList;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(ExamTermInfoList(
      list: list == freezed ? _value.list : list as List<ExamTermInfo>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$ExamTermInfoList implements ExamTermInfoList {
  const _$ExamTermInfoList({@required @JsonKey(name: 'examterminfo') this.list})
      : assert(list != null);

  factory _$ExamTermInfoList.fromJson(Map<String, dynamic> json) =>
      _$_$ExamTermInfoListFromJson(json);

  @override
  @JsonKey(name: 'examterminfo')
  final List<ExamTermInfo> list;

  @override
  String toString() {
    return 'LookupList.examTermInfoList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExamTermInfoList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $ExamTermInfoListCopyWith<ExamTermInfoList> get copyWith =>
      _$ExamTermInfoListCopyWithImpl<ExamTermInfoList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    @required
        TResult examTermInfoList(
            @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'subject') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
    @required
        TResult classPeriod(
            @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    @required TResult empty(),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return examTermInfoList(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'subject') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
    TResult classPeriod(
        @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (examTermInfoList != null) {
      return examTermInfoList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfoList(RoomInfoList value),
    @required TResult examTermInfoList(ExamTermInfoList value),
    @required TResult sessionTermList(SessionTermList value),
    @required TResult offering(Offerings value),
    @required TResult feeItem(FeeItems value),
    @required TResult grade(Grades value),
    @required TResult classPeriod(ClassPeriodInfoList value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    @required TResult empty(LookupListEmpty value),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return examTermInfoList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
    TResult classPeriod(ClassPeriodInfoList value),
    TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    TResult empty(LookupListEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (examTermInfoList != null) {
      return examTermInfoList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ExamTermInfoListToJson(this)
      ..['runtimeType'] = 'examTermInfoList';
  }
}

abstract class ExamTermInfoList implements LookupList {
  const factory ExamTermInfoList(
          {@required @JsonKey(name: 'examterminfo') List<ExamTermInfo> list}) =
      _$ExamTermInfoList;

  factory ExamTermInfoList.fromJson(Map<String, dynamic> json) =
      _$ExamTermInfoList.fromJson;

  @JsonKey(name: 'examterminfo')
  List<ExamTermInfo> get list;
  @JsonKey(ignore: true)
  $ExamTermInfoListCopyWith<ExamTermInfoList> get copyWith;
}

/// @nodoc
abstract class $SessionTermListCopyWith<$Res> {
  factory $SessionTermListCopyWith(
          SessionTermList value, $Res Function(SessionTermList) then) =
      _$SessionTermListCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'sessionterm') List<SessionTerm> list});
}

/// @nodoc
class _$SessionTermListCopyWithImpl<$Res> extends _$LookupListCopyWithImpl<$Res>
    implements $SessionTermListCopyWith<$Res> {
  _$SessionTermListCopyWithImpl(
      SessionTermList _value, $Res Function(SessionTermList) _then)
      : super(_value, (v) => _then(v as SessionTermList));

  @override
  SessionTermList get _value => super._value as SessionTermList;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(SessionTermList(
      list: list == freezed ? _value.list : list as List<SessionTerm>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$SessionTermList implements SessionTermList {
  const _$SessionTermList({@required @JsonKey(name: 'sessionterm') this.list})
      : assert(list != null);

  factory _$SessionTermList.fromJson(Map<String, dynamic> json) =>
      _$_$SessionTermListFromJson(json);

  @override
  @JsonKey(name: 'sessionterm')
  final List<SessionTerm> list;

  @override
  String toString() {
    return 'LookupList.sessionTermList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionTermList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $SessionTermListCopyWith<SessionTermList> get copyWith =>
      _$SessionTermListCopyWithImpl<SessionTermList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    @required
        TResult examTermInfoList(
            @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'subject') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
    @required
        TResult classPeriod(
            @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    @required TResult empty(),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return sessionTermList(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'subject') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
    TResult classPeriod(
        @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionTermList != null) {
      return sessionTermList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfoList(RoomInfoList value),
    @required TResult examTermInfoList(ExamTermInfoList value),
    @required TResult sessionTermList(SessionTermList value),
    @required TResult offering(Offerings value),
    @required TResult feeItem(FeeItems value),
    @required TResult grade(Grades value),
    @required TResult classPeriod(ClassPeriodInfoList value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    @required TResult empty(LookupListEmpty value),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return sessionTermList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
    TResult classPeriod(ClassPeriodInfoList value),
    TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    TResult empty(LookupListEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionTermList != null) {
      return sessionTermList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SessionTermListToJson(this)..['runtimeType'] = 'sessionTermList';
  }
}

abstract class SessionTermList implements LookupList {
  const factory SessionTermList(
          {@required @JsonKey(name: 'sessionterm') List<SessionTerm> list}) =
      _$SessionTermList;

  factory SessionTermList.fromJson(Map<String, dynamic> json) =
      _$SessionTermList.fromJson;

  @JsonKey(name: 'sessionterm')
  List<SessionTerm> get list;
  @JsonKey(ignore: true)
  $SessionTermListCopyWith<SessionTermList> get copyWith;
}

/// @nodoc
abstract class $OfferingsCopyWith<$Res> {
  factory $OfferingsCopyWith(Offerings value, $Res Function(Offerings) then) =
      _$OfferingsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'subject') List<String> list});
}

/// @nodoc
class _$OfferingsCopyWithImpl<$Res> extends _$LookupListCopyWithImpl<$Res>
    implements $OfferingsCopyWith<$Res> {
  _$OfferingsCopyWithImpl(Offerings _value, $Res Function(Offerings) _then)
      : super(_value, (v) => _then(v as Offerings));

  @override
  Offerings get _value => super._value as Offerings;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(Offerings(
      list: list == freezed ? _value.list : list as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Offerings implements Offerings {
  const _$Offerings({@required @JsonKey(name: 'subject') this.list})
      : assert(list != null);

  factory _$Offerings.fromJson(Map<String, dynamic> json) =>
      _$_$OfferingsFromJson(json);

  @override
  @JsonKey(name: 'subject')
  final List<String> list;

  @override
  String toString() {
    return 'LookupList.offering(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Offerings &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $OfferingsCopyWith<Offerings> get copyWith =>
      _$OfferingsCopyWithImpl<Offerings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    @required
        TResult examTermInfoList(
            @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'subject') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
    @required
        TResult classPeriod(
            @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    @required TResult empty(),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return offering(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'subject') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
    TResult classPeriod(
        @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offering != null) {
      return offering(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfoList(RoomInfoList value),
    @required TResult examTermInfoList(ExamTermInfoList value),
    @required TResult sessionTermList(SessionTermList value),
    @required TResult offering(Offerings value),
    @required TResult feeItem(FeeItems value),
    @required TResult grade(Grades value),
    @required TResult classPeriod(ClassPeriodInfoList value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    @required TResult empty(LookupListEmpty value),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return offering(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
    TResult classPeriod(ClassPeriodInfoList value),
    TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    TResult empty(LookupListEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offering != null) {
      return offering(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$OfferingsToJson(this)..['runtimeType'] = 'offering';
  }
}

abstract class Offerings implements LookupList {
  const factory Offerings(
      {@required @JsonKey(name: 'subject') List<String> list}) = _$Offerings;

  factory Offerings.fromJson(Map<String, dynamic> json) = _$Offerings.fromJson;

  @JsonKey(name: 'subject')
  List<String> get list;
  @JsonKey(ignore: true)
  $OfferingsCopyWith<Offerings> get copyWith;
}

/// @nodoc
abstract class $FeeItemsCopyWith<$Res> {
  factory $FeeItemsCopyWith(FeeItems value, $Res Function(FeeItems) then) =
      _$FeeItemsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'feeitemlist') List<String> list});
}

/// @nodoc
class _$FeeItemsCopyWithImpl<$Res> extends _$LookupListCopyWithImpl<$Res>
    implements $FeeItemsCopyWith<$Res> {
  _$FeeItemsCopyWithImpl(FeeItems _value, $Res Function(FeeItems) _then)
      : super(_value, (v) => _then(v as FeeItems));

  @override
  FeeItems get _value => super._value as FeeItems;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(FeeItems(
      list: list == freezed ? _value.list : list as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$FeeItems implements FeeItems {
  const _$FeeItems({@required @JsonKey(name: 'feeitemlist') this.list})
      : assert(list != null);

  factory _$FeeItems.fromJson(Map<String, dynamic> json) =>
      _$_$FeeItemsFromJson(json);

  @override
  @JsonKey(name: 'feeitemlist')
  final List<String> list;

  @override
  String toString() {
    return 'LookupList.feeItem(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeeItems &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $FeeItemsCopyWith<FeeItems> get copyWith =>
      _$FeeItemsCopyWithImpl<FeeItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    @required
        TResult examTermInfoList(
            @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'subject') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
    @required
        TResult classPeriod(
            @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    @required TResult empty(),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return feeItem(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'subject') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
    TResult classPeriod(
        @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feeItem != null) {
      return feeItem(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfoList(RoomInfoList value),
    @required TResult examTermInfoList(ExamTermInfoList value),
    @required TResult sessionTermList(SessionTermList value),
    @required TResult offering(Offerings value),
    @required TResult feeItem(FeeItems value),
    @required TResult grade(Grades value),
    @required TResult classPeriod(ClassPeriodInfoList value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    @required TResult empty(LookupListEmpty value),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return feeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
    TResult classPeriod(ClassPeriodInfoList value),
    TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    TResult empty(LookupListEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feeItem != null) {
      return feeItem(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$FeeItemsToJson(this)..['runtimeType'] = 'feeItem';
  }
}

abstract class FeeItems implements LookupList {
  const factory FeeItems(
      {@required @JsonKey(name: 'feeitemlist') List<String> list}) = _$FeeItems;

  factory FeeItems.fromJson(Map<String, dynamic> json) = _$FeeItems.fromJson;

  @JsonKey(name: 'feeitemlist')
  List<String> get list;
  @JsonKey(ignore: true)
  $FeeItemsCopyWith<FeeItems> get copyWith;
}

/// @nodoc
abstract class $GradesCopyWith<$Res> {
  factory $GradesCopyWith(Grades value, $Res Function(Grades) then) =
      _$GradesCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'grades') List<String> list});
}

/// @nodoc
class _$GradesCopyWithImpl<$Res> extends _$LookupListCopyWithImpl<$Res>
    implements $GradesCopyWith<$Res> {
  _$GradesCopyWithImpl(Grades _value, $Res Function(Grades) _then)
      : super(_value, (v) => _then(v as Grades));

  @override
  Grades get _value => super._value as Grades;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(Grades(
      list: list == freezed ? _value.list : list as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Grades implements Grades {
  const _$Grades({@required @JsonKey(name: 'grades') this.list})
      : assert(list != null);

  factory _$Grades.fromJson(Map<String, dynamic> json) =>
      _$_$GradesFromJson(json);

  @override
  @JsonKey(name: 'grades')
  final List<String> list;

  @override
  String toString() {
    return 'LookupList.grade(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Grades &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $GradesCopyWith<Grades> get copyWith =>
      _$GradesCopyWithImpl<Grades>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    @required
        TResult examTermInfoList(
            @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'subject') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
    @required
        TResult classPeriod(
            @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    @required TResult empty(),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return grade(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'subject') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
    TResult classPeriod(
        @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (grade != null) {
      return grade(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfoList(RoomInfoList value),
    @required TResult examTermInfoList(ExamTermInfoList value),
    @required TResult sessionTermList(SessionTermList value),
    @required TResult offering(Offerings value),
    @required TResult feeItem(FeeItems value),
    @required TResult grade(Grades value),
    @required TResult classPeriod(ClassPeriodInfoList value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    @required TResult empty(LookupListEmpty value),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return grade(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
    TResult classPeriod(ClassPeriodInfoList value),
    TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    TResult empty(LookupListEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (grade != null) {
      return grade(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GradesToJson(this)..['runtimeType'] = 'grade';
  }
}

abstract class Grades implements LookupList {
  const factory Grades({@required @JsonKey(name: 'grades') List<String> list}) =
      _$Grades;

  factory Grades.fromJson(Map<String, dynamic> json) = _$Grades.fromJson;

  @JsonKey(name: 'grades')
  List<String> get list;
  @JsonKey(ignore: true)
  $GradesCopyWith<Grades> get copyWith;
}

/// @nodoc
abstract class $ClassPeriodInfoListCopyWith<$Res> {
  factory $ClassPeriodInfoListCopyWith(
          ClassPeriodInfoList value, $Res Function(ClassPeriodInfoList) then) =
      _$ClassPeriodInfoListCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list});
}

/// @nodoc
class _$ClassPeriodInfoListCopyWithImpl<$Res>
    extends _$LookupListCopyWithImpl<$Res>
    implements $ClassPeriodInfoListCopyWith<$Res> {
  _$ClassPeriodInfoListCopyWithImpl(
      ClassPeriodInfoList _value, $Res Function(ClassPeriodInfoList) _then)
      : super(_value, (v) => _then(v as ClassPeriodInfoList));

  @override
  ClassPeriodInfoList get _value => super._value as ClassPeriodInfoList;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(ClassPeriodInfoList(
      list: list == freezed ? _value.list : list as List<ClassPeriodInfo>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$ClassPeriodInfoList implements ClassPeriodInfoList {
  const _$ClassPeriodInfoList(
      {@required @JsonKey(name: 'classperiodinfo') this.list})
      : assert(list != null);

  factory _$ClassPeriodInfoList.fromJson(Map<String, dynamic> json) =>
      _$_$ClassPeriodInfoListFromJson(json);

  @override
  @JsonKey(name: 'classperiodinfo')
  final List<ClassPeriodInfo> list;

  @override
  String toString() {
    return 'LookupList.classPeriod(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClassPeriodInfoList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $ClassPeriodInfoListCopyWith<ClassPeriodInfoList> get copyWith =>
      _$ClassPeriodInfoListCopyWithImpl<ClassPeriodInfoList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    @required
        TResult examTermInfoList(
            @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'subject') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
    @required
        TResult classPeriod(
            @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    @required TResult empty(),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return classPeriod(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'subject') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
    TResult classPeriod(
        @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (classPeriod != null) {
      return classPeriod(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfoList(RoomInfoList value),
    @required TResult examTermInfoList(ExamTermInfoList value),
    @required TResult sessionTermList(SessionTermList value),
    @required TResult offering(Offerings value),
    @required TResult feeItem(FeeItems value),
    @required TResult grade(Grades value),
    @required TResult classPeriod(ClassPeriodInfoList value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    @required TResult empty(LookupListEmpty value),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return classPeriod(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
    TResult classPeriod(ClassPeriodInfoList value),
    TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    TResult empty(LookupListEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (classPeriod != null) {
      return classPeriod(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ClassPeriodInfoListToJson(this)..['runtimeType'] = 'classPeriod';
  }
}

abstract class ClassPeriodInfoList implements LookupList {
  const factory ClassPeriodInfoList(
      {@required
      @JsonKey(name: 'classperiodinfo')
          List<ClassPeriodInfo> list}) = _$ClassPeriodInfoList;

  factory ClassPeriodInfoList.fromJson(Map<String, dynamic> json) =
      _$ClassPeriodInfoList.fromJson;

  @JsonKey(name: 'classperiodinfo')
  List<ClassPeriodInfo> get list;
  @JsonKey(ignore: true)
  $ClassPeriodInfoListCopyWith<ClassPeriodInfoList> get copyWith;
}

/// @nodoc
abstract class $PaymentPeriodInfoListCopyWith<$Res> {
  factory $PaymentPeriodInfoListCopyWith(PaymentPeriodInfoList value,
          $Res Function(PaymentPeriodInfoList) then) =
      _$PaymentPeriodInfoListCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list});
}

/// @nodoc
class _$PaymentPeriodInfoListCopyWithImpl<$Res>
    extends _$LookupListCopyWithImpl<$Res>
    implements $PaymentPeriodInfoListCopyWith<$Res> {
  _$PaymentPeriodInfoListCopyWithImpl(
      PaymentPeriodInfoList _value, $Res Function(PaymentPeriodInfoList) _then)
      : super(_value, (v) => _then(v as PaymentPeriodInfoList));

  @override
  PaymentPeriodInfoList get _value => super._value as PaymentPeriodInfoList;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(PaymentPeriodInfoList(
      list: list == freezed ? _value.list : list as List<PaymentPeriodInfo>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$PaymentPeriodInfoList implements PaymentPeriodInfoList {
  const _$PaymentPeriodInfoList(
      {@required @JsonKey(name: 'paymentperiodinfo') this.list})
      : assert(list != null);

  factory _$PaymentPeriodInfoList.fromJson(Map<String, dynamic> json) =>
      _$_$PaymentPeriodInfoListFromJson(json);

  @override
  @JsonKey(name: 'paymentperiodinfo')
  final List<PaymentPeriodInfo> list;

  @override
  String toString() {
    return 'LookupList.paymentPeriodInfo(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentPeriodInfoList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $PaymentPeriodInfoListCopyWith<PaymentPeriodInfoList> get copyWith =>
      _$PaymentPeriodInfoListCopyWithImpl<PaymentPeriodInfoList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    @required
        TResult examTermInfoList(
            @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'subject') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
    @required
        TResult classPeriod(
            @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    @required TResult empty(),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return paymentPeriodInfo(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'subject') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
    TResult classPeriod(
        @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentPeriodInfo != null) {
      return paymentPeriodInfo(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfoList(RoomInfoList value),
    @required TResult examTermInfoList(ExamTermInfoList value),
    @required TResult sessionTermList(SessionTermList value),
    @required TResult offering(Offerings value),
    @required TResult feeItem(FeeItems value),
    @required TResult grade(Grades value),
    @required TResult classPeriod(ClassPeriodInfoList value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    @required TResult empty(LookupListEmpty value),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return paymentPeriodInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
    TResult classPeriod(ClassPeriodInfoList value),
    TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    TResult empty(LookupListEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentPeriodInfo != null) {
      return paymentPeriodInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PaymentPeriodInfoListToJson(this)
      ..['runtimeType'] = 'paymentPeriodInfo';
  }
}

abstract class PaymentPeriodInfoList implements LookupList {
  const factory PaymentPeriodInfoList(
      {@required
      @JsonKey(name: 'paymentperiodinfo')
          List<PaymentPeriodInfo> list}) = _$PaymentPeriodInfoList;

  factory PaymentPeriodInfoList.fromJson(Map<String, dynamic> json) =
      _$PaymentPeriodInfoList.fromJson;

  @JsonKey(name: 'paymentperiodinfo')
  List<PaymentPeriodInfo> get list;
  @JsonKey(ignore: true)
  $PaymentPeriodInfoListCopyWith<PaymentPeriodInfoList> get copyWith;
}

/// @nodoc
abstract class $LookupListEmptyCopyWith<$Res> {
  factory $LookupListEmptyCopyWith(
          LookupListEmpty value, $Res Function(LookupListEmpty) then) =
      _$LookupListEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$LookupListEmptyCopyWithImpl<$Res> extends _$LookupListCopyWithImpl<$Res>
    implements $LookupListEmptyCopyWith<$Res> {
  _$LookupListEmptyCopyWithImpl(
      LookupListEmpty _value, $Res Function(LookupListEmpty) _then)
      : super(_value, (v) => _then(v as LookupListEmpty));

  @override
  LookupListEmpty get _value => super._value as LookupListEmpty;
}

@JsonSerializable()

/// @nodoc
class _$LookupListEmpty implements LookupListEmpty {
  const _$LookupListEmpty();

  factory _$LookupListEmpty.fromJson(Map<String, dynamic> json) =>
      _$_$LookupListEmptyFromJson(json);

  @override
  String toString() {
    return 'LookupList.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LookupListEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    @required
        TResult examTermInfoList(
            @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'subject') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
    @required
        TResult classPeriod(
            @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    @required
        TResult paymentPeriodInfo(
            @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    @required TResult empty(),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examterminfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'subject') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
    TResult classPeriod(
        @JsonKey(name: 'classperiodinfo') List<ClassPeriodInfo> list),
    TResult paymentPeriodInfo(
        @JsonKey(name: 'paymentperiodinfo') List<PaymentPeriodInfo> list),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfoList(RoomInfoList value),
    @required TResult examTermInfoList(ExamTermInfoList value),
    @required TResult sessionTermList(SessionTermList value),
    @required TResult offering(Offerings value),
    @required TResult feeItem(FeeItems value),
    @required TResult grade(Grades value),
    @required TResult classPeriod(ClassPeriodInfoList value),
    @required TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    @required TResult empty(LookupListEmpty value),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    assert(classPeriod != null);
    assert(paymentPeriodInfo != null);
    assert(empty != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
    TResult classPeriod(ClassPeriodInfoList value),
    TResult paymentPeriodInfo(PaymentPeriodInfoList value),
    TResult empty(LookupListEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LookupListEmptyToJson(this)..['runtimeType'] = 'empty';
  }
}

abstract class LookupListEmpty implements LookupList {
  const factory LookupListEmpty() = _$LookupListEmpty;

  factory LookupListEmpty.fromJson(Map<String, dynamic> json) =
      _$LookupListEmpty.fromJson;
}

/// @nodoc
class _$LookupTypeTearOff {
  const _$LookupTypeTearOff();

// ignore: unused_element
  _FeeItem feeItem() {
    return const _FeeItem();
  }

// ignore: unused_element
  _Offering offering() {
    return const _Offering();
  }

// ignore: unused_element
  _Grade grade() {
    return const _Grade();
  }

// ignore: unused_element
  _Rooms rooms() {
    return const _Rooms();
  }

// ignore: unused_element
  _ExamTerm examTerm() {
    return const _ExamTerm();
  }

// ignore: unused_element
  _SessionTerm sessionTerm() {
    return const _SessionTerm();
  }

// ignore: unused_element
  _ClassPeriod classPeriod() {
    return const _ClassPeriod();
  }

// ignore: unused_element
  _PaymentPeriod paymentPeriod() {
    return const _PaymentPeriod();
  }
}

/// @nodoc
// ignore: unused_element
const $LookupType = _$LookupTypeTearOff();

/// @nodoc
mixin _$LookupType {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
    @required TResult offering(),
    @required TResult grade(),
    @required TResult rooms(),
    @required TResult examTerm(),
    @required TResult sessionTerm(),
    @required TResult classPeriod(),
    @required TResult paymentPeriod(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    TResult offering(),
    TResult grade(),
    TResult rooms(),
    TResult examTerm(),
    TResult sessionTerm(),
    TResult classPeriod(),
    TResult paymentPeriod(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
    @required TResult offering(_Offering value),
    @required TResult grade(_Grade value),
    @required TResult rooms(_Rooms value),
    @required TResult examTerm(_ExamTerm value),
    @required TResult sessionTerm(_SessionTerm value),
    @required TResult classPeriod(_ClassPeriod value),
    @required TResult paymentPeriod(_PaymentPeriod value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    TResult offering(_Offering value),
    TResult grade(_Grade value),
    TResult rooms(_Rooms value),
    TResult examTerm(_ExamTerm value),
    TResult sessionTerm(_SessionTerm value),
    TResult classPeriod(_ClassPeriod value),
    TResult paymentPeriod(_PaymentPeriod value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LookupTypeCopyWith<$Res> {
  factory $LookupTypeCopyWith(
          LookupType value, $Res Function(LookupType) then) =
      _$LookupTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$LookupTypeCopyWithImpl<$Res> implements $LookupTypeCopyWith<$Res> {
  _$LookupTypeCopyWithImpl(this._value, this._then);

  final LookupType _value;
  // ignore: unused_field
  final $Res Function(LookupType) _then;
}

/// @nodoc
abstract class _$FeeItemCopyWith<$Res> {
  factory _$FeeItemCopyWith(_FeeItem value, $Res Function(_FeeItem) then) =
      __$FeeItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$FeeItemCopyWithImpl<$Res> extends _$LookupTypeCopyWithImpl<$Res>
    implements _$FeeItemCopyWith<$Res> {
  __$FeeItemCopyWithImpl(_FeeItem _value, $Res Function(_FeeItem) _then)
      : super(_value, (v) => _then(v as _FeeItem));

  @override
  _FeeItem get _value => super._value as _FeeItem;
}

/// @nodoc
class _$_FeeItem implements _FeeItem {
  const _$_FeeItem();

  @override
  String toString() {
    return 'LookupType.feeItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FeeItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
    @required TResult offering(),
    @required TResult grade(),
    @required TResult rooms(),
    @required TResult examTerm(),
    @required TResult sessionTerm(),
    @required TResult classPeriod(),
    @required TResult paymentPeriod(),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return feeItem();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    TResult offering(),
    TResult grade(),
    TResult rooms(),
    TResult examTerm(),
    TResult sessionTerm(),
    TResult classPeriod(),
    TResult paymentPeriod(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feeItem != null) {
      return feeItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
    @required TResult offering(_Offering value),
    @required TResult grade(_Grade value),
    @required TResult rooms(_Rooms value),
    @required TResult examTerm(_ExamTerm value),
    @required TResult sessionTerm(_SessionTerm value),
    @required TResult classPeriod(_ClassPeriod value),
    @required TResult paymentPeriod(_PaymentPeriod value),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return feeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    TResult offering(_Offering value),
    TResult grade(_Grade value),
    TResult rooms(_Rooms value),
    TResult examTerm(_ExamTerm value),
    TResult sessionTerm(_SessionTerm value),
    TResult classPeriod(_ClassPeriod value),
    TResult paymentPeriod(_PaymentPeriod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feeItem != null) {
      return feeItem(this);
    }
    return orElse();
  }
}

abstract class _FeeItem implements LookupType {
  const factory _FeeItem() = _$_FeeItem;
}

/// @nodoc
abstract class _$OfferingCopyWith<$Res> {
  factory _$OfferingCopyWith(_Offering value, $Res Function(_Offering) then) =
      __$OfferingCopyWithImpl<$Res>;
}

/// @nodoc
class __$OfferingCopyWithImpl<$Res> extends _$LookupTypeCopyWithImpl<$Res>
    implements _$OfferingCopyWith<$Res> {
  __$OfferingCopyWithImpl(_Offering _value, $Res Function(_Offering) _then)
      : super(_value, (v) => _then(v as _Offering));

  @override
  _Offering get _value => super._value as _Offering;
}

/// @nodoc
class _$_Offering implements _Offering {
  const _$_Offering();

  @override
  String toString() {
    return 'LookupType.offering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Offering);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
    @required TResult offering(),
    @required TResult grade(),
    @required TResult rooms(),
    @required TResult examTerm(),
    @required TResult sessionTerm(),
    @required TResult classPeriod(),
    @required TResult paymentPeriod(),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return offering();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    TResult offering(),
    TResult grade(),
    TResult rooms(),
    TResult examTerm(),
    TResult sessionTerm(),
    TResult classPeriod(),
    TResult paymentPeriod(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offering != null) {
      return offering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
    @required TResult offering(_Offering value),
    @required TResult grade(_Grade value),
    @required TResult rooms(_Rooms value),
    @required TResult examTerm(_ExamTerm value),
    @required TResult sessionTerm(_SessionTerm value),
    @required TResult classPeriod(_ClassPeriod value),
    @required TResult paymentPeriod(_PaymentPeriod value),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return offering(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    TResult offering(_Offering value),
    TResult grade(_Grade value),
    TResult rooms(_Rooms value),
    TResult examTerm(_ExamTerm value),
    TResult sessionTerm(_SessionTerm value),
    TResult classPeriod(_ClassPeriod value),
    TResult paymentPeriod(_PaymentPeriod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offering != null) {
      return offering(this);
    }
    return orElse();
  }
}

abstract class _Offering implements LookupType {
  const factory _Offering() = _$_Offering;
}

/// @nodoc
abstract class _$GradeCopyWith<$Res> {
  factory _$GradeCopyWith(_Grade value, $Res Function(_Grade) then) =
      __$GradeCopyWithImpl<$Res>;
}

/// @nodoc
class __$GradeCopyWithImpl<$Res> extends _$LookupTypeCopyWithImpl<$Res>
    implements _$GradeCopyWith<$Res> {
  __$GradeCopyWithImpl(_Grade _value, $Res Function(_Grade) _then)
      : super(_value, (v) => _then(v as _Grade));

  @override
  _Grade get _value => super._value as _Grade;
}

/// @nodoc
class _$_Grade implements _Grade {
  const _$_Grade();

  @override
  String toString() {
    return 'LookupType.grade()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Grade);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
    @required TResult offering(),
    @required TResult grade(),
    @required TResult rooms(),
    @required TResult examTerm(),
    @required TResult sessionTerm(),
    @required TResult classPeriod(),
    @required TResult paymentPeriod(),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return grade();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    TResult offering(),
    TResult grade(),
    TResult rooms(),
    TResult examTerm(),
    TResult sessionTerm(),
    TResult classPeriod(),
    TResult paymentPeriod(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (grade != null) {
      return grade();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
    @required TResult offering(_Offering value),
    @required TResult grade(_Grade value),
    @required TResult rooms(_Rooms value),
    @required TResult examTerm(_ExamTerm value),
    @required TResult sessionTerm(_SessionTerm value),
    @required TResult classPeriod(_ClassPeriod value),
    @required TResult paymentPeriod(_PaymentPeriod value),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return grade(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    TResult offering(_Offering value),
    TResult grade(_Grade value),
    TResult rooms(_Rooms value),
    TResult examTerm(_ExamTerm value),
    TResult sessionTerm(_SessionTerm value),
    TResult classPeriod(_ClassPeriod value),
    TResult paymentPeriod(_PaymentPeriod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (grade != null) {
      return grade(this);
    }
    return orElse();
  }
}

abstract class _Grade implements LookupType {
  const factory _Grade() = _$_Grade;
}

/// @nodoc
abstract class _$RoomsCopyWith<$Res> {
  factory _$RoomsCopyWith(_Rooms value, $Res Function(_Rooms) then) =
      __$RoomsCopyWithImpl<$Res>;
}

/// @nodoc
class __$RoomsCopyWithImpl<$Res> extends _$LookupTypeCopyWithImpl<$Res>
    implements _$RoomsCopyWith<$Res> {
  __$RoomsCopyWithImpl(_Rooms _value, $Res Function(_Rooms) _then)
      : super(_value, (v) => _then(v as _Rooms));

  @override
  _Rooms get _value => super._value as _Rooms;
}

/// @nodoc
class _$_Rooms implements _Rooms {
  const _$_Rooms();

  @override
  String toString() {
    return 'LookupType.rooms()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Rooms);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
    @required TResult offering(),
    @required TResult grade(),
    @required TResult rooms(),
    @required TResult examTerm(),
    @required TResult sessionTerm(),
    @required TResult classPeriod(),
    @required TResult paymentPeriod(),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return rooms();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    TResult offering(),
    TResult grade(),
    TResult rooms(),
    TResult examTerm(),
    TResult sessionTerm(),
    TResult classPeriod(),
    TResult paymentPeriod(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rooms != null) {
      return rooms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
    @required TResult offering(_Offering value),
    @required TResult grade(_Grade value),
    @required TResult rooms(_Rooms value),
    @required TResult examTerm(_ExamTerm value),
    @required TResult sessionTerm(_SessionTerm value),
    @required TResult classPeriod(_ClassPeriod value),
    @required TResult paymentPeriod(_PaymentPeriod value),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return rooms(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    TResult offering(_Offering value),
    TResult grade(_Grade value),
    TResult rooms(_Rooms value),
    TResult examTerm(_ExamTerm value),
    TResult sessionTerm(_SessionTerm value),
    TResult classPeriod(_ClassPeriod value),
    TResult paymentPeriod(_PaymentPeriod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rooms != null) {
      return rooms(this);
    }
    return orElse();
  }
}

abstract class _Rooms implements LookupType {
  const factory _Rooms() = _$_Rooms;
}

/// @nodoc
abstract class _$ExamTermCopyWith<$Res> {
  factory _$ExamTermCopyWith(_ExamTerm value, $Res Function(_ExamTerm) then) =
      __$ExamTermCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExamTermCopyWithImpl<$Res> extends _$LookupTypeCopyWithImpl<$Res>
    implements _$ExamTermCopyWith<$Res> {
  __$ExamTermCopyWithImpl(_ExamTerm _value, $Res Function(_ExamTerm) _then)
      : super(_value, (v) => _then(v as _ExamTerm));

  @override
  _ExamTerm get _value => super._value as _ExamTerm;
}

/// @nodoc
class _$_ExamTerm implements _ExamTerm {
  const _$_ExamTerm();

  @override
  String toString() {
    return 'LookupType.examTerm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExamTerm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
    @required TResult offering(),
    @required TResult grade(),
    @required TResult rooms(),
    @required TResult examTerm(),
    @required TResult sessionTerm(),
    @required TResult classPeriod(),
    @required TResult paymentPeriod(),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return examTerm();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    TResult offering(),
    TResult grade(),
    TResult rooms(),
    TResult examTerm(),
    TResult sessionTerm(),
    TResult classPeriod(),
    TResult paymentPeriod(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (examTerm != null) {
      return examTerm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
    @required TResult offering(_Offering value),
    @required TResult grade(_Grade value),
    @required TResult rooms(_Rooms value),
    @required TResult examTerm(_ExamTerm value),
    @required TResult sessionTerm(_SessionTerm value),
    @required TResult classPeriod(_ClassPeriod value),
    @required TResult paymentPeriod(_PaymentPeriod value),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return examTerm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    TResult offering(_Offering value),
    TResult grade(_Grade value),
    TResult rooms(_Rooms value),
    TResult examTerm(_ExamTerm value),
    TResult sessionTerm(_SessionTerm value),
    TResult classPeriod(_ClassPeriod value),
    TResult paymentPeriod(_PaymentPeriod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (examTerm != null) {
      return examTerm(this);
    }
    return orElse();
  }
}

abstract class _ExamTerm implements LookupType {
  const factory _ExamTerm() = _$_ExamTerm;
}

/// @nodoc
abstract class _$SessionTermCopyWith<$Res> {
  factory _$SessionTermCopyWith(
          _SessionTerm value, $Res Function(_SessionTerm) then) =
      __$SessionTermCopyWithImpl<$Res>;
}

/// @nodoc
class __$SessionTermCopyWithImpl<$Res> extends _$LookupTypeCopyWithImpl<$Res>
    implements _$SessionTermCopyWith<$Res> {
  __$SessionTermCopyWithImpl(
      _SessionTerm _value, $Res Function(_SessionTerm) _then)
      : super(_value, (v) => _then(v as _SessionTerm));

  @override
  _SessionTerm get _value => super._value as _SessionTerm;
}

/// @nodoc
class _$_SessionTerm implements _SessionTerm {
  const _$_SessionTerm();

  @override
  String toString() {
    return 'LookupType.sessionTerm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SessionTerm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
    @required TResult offering(),
    @required TResult grade(),
    @required TResult rooms(),
    @required TResult examTerm(),
    @required TResult sessionTerm(),
    @required TResult classPeriod(),
    @required TResult paymentPeriod(),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return sessionTerm();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    TResult offering(),
    TResult grade(),
    TResult rooms(),
    TResult examTerm(),
    TResult sessionTerm(),
    TResult classPeriod(),
    TResult paymentPeriod(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionTerm != null) {
      return sessionTerm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
    @required TResult offering(_Offering value),
    @required TResult grade(_Grade value),
    @required TResult rooms(_Rooms value),
    @required TResult examTerm(_ExamTerm value),
    @required TResult sessionTerm(_SessionTerm value),
    @required TResult classPeriod(_ClassPeriod value),
    @required TResult paymentPeriod(_PaymentPeriod value),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return sessionTerm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    TResult offering(_Offering value),
    TResult grade(_Grade value),
    TResult rooms(_Rooms value),
    TResult examTerm(_ExamTerm value),
    TResult sessionTerm(_SessionTerm value),
    TResult classPeriod(_ClassPeriod value),
    TResult paymentPeriod(_PaymentPeriod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionTerm != null) {
      return sessionTerm(this);
    }
    return orElse();
  }
}

abstract class _SessionTerm implements LookupType {
  const factory _SessionTerm() = _$_SessionTerm;
}

/// @nodoc
abstract class _$ClassPeriodCopyWith<$Res> {
  factory _$ClassPeriodCopyWith(
          _ClassPeriod value, $Res Function(_ClassPeriod) then) =
      __$ClassPeriodCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClassPeriodCopyWithImpl<$Res> extends _$LookupTypeCopyWithImpl<$Res>
    implements _$ClassPeriodCopyWith<$Res> {
  __$ClassPeriodCopyWithImpl(
      _ClassPeriod _value, $Res Function(_ClassPeriod) _then)
      : super(_value, (v) => _then(v as _ClassPeriod));

  @override
  _ClassPeriod get _value => super._value as _ClassPeriod;
}

/// @nodoc
class _$_ClassPeriod implements _ClassPeriod {
  const _$_ClassPeriod();

  @override
  String toString() {
    return 'LookupType.classPeriod()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClassPeriod);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
    @required TResult offering(),
    @required TResult grade(),
    @required TResult rooms(),
    @required TResult examTerm(),
    @required TResult sessionTerm(),
    @required TResult classPeriod(),
    @required TResult paymentPeriod(),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return classPeriod();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    TResult offering(),
    TResult grade(),
    TResult rooms(),
    TResult examTerm(),
    TResult sessionTerm(),
    TResult classPeriod(),
    TResult paymentPeriod(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (classPeriod != null) {
      return classPeriod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
    @required TResult offering(_Offering value),
    @required TResult grade(_Grade value),
    @required TResult rooms(_Rooms value),
    @required TResult examTerm(_ExamTerm value),
    @required TResult sessionTerm(_SessionTerm value),
    @required TResult classPeriod(_ClassPeriod value),
    @required TResult paymentPeriod(_PaymentPeriod value),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return classPeriod(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    TResult offering(_Offering value),
    TResult grade(_Grade value),
    TResult rooms(_Rooms value),
    TResult examTerm(_ExamTerm value),
    TResult sessionTerm(_SessionTerm value),
    TResult classPeriod(_ClassPeriod value),
    TResult paymentPeriod(_PaymentPeriod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (classPeriod != null) {
      return classPeriod(this);
    }
    return orElse();
  }
}

abstract class _ClassPeriod implements LookupType {
  const factory _ClassPeriod() = _$_ClassPeriod;
}

/// @nodoc
abstract class _$PaymentPeriodCopyWith<$Res> {
  factory _$PaymentPeriodCopyWith(
          _PaymentPeriod value, $Res Function(_PaymentPeriod) then) =
      __$PaymentPeriodCopyWithImpl<$Res>;
}

/// @nodoc
class __$PaymentPeriodCopyWithImpl<$Res> extends _$LookupTypeCopyWithImpl<$Res>
    implements _$PaymentPeriodCopyWith<$Res> {
  __$PaymentPeriodCopyWithImpl(
      _PaymentPeriod _value, $Res Function(_PaymentPeriod) _then)
      : super(_value, (v) => _then(v as _PaymentPeriod));

  @override
  _PaymentPeriod get _value => super._value as _PaymentPeriod;
}

/// @nodoc
class _$_PaymentPeriod implements _PaymentPeriod {
  const _$_PaymentPeriod();

  @override
  String toString() {
    return 'LookupType.paymentPeriod()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PaymentPeriod);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
    @required TResult offering(),
    @required TResult grade(),
    @required TResult rooms(),
    @required TResult examTerm(),
    @required TResult sessionTerm(),
    @required TResult classPeriod(),
    @required TResult paymentPeriod(),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return paymentPeriod();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    TResult offering(),
    TResult grade(),
    TResult rooms(),
    TResult examTerm(),
    TResult sessionTerm(),
    TResult classPeriod(),
    TResult paymentPeriod(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentPeriod != null) {
      return paymentPeriod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
    @required TResult offering(_Offering value),
    @required TResult grade(_Grade value),
    @required TResult rooms(_Rooms value),
    @required TResult examTerm(_ExamTerm value),
    @required TResult sessionTerm(_SessionTerm value),
    @required TResult classPeriod(_ClassPeriod value),
    @required TResult paymentPeriod(_PaymentPeriod value),
  }) {
    assert(feeItem != null);
    assert(offering != null);
    assert(grade != null);
    assert(rooms != null);
    assert(examTerm != null);
    assert(sessionTerm != null);
    assert(classPeriod != null);
    assert(paymentPeriod != null);
    return paymentPeriod(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    TResult offering(_Offering value),
    TResult grade(_Grade value),
    TResult rooms(_Rooms value),
    TResult examTerm(_ExamTerm value),
    TResult sessionTerm(_SessionTerm value),
    TResult classPeriod(_ClassPeriod value),
    TResult paymentPeriod(_PaymentPeriod value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentPeriod != null) {
      return paymentPeriod(this);
    }
    return orElse();
  }
}

abstract class _PaymentPeriod implements LookupType {
  const factory _PaymentPeriod() = _$_PaymentPeriod;
}
