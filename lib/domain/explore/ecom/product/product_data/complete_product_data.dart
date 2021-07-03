import 'package:complex/domain/explore/ecom/contact_details/contact_details.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data.dart';
part 'job_data.dart';
part 'real_estate_data.dart';
part 'complete_product_data.freezed.dart';
part 'complete_product_data.g.dart';

@freezed
abstract class CompleteProductData with _$CompleteProductData {
  const factory CompleteProductData.realEstate({
    @JsonKey(name: 'docid') @required String docId,
    @required String dt,
    @JsonKey(name: 'serviceproviderid', defaultValue: '')
    @required
        String serviceId,
    @JsonKey(name: 'userid', defaultValue: '') @required String userId,
    @JsonKey(name: 'adata') @required JobData data,
  }) = CompleteRealEstate;

  const factory CompleteProductData.job(
      {@JsonKey(name: 'docid')
      @required
          String docId,
      @required
          String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
      @required
          String serviceId,
      @JsonKey(name: 'userid', defaultValue: '')
      @required
          String userId}) = CompleteJob;

  const factory CompleteProductData.pet(
      {@JsonKey(name: 'docid')
      @required
          String docId,
      @required
          String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
      @required
          String serviceId,
      @JsonKey(name: 'userid', defaultValue: '')
      @required
          String userId}) = CompletePet;
  const factory CompleteProductData.vehicle(
      {@JsonKey(name: 'docid')
      @required
          String docId,
      @required
          String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
      @required
          String serviceId,
      @JsonKey(name: 'userid', defaultValue: '')
      @required
          String userId}) = CompleteVehicle;
  const factory CompleteProductData.product(
      {@JsonKey(name: 'docid')
      @required
          String docId,
      @required
          String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
      @required
          String serviceId,
      @JsonKey(name: 'userid', defaultValue: '')
      @required
          String userId}) = CompleteProduct;

  factory CompleteProductData.fromJson(Map<String, dynamic> json) =>
      _$CompleteProductDataFromJson(json);
}

@freezed
abstract class CompleteProductDataList with _$CompleteProductDataList {
  const factory CompleteProductDataList.pet(
      {@required List<CompletePet> pets}) = CompletePetList;

  const factory CompleteProductDataList.vehicle(
      {@required List<CompleteVehicle> vehicles}) = CompleteVehicleList;

  const factory CompleteProductDataList.realEstate(
      {@required List<CompleteRealEstate> properties}) = CompleteRealEstateList;

  const factory CompleteProductDataList.job(
      {@required List<CompleteJob> jobs}) = CompleteJobList;
  const factory CompleteProductDataList.product(
      {@required List<LimitedProductData> products}) = LimitedProductList;

  const factory CompleteProductDataList.empty() = CompleteProductDataEmptyList;

  factory CompleteProductDataList.fromJson(Map<String, dynamic> json) =>
      _$CompleteProductDataListFromJson(json);
}
