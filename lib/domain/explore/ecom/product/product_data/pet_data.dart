part of 'complete_product_data.dart';

@freezed
abstract class PetData with _$PetData {
  factory PetData({
    @JsonKey(name: 'animaltype') String animaltype,
    @JsonKey(name: 'age') int age,
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'petname') String petname,
    @JsonKey(name: 'gender') String gender,
    @JsonKey(name: 'tileimage') String tileimage,
    @JsonKey(name: 'imagelist') List<String> imagelist,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'listingownertype') String listingownertype,
    @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
    @JsonKey(name: 'breed') String breed,
    @JsonKey(name: 'vaccinated') bool vaccinated,
    @JsonKey(name: 'ismilking') bool ismilking,
    @JsonKey(name: 'milkqty') int milkqty,
    @JsonKey(name: 'price') int price,
  }) = _PetData;
  factory PetData.fromJson(Map<String, dynamic> json) =>
      _$PetDataFromJson(json);
//require keysetting
}
