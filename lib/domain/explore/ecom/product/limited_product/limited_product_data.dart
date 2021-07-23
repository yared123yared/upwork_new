import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/domain/entity/json_helper.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'limited_product_data.freezed.dart';
part 'limited_product_data.g.dart';

@freezed
abstract class LimitedData with _$LimitedData {
  const factory LimitedData.pet({
    @JsonKey(name:'petclass')String petclass,
    @JsonKey(name:'name')String name,
    @JsonKey(name:'breed')String breed,
    @JsonKey(name:'gender')String gender,
    @JsonKey(name:'animalclass')String animalclass,
    @JsonKey(name:'age')int age,
    @JsonKey(name:'tileimage')String tileimage,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'price')double price,
    @JsonKey(name:'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)DateTime postedon,
    @JsonKey(name:'addressarea')ContactDetailsModel addressarea,
    @JsonKey(name:'serviceproviderid')String serviceproviderid,
    @JsonKey(name:'userid')String userid,
    @JsonKey(name:'productid')String productid,
  }) = LimitedPetData;

  const factory LimitedData.package({
    @JsonKey(name:'itemid')String itemid,
    @JsonKey(name:'desc')String desc,
    @JsonKey(name:'origprice')double origprice,
    @JsonKey(name:'discountedprice')double discountedprice,
  }) = LimitedPackageData;

  const factory LimitedData.product({
    @JsonKey(name:'productid')String productid,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'tileimage')String tileimage,
    @JsonKey(name:'reqqty')bool reqqty,
    @JsonKey(name:'isvegetarian')bool isvegetarian,
    @JsonKey(name:'spicetype')int spicetype,
    @JsonKey(name:'ispackage')bool ispackage,
    @JsonKey(name:'unitmeasure')String unitmeasure,
    @JsonKey(name:'origprice')double origprice,
    @JsonKey(name:'discountedprice')double discountedprice,
    @JsonKey(name:'varianttype')String varianttype,
    @JsonKey(name:'packdata')List<LimitedPackageData> packdata,
    @JsonKey(name:'userid')String userid,
    @JsonKey(name:'serviceproviderid')String serviceproviderid,
    @JsonKey(name:'contenttype')String contenttype,
    @JsonKey(name:'addressarea')ContactDetailsModel addressarea,
  }) = LimitedProductData;

  const factory LimitedData.vehicle({
    @JsonKey(name:'productid')String productid,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'vehicletype')String vehicletype,
    @JsonKey(name:'make')String make,
    @JsonKey(name:'model')String model,
    @JsonKey(name:'yearmade')int yearmade,
    @JsonKey(name:'milage')int milage,
    @JsonKey(name:'price')double price,
    @JsonKey(name:'tileimage')String tileimage,
    @JsonKey(name:'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)DateTime postedon,
    @JsonKey(name:'addressarea')ContactDetailsModel addressarea,
    @JsonKey(name:'serviceproviderid')String serviceproviderid,
    @JsonKey(name:'userid')String userid,
  }) = LimitedVehicleData;

  const factory LimitedData.realEstate({
    @JsonKey(name:'productid')String productid,
    @JsonKey(name:'listingtype')String listingtype,
    @JsonKey(name:'propertytype')String propertytype,
    @JsonKey(name:'numbedroom')int numbedroom,
    @JsonKey(name:'numbathroom')int numbathroom,
    @JsonKey(name:'sharingallowed')String sharingallowed,
    @JsonKey(name:'sqrfootage')int sqrfootage,
    @JsonKey(name:'price')double price,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'addressarea')ContactDetailsModel addressarea,
    @JsonKey(name:'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)DateTime postedon,
    @JsonKey(name:'tileimage')String tileimage,
    @JsonKey(name:'serviceprovidername')String serviceprovidername,
    @JsonKey(name:'serviceproviderid')String serviceproviderid,
    @JsonKey(name:'userid')String userid,
  }) = LimitedRealEstateData;

  const factory LimitedData.job({
    @JsonKey(name:'productid')String productid,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'companyname')String companyname,
    @JsonKey(name:'salaryrange')String salaryrange,
    @JsonKey(name:'addressarea')ContactDetailsModel addressarea,
    @JsonKey(name:'jobtype')String jobtype,
    @JsonKey(name:'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)DateTime postedon,
    @JsonKey(name:'serviceproviderid')String serviceproviderid,
    @JsonKey(name:'userid')String userid,

  }) = LimitedJobData;

  factory LimitedData.fromJson(Map<String, dynamic> json) =>
      _$LimitedDataFromJson(json);
}

@freezed
abstract class LimitedDataList with _$LimitedDataList {
  const factory LimitedDataList.pet({@required List<LimitedPetData> pets}) =
  LimitedPetList;

  const factory LimitedDataList.vehicle(
      {@required List<LimitedVehicleData> vehicles}) = LimitedVehicleList;

  const factory LimitedDataList.realEstate(
      {@required List<LimitedRealEstateData> properties}) =
  LimitedRealEstateList;

  const factory LimitedDataList.job({@required List<LimitedJobData> jobs}) =
  LimitedJobList;
  const factory LimitedDataList.product(
      {@required List<LimitedProductData> products}) = LimitedProductList;

  const factory LimitedDataList.empty() = LimitedEmptyList;

  factory LimitedDataList.fromJson(Map<String, dynamic> json) =>
      _$LimitedDataListFromJson(json);
}

@freezed
abstract class EcomProductType with _$EcomProductType {
  const factory EcomProductType.pet() = _PetType;
  const factory EcomProductType.vehicle() = _VehicleType;
  const factory EcomProductType.realEstate() = _RealEstateType;
  const factory EcomProductType.job() = _JobType;
  const factory EcomProductType.product() = _ProductType;
}
