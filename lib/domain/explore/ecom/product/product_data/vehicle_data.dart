part of 'complete_product_data.dart';

@freezed
abstract class VehicleData with _$VehicleData {
  factory VehicleData({
    @JsonKey(name: 'servicetype') String servicetype,
    @JsonKey(name: 'vehicletype') String vehicletype,
    @JsonKey(name: 'propertytype') String propertytype,
    @JsonKey(name: 'tileimage', defaultValue: '') String tileimage,
    @JsonKey(name: 'imagelist') List<String> imagelist,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'listingownertype') String listingownertype,
    @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
    @JsonKey(name: 'make') String make,
    @JsonKey(name: 'model') String model,
    @JsonKey(name: 'yearbuild') int yearbuild,
    @JsonKey(name: 'milage') int milage,
    @JsonKey(name: 'exteriorcolor') String exteriorcolor,
    @JsonKey(name: 'interiorcolor', defaultValue: '') String interiorcolor,
    @JsonKey(name: 'cylinder', defaultValue: 0) int cylinder,
    @JsonKey(name: 'fueltype') String fueltype,
    @JsonKey(name: 'bodytype') String bodytype,
    @JsonKey(name: 'drivetype') String drivetype,
    @JsonKey(name: 'transmission') String transmission,
    @JsonKey(name: 'ownershiptransfer') String ownershiptransfer,
    @JsonKey(name: 'price') int price,
  }) = _VehicleData;
  factory VehicleData.fromJson(Map<String, dynamic> json) =>
      _$VehicleDataFromJson(json);
//require keysetting
}
