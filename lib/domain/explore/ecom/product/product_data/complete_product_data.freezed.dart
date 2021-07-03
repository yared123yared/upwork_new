// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'complete_product_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CompleteProductData _$CompleteProductDataFromJson(Map<String, dynamic> json) {
  return ProductData.fromJson(json);
}

/// @nodoc
class _$CompleteProductDataTearOff {
  const _$CompleteProductDataTearOff();

// ignore: unused_element
  ProductData product() {
    return const ProductData();
  }

// ignore: unused_element
  CompleteProductData fromJson(Map<String, Object> json) {
    return CompleteProductData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CompleteProductData = _$CompleteProductDataTearOff();

/// @nodoc
mixin _$CompleteProductData {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult product(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult product(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult product(ProductData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult product(ProductData value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $CompleteProductDataCopyWith<$Res> {
  factory $CompleteProductDataCopyWith(
          CompleteProductData value, $Res Function(CompleteProductData) then) =
      _$CompleteProductDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompleteProductDataCopyWithImpl<$Res>
    implements $CompleteProductDataCopyWith<$Res> {
  _$CompleteProductDataCopyWithImpl(this._value, this._then);

  final CompleteProductData _value;
  // ignore: unused_field
  final $Res Function(CompleteProductData) _then;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res>
    extends _$CompleteProductDataCopyWithImpl<$Res>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(
      ProductData _value, $Res Function(ProductData) _then)
      : super(_value, (v) => _then(v as ProductData));

  @override
  ProductData get _value => super._value as ProductData;
}

@JsonSerializable()

/// @nodoc
class _$ProductData implements ProductData {
  const _$ProductData();

  factory _$ProductData.fromJson(Map<String, dynamic> json) =>
      _$_$ProductDataFromJson(json);

  @override
  String toString() {
    return 'CompleteProductData.product()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult product(),
  }) {
    assert(product != null);
    return product();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult product(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (product != null) {
      return product();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult product(ProductData value),
  }) {
    assert(product != null);
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult product(ProductData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (product != null) {
      return product(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ProductDataToJson(this);
  }
}

abstract class ProductData implements CompleteProductData {
  const factory ProductData() = _$ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductData.fromJson;
}
