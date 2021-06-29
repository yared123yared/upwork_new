// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'family_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FamilyMember _$FamilyMemberFromJson(Map<String, dynamic> json) {
  return _FamilyMember.fromJson(json);
}

/// @nodoc
class _$FamilyMemberTearOff {
  const _$FamilyMemberTearOff();

// ignore: unused_element
  _FamilyMember call(
      {@required String userId,
      @required String name,
      @required String email,
      @required String modelId,
      @required String vehiclenumber,
      @required bool vehicleactive,
      @required String qrcodeimg}) {
    return _FamilyMember(
      userId: userId,
      name: name,
      email: email,
      modelId: modelId,
      vehiclenumber: vehiclenumber,
      vehicleactive: vehicleactive,
      qrcodeimg: qrcodeimg,
    );
  }

// ignore: unused_element
  FamilyMember fromJson(Map<String, Object> json) {
    return FamilyMember.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FamilyMember = _$FamilyMemberTearOff();

/// @nodoc
mixin _$FamilyMember {
  String get userId;
  String get name;
  String get email;
  String get modelId;
  String get vehiclenumber;
  bool get vehicleactive;
  String get qrcodeimg;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FamilyMemberCopyWith<FamilyMember> get copyWith;
}

/// @nodoc
abstract class $FamilyMemberCopyWith<$Res> {
  factory $FamilyMemberCopyWith(
          FamilyMember value, $Res Function(FamilyMember) then) =
      _$FamilyMemberCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      String name,
      String email,
      String modelId,
      String vehiclenumber,
      bool vehicleactive,
      String qrcodeimg});
}

/// @nodoc
class _$FamilyMemberCopyWithImpl<$Res> implements $FamilyMemberCopyWith<$Res> {
  _$FamilyMemberCopyWithImpl(this._value, this._then);

  final FamilyMember _value;
  // ignore: unused_field
  final $Res Function(FamilyMember) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object name = freezed,
    Object email = freezed,
    Object modelId = freezed,
    Object vehiclenumber = freezed,
    Object vehicleactive = freezed,
    Object qrcodeimg = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      modelId: modelId == freezed ? _value.modelId : modelId as String,
      vehiclenumber: vehiclenumber == freezed
          ? _value.vehiclenumber
          : vehiclenumber as String,
      vehicleactive: vehicleactive == freezed
          ? _value.vehicleactive
          : vehicleactive as bool,
      qrcodeimg: qrcodeimg == freezed ? _value.qrcodeimg : qrcodeimg as String,
    ));
  }
}

/// @nodoc
abstract class _$FamilyMemberCopyWith<$Res>
    implements $FamilyMemberCopyWith<$Res> {
  factory _$FamilyMemberCopyWith(
          _FamilyMember value, $Res Function(_FamilyMember) then) =
      __$FamilyMemberCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      String name,
      String email,
      String modelId,
      String vehiclenumber,
      bool vehicleactive,
      String qrcodeimg});
}

/// @nodoc
class __$FamilyMemberCopyWithImpl<$Res> extends _$FamilyMemberCopyWithImpl<$Res>
    implements _$FamilyMemberCopyWith<$Res> {
  __$FamilyMemberCopyWithImpl(
      _FamilyMember _value, $Res Function(_FamilyMember) _then)
      : super(_value, (v) => _then(v as _FamilyMember));

  @override
  _FamilyMember get _value => super._value as _FamilyMember;

  @override
  $Res call({
    Object userId = freezed,
    Object name = freezed,
    Object email = freezed,
    Object modelId = freezed,
    Object vehiclenumber = freezed,
    Object vehicleactive = freezed,
    Object qrcodeimg = freezed,
  }) {
    return _then(_FamilyMember(
      userId: userId == freezed ? _value.userId : userId as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      modelId: modelId == freezed ? _value.modelId : modelId as String,
      vehiclenumber: vehiclenumber == freezed
          ? _value.vehiclenumber
          : vehiclenumber as String,
      vehicleactive: vehicleactive == freezed
          ? _value.vehicleactive
          : vehicleactive as bool,
      qrcodeimg: qrcodeimg == freezed ? _value.qrcodeimg : qrcodeimg as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FamilyMember implements _FamilyMember {
  const _$_FamilyMember(
      {@required this.userId,
      @required this.name,
      @required this.email,
      @required this.modelId,
      @required this.vehiclenumber,
      @required this.vehicleactive,
      @required this.qrcodeimg})
      : assert(userId != null),
        assert(name != null),
        assert(email != null),
        assert(modelId != null),
        assert(vehiclenumber != null),
        assert(vehicleactive != null),
        assert(qrcodeimg != null);

  factory _$_FamilyMember.fromJson(Map<String, dynamic> json) =>
      _$_$_FamilyMemberFromJson(json);

  @override
  final String userId;
  @override
  final String name;
  @override
  final String email;
  @override
  final String modelId;
  @override
  final String vehiclenumber;
  @override
  final bool vehicleactive;
  @override
  final String qrcodeimg;

  @override
  String toString() {
    return 'FamilyMember(userId: $userId, name: $name, email: $email, modelId: $modelId, vehiclenumber: $vehiclenumber, vehicleactive: $vehicleactive, qrcodeimg: $qrcodeimg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FamilyMember &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality()
                    .equals(other.modelId, modelId)) &&
            (identical(other.vehiclenumber, vehiclenumber) ||
                const DeepCollectionEquality()
                    .equals(other.vehiclenumber, vehiclenumber)) &&
            (identical(other.vehicleactive, vehicleactive) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleactive, vehicleactive)) &&
            (identical(other.qrcodeimg, qrcodeimg) ||
                const DeepCollectionEquality()
                    .equals(other.qrcodeimg, qrcodeimg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(vehiclenumber) ^
      const DeepCollectionEquality().hash(vehicleactive) ^
      const DeepCollectionEquality().hash(qrcodeimg);

  @JsonKey(ignore: true)
  @override
  _$FamilyMemberCopyWith<_FamilyMember> get copyWith =>
      __$FamilyMemberCopyWithImpl<_FamilyMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FamilyMemberToJson(this);
  }
}

abstract class _FamilyMember implements FamilyMember {
  const factory _FamilyMember(
      {@required String userId,
      @required String name,
      @required String email,
      @required String modelId,
      @required String vehiclenumber,
      @required bool vehicleactive,
      @required String qrcodeimg}) = _$_FamilyMember;

  factory _FamilyMember.fromJson(Map<String, dynamic> json) =
      _$_FamilyMember.fromJson;

  @override
  String get userId;
  @override
  String get name;
  @override
  String get email;
  @override
  String get modelId;
  @override
  String get vehiclenumber;
  @override
  bool get vehicleactive;
  @override
  String get qrcodeimg;
  @override
  @JsonKey(ignore: true)
  _$FamilyMemberCopyWith<_FamilyMember> get copyWith;
}
