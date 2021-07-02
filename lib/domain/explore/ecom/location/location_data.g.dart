// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationData _$_$_LocationDataFromJson(Map<String, dynamic> json) {
  return _$_LocationData(
    Longitude: (json['Longitude'] as num)?.toDouble(),
    Latitude: (json['Latitude'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_LocationDataToJson(_$_LocationData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Longitude', instance.Longitude);
  writeNotNull('Latitude', instance.Latitude);
  return val;
}
