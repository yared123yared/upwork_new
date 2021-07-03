import 'package:freezed_annotation/freezed_annotation.dart';
part 'contact_details.freezed.dart';
part 'contact_details.g.dart';

@freezed
abstract class ContactDetailsData with _$ContactDetailsData {
  const factory ContactDetailsData({
    @required String name,
    @required String phonenum,
    @required bool sharephone,
    @required String email,
    @required bool shareemail,
    @required Address address,
    @required bool shareaddress,
  }) = ContactDetails;

  const factory ContactDetailsData.address({
    @required String country,
    @required String state,
    @required String district,
    @JsonKey(name: 'town_village') @required String townVillage,
    @JsonKey(name: 'area_sector') @required String areaSector,
    @required String societyname,
    @required String addressline,
    @required double latitude,
    @required double longitude,
  }) = Address;

  factory ContactDetailsData.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsDataFromJson(json);
}
