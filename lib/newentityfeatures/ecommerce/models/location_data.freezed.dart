// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocationData _$LocationDataFromJson(Map<String, dynamic> json) {
  return _LocationData.fromJson(json);
}

/// @nodoc
class _$LocationDataTearOff {
  const _$LocationDataTearOff();

// ignore: unused_element
  _LocationData call(
      {@JsonKey(name: 'Longitude') double Longitude,
      @JsonKey(name: 'Latitude') double Latitude}) {
    return _LocationData(
      Longitude: Longitude,
      Latitude: Latitude,
    );
  }

// ignore: unused_element
  LocationData fromJson(Map<String, Object> json) {
    return LocationData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocationData = _$LocationDataTearOff();

/// @nodoc
mixin _$LocationData {
  @JsonKey(name: 'Longitude')
  double get Longitude;
  @JsonKey(name: 'Latitude')
  double get Latitude;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LocationDataCopyWith<LocationData> get copyWith;
}

/// @nodoc
abstract class $LocationDataCopyWith<$Res> {
  factory $LocationDataCopyWith(
          LocationData value, $Res Function(LocationData) then) =
      _$LocationDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Longitude') double Longitude,
      @JsonKey(name: 'Latitude') double Latitude});
}

/// @nodoc
class _$LocationDataCopyWithImpl<$Res> implements $LocationDataCopyWith<$Res> {
  _$LocationDataCopyWithImpl(this._value, this._then);

  final LocationData _value;
  // ignore: unused_field
  final $Res Function(LocationData) _then;

  @override
  $Res call({
    Object Longitude = freezed,
    Object Latitude = freezed,
  }) {
    return _then(_value.copyWith(
      Longitude: Longitude == freezed ? _value.Longitude : Longitude as double,
      Latitude: Latitude == freezed ? _value.Latitude : Latitude as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationDataCopyWith<$Res>
    implements $LocationDataCopyWith<$Res> {
  factory _$LocationDataCopyWith(
          _LocationData value, $Res Function(_LocationData) then) =
      __$LocationDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Longitude') double Longitude,
      @JsonKey(name: 'Latitude') double Latitude});
}

/// @nodoc
class __$LocationDataCopyWithImpl<$Res> extends _$LocationDataCopyWithImpl<$Res>
    implements _$LocationDataCopyWith<$Res> {
  __$LocationDataCopyWithImpl(
      _LocationData _value, $Res Function(_LocationData) _then)
      : super(_value, (v) => _then(v as _LocationData));

  @override
  _LocationData get _value => super._value as _LocationData;

  @override
  $Res call({
    Object Longitude = freezed,
    Object Latitude = freezed,
  }) {
    return _then(_LocationData(
      Longitude: Longitude == freezed ? _value.Longitude : Longitude as double,
      Latitude: Latitude == freezed ? _value.Latitude : Latitude as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LocationData implements _LocationData {
  _$_LocationData(
      {@JsonKey(name: 'Longitude') this.Longitude,
      @JsonKey(name: 'Latitude') this.Latitude});

  factory _$_LocationData.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationDataFromJson(json);

  @override
  @JsonKey(name: 'Longitude')
  final double Longitude;
  @override
  @JsonKey(name: 'Latitude')
  final double Latitude;

  @override
  String toString() {
    return 'LocationData(Longitude: $Longitude, Latitude: $Latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationData &&
            (identical(other.Longitude, Longitude) ||
                const DeepCollectionEquality()
                    .equals(other.Longitude, Longitude)) &&
            (identical(other.Latitude, Latitude) ||
                const DeepCollectionEquality()
                    .equals(other.Latitude, Latitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(Longitude) ^
      const DeepCollectionEquality().hash(Latitude);

  @JsonKey(ignore: true)
  @override
  _$LocationDataCopyWith<_LocationData> get copyWith =>
      __$LocationDataCopyWithImpl<_LocationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationDataToJson(this);
  }
}

abstract class _LocationData implements LocationData {
  factory _LocationData(
      {@JsonKey(name: 'Longitude') double Longitude,
      @JsonKey(name: 'Latitude') double Latitude}) = _$_LocationData;

  factory _LocationData.fromJson(Map<String, dynamic> json) =
      _$_LocationData.fromJson;

  @override
  @JsonKey(name: 'Longitude')
  double get Longitude;
  @override
  @JsonKey(name: 'Latitude')
  double get Latitude;
  @override
  @JsonKey(ignore: true)
  _$LocationDataCopyWith<_LocationData> get copyWith;
}
