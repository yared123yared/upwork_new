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
      return SessionTermModel.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$LookupTearOff {
  const _$LookupTearOff();

// ignore: unused_element
  RoomInfo roomInfo(
      {@JsonKey(name: 'roomaddr') String roomAddr,
      @JsonKey(name: 'roomname') String roomName}) {
    return RoomInfo(
      roomAddr: roomAddr,
      roomName: roomName,
    );
  }

// ignore: unused_element
  ExamTermInfo examTermInfo(
      {@JsonKey(name: 'maintermname') String mainTermName,
      @JsonKey(name: 'subtermname') String subTermName}) {
    return ExamTermInfo(
      mainTermName: mainTermName,
      subTermName: subTermName,
    );
  }

// ignore: unused_element
  SessionTermModel sessionTerm(
      {@JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'isactive')
          bool isActive,
      @JsonKey(name: 'termname')
          String termName,
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate}) {
    return SessionTermModel(
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
    @required TResult sessionTerm(SessionTermModel value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomInfo(RoomInfo value),
    TResult examTermInfo(ExamTermInfo value),
    TResult sessionTerm(SessionTermModel value),
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
      {@JsonKey(name: 'roomaddr') this.roomAddr,
      @JsonKey(name: 'roomname') this.roomName});

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
    @required TResult sessionTerm(SessionTermModel value),
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
    TResult sessionTerm(SessionTermModel value),
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
      {@JsonKey(name: 'roomaddr') String roomAddr,
      @JsonKey(name: 'roomname') String roomName}) = _$RoomInfo;

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
      {@JsonKey(name: 'maintermname') this.mainTermName,
      @JsonKey(name: 'subtermname') this.subTermName});

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
    @required TResult sessionTerm(SessionTermModel value),
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
    TResult sessionTerm(SessionTermModel value),
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
      {@JsonKey(name: 'maintermname') String mainTermName,
      @JsonKey(name: 'subtermname') String subTermName}) = _$ExamTermInfo;

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
abstract class $SessionTermModelCopyWith<$Res> {
  factory $SessionTermModelCopyWith(
          SessionTermModel value, $Res Function(SessionTermModel) then) =
      _$SessionTermModelCopyWithImpl<$Res>;
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
class _$SessionTermModelCopyWithImpl<$Res> extends _$LookupCopyWithImpl<$Res>
    implements $SessionTermModelCopyWith<$Res> {
  _$SessionTermModelCopyWithImpl(
      SessionTermModel _value, $Res Function(SessionTermModel) _then)
      : super(_value, (v) => _then(v as SessionTermModel));

  @override
  SessionTermModel get _value => super._value as SessionTermModel;

  @override
  $Res call({
    Object endDate = freezed,
    Object isActive = freezed,
    Object termName = freezed,
    Object startDate = freezed,
  }) {
    return _then(SessionTermModel(
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
class _$SessionTermModel implements SessionTermModel {
  const _$SessionTermModel(
      {@JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.endDate,
      @JsonKey(name: 'isactive')
          this.isActive,
      @JsonKey(name: 'termname')
          this.termName,
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.startDate});

  factory _$SessionTermModel.fromJson(Map<String, dynamic> json) =>
      _$_$SessionTermModelFromJson(json);

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
        (other is SessionTermModel &&
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
  $SessionTermModelCopyWith<SessionTermModel> get copyWith =>
      _$SessionTermModelCopyWithImpl<SessionTermModel>(this, _$identity);

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
    @required TResult sessionTerm(SessionTermModel value),
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
    TResult sessionTerm(SessionTermModel value),
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
    return _$_$SessionTermModelToJson(this)..['runtimeType'] = 'sessionTerm';
  }
}

abstract class SessionTermModel implements Lookup {
  const factory SessionTermModel(
      {@JsonKey(name: "enddate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'isactive')
          bool isActive,
      @JsonKey(name: 'termname')
          String termName,
      @JsonKey(name: "startdate", fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate}) = _$SessionTermModel;

  factory SessionTermModel.fromJson(Map<String, dynamic> json) =
      _$SessionTermModel.fromJson;

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
  $SessionTermModelCopyWith<SessionTermModel> get copyWith;
}
