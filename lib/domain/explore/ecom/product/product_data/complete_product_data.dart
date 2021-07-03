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
  const factory CompleteProductData.realEstate(
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
          String userId}) = CompleteRealEstate;

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

  factory CompleteProductData.fromJson(Map<String, dynamic> json) =>
      _$CompleteProductDataFromJson(json);
}
