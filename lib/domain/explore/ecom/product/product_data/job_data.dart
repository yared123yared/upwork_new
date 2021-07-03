part of 'complete_product_data.dart';

@freezed
abstract class JobData with _$JobData {
  const factory JobData({
    @required bool arefreshersallowed,
    @required String companylogo,
    @required String companyname,
    @required ContactDetails contactdetails,
    @required String description,
    @JsonKey(defaultValue: 'N/A') @required String educationqualification,
    @required bool isparttime,
    @JsonKey(defaultValue: 'N/A') @required String listingownertype,
    @required int maxsalaryrange,
    @required int minsalaryrange,
    @required int minyearexperience,
    @required String title,
    @JsonKey(defaultValue: 'N/A') @required String worktype,
  }) = _JobData;

  factory JobData.fromJson(Map<String, dynamic> json) =>
      _$JobDataFromJson(json);
}
