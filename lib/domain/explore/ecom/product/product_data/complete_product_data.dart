import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_product_data.freezed.dart';
part 'complete_product_data.g.dart';

@freezed
abstract class CompleteProductData with _$CompleteProductData {
  const factory CompleteProductData.product() = ProductData;

  factory CompleteProductData.fromJson(Map<String, dynamic> json) =>
      _$CompleteProductDataFromJson(json);
}
