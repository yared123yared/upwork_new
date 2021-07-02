import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_data.freezed.dart';
part 'location_data.g.dart';

@freezed
abstract class LocationData with _$LocationData {
  factory LocationData({
    @JsonKey(name: 'Longitude') double Longitude,
    @JsonKey(name: 'Latitude') double Latitude,
  }) = _LocationData;
  factory LocationData.fromJson(Map<String, dynamic> json) =>
      _$LocationDataFromJson(json);
}
