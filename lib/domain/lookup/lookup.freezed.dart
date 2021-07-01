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
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomInfo(RoomInfo value),
    @required TResult examTermInfo(ExamTermInfo value),
    @required TResult sessionTerm(SessionTerm value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
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
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
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
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    return roomInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
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
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
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
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    return examTermInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
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
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
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
  }) {
    assert(roomInfo != null);
    assert(examTermInfo != null);
    assert(sessionTerm != null);
    return sessionTerm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTerm value),
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
      {@required @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list}) {
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
  Offerings offering(
      {@required @JsonKey(name: 'offerings') List<String> list}) {
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
            @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'offerings') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'offerings') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
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
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfoList(RoomInfoList value),
    TResult examTermInfoList(ExamTermInfoList value),
    TResult sessionTermList(SessionTermList value),
    TResult offering(Offerings value),
    TResult feeItem(FeeItems value),
    TResult grade(Grades value),
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
            @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'offerings') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    return roomInfoList(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'offerings') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
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
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
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
  $Res call({@JsonKey(name: 'examTermInfo') List<ExamTermInfo> list});
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
  const _$ExamTermInfoList({@required @JsonKey(name: 'examTermInfo') this.list})
      : assert(list != null);

  factory _$ExamTermInfoList.fromJson(Map<String, dynamic> json) =>
      _$_$ExamTermInfoListFromJson(json);

  @override
  @JsonKey(name: 'examTermInfo')
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
            @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'offerings') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    return examTermInfoList(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'offerings') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
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
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
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
          {@required @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list}) =
      _$ExamTermInfoList;

  factory ExamTermInfoList.fromJson(Map<String, dynamic> json) =
      _$ExamTermInfoList.fromJson;

  @JsonKey(name: 'examTermInfo')
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
            @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'offerings') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    return sessionTermList(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'offerings') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
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
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
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
  $Res call({@JsonKey(name: 'offerings') List<String> list});
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
  const _$Offerings({@required @JsonKey(name: 'offerings') this.list})
      : assert(list != null);

  factory _$Offerings.fromJson(Map<String, dynamic> json) =>
      _$_$OfferingsFromJson(json);

  @override
  @JsonKey(name: 'offerings')
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
            @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'offerings') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    return offering(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'offerings') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
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
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
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
      {@required @JsonKey(name: 'offerings') List<String> list}) = _$Offerings;

  factory Offerings.fromJson(Map<String, dynamic> json) = _$Offerings.fromJson;

  @JsonKey(name: 'offerings')
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
            @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'offerings') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    return feeItem(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'offerings') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
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
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
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
            @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    @required
        TResult sessionTermList(
            @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    @required TResult offering(@JsonKey(name: 'offerings') List<String> list),
    @required TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    @required TResult grade(@JsonKey(name: 'grades') List<String> list),
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
    return grade(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomInfoList(@JsonKey(name: 'roominfo') List<RoomInfo> list),
    TResult examTermInfoList(
        @JsonKey(name: 'examTermInfo') List<ExamTermInfo> list),
    TResult sessionTermList(
        @JsonKey(name: 'sessionterm') List<SessionTerm> list),
    TResult offering(@JsonKey(name: 'offerings') List<String> list),
    TResult feeItem(@JsonKey(name: 'feeitemlist') List<String> list),
    TResult grade(@JsonKey(name: 'grades') List<String> list),
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
  }) {
    assert(roomInfoList != null);
    assert(examTermInfoList != null);
    assert(sessionTermList != null);
    assert(offering != null);
    assert(feeItem != null);
    assert(grade != null);
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
