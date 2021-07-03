part of 'complete_product_data.dart';

@freezed
abstract class RealEstateData with _$RealEstateData {
  factory RealEstateData({
    @JsonKey(name: 'servicetype') String servicetype,
    @JsonKey(name: 'usagetype') String usagetype,
    @JsonKey(name: 'propertytype') String propertytype,
    @JsonKey(name: 'tileimage') String tileimage,
    @JsonKey(name: 'imagelist', defaultValue: []) List<String> imagelist,
    @JsonKey(name: 'constructionstatus') String constructionstatus,
    @JsonKey(name: 'saletype') String saletype,
    @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime discountstartdate,
    @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp, nullable: true)
        DateTime discountenddate,
    @JsonKey(name: 'occupancytype', defaultValue: '') String occupancytype,
    @JsonKey(name: 'tenantgenderfamilypreference', defaultValue: [])
        List<String> tenantgenderfamilypreference,
    @JsonKey(name: 'ownershiptype') String ownershiptype,
    @JsonKey(name: 'sqfeetarea') int sqfeetarea,
    @JsonKey(name: 'numrooms') int numrooms,
    @JsonKey(name: 'numbath') int numbath,
    @JsonKey(name: 'furnishedstatus', defaultValue: 'N/A')
        String furnishedstatus,
    @JsonKey(name: 'haspowerbackup', defaultValue: false) bool haspowerbackup,
    @JsonKey(name: 'hasclubhouse') bool hasclubhouse,
    @JsonKey(name: 'hassecurity') bool hassecurity,
    @JsonKey(name: 'has24hrwater') bool has24hrwater,
    @JsonKey(name: 'hasgaspipeline', defaultValue: false) bool hasgaspipeline,
    @JsonKey(name: 'hasparking') bool hasparking,
    @JsonKey(name: 'hasgreenarea') bool hasgreenarea,
    @JsonKey(name: 'hasinternet', defaultValue: false) bool hasinternet,
    @JsonKey(name: 'hasairconditioner') bool hasairconditioner,
    @JsonKey(name: 'hascooler') bool hascooler,
    @JsonKey(name: 'hasfridge') bool hasfridge,
    @JsonKey(name: 'hastv') bool hastv,
    @JsonKey(name: 'haslift') bool haslift,
    @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime creationdate,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'listingownertype') String listingownertype,
    @JsonKey(name: 'price') int price,
    @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
  }) = _RealEstateData;
  factory RealEstateData.fromJson(Map<String, dynamic> json) =>
      _$RealEstateDataFromJson(json);
//require keysetting
}
