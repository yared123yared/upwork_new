// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_owner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductOwnerEventTearOff {
  const _$ProductOwnerEventTearOff();

// ignore: unused_element
  _GetProductList get({@required EcomProductType type}) {
    return _GetProductList(
      type: type,
    );
  }

// ignore: unused_element
  _AddProduct add({@required CompleteProductData productData}) {
    return _AddProduct(
      productData: productData,
    );
  }

// ignore: unused_element
  _UpdateProduct update({@required CompleteProductData productData}) {
    return _UpdateProduct(
      productData: productData,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductOwnerEvent = _$ProductOwnerEventTearOff();

/// @nodoc
mixin _$ProductOwnerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(EcomProductType type),
    @required TResult add(CompleteProductData productData),
    @required TResult update(CompleteProductData productData),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type),
    TResult add(CompleteProductData productData),
    TResult update(CompleteProductData productData),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProductOwnerEventCopyWith<$Res> {
  factory $ProductOwnerEventCopyWith(
          ProductOwnerEvent value, $Res Function(ProductOwnerEvent) then) =
      _$ProductOwnerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductOwnerEventCopyWithImpl<$Res>
    implements $ProductOwnerEventCopyWith<$Res> {
  _$ProductOwnerEventCopyWithImpl(this._value, this._then);

  final ProductOwnerEvent _value;
  // ignore: unused_field
  final $Res Function(ProductOwnerEvent) _then;
}

/// @nodoc
abstract class _$GetProductListCopyWith<$Res> {
  factory _$GetProductListCopyWith(
          _GetProductList value, $Res Function(_GetProductList) then) =
      __$GetProductListCopyWithImpl<$Res>;
  $Res call({EcomProductType type});

  $EcomProductTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$GetProductListCopyWithImpl<$Res>
    extends _$ProductOwnerEventCopyWithImpl<$Res>
    implements _$GetProductListCopyWith<$Res> {
  __$GetProductListCopyWithImpl(
      _GetProductList _value, $Res Function(_GetProductList) _then)
      : super(_value, (v) => _then(v as _GetProductList));

  @override
  _GetProductList get _value => super._value as _GetProductList;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_GetProductList(
      type: type == freezed ? _value.type : type as EcomProductType,
    ));
  }

  @override
  $EcomProductTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $EcomProductTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
class _$_GetProductList implements _GetProductList {
  const _$_GetProductList({@required this.type}) : assert(type != null);

  @override
  final EcomProductType type;

  @override
  String toString() {
    return 'ProductOwnerEvent.get(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetProductList &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$GetProductListCopyWith<_GetProductList> get copyWith =>
      __$GetProductListCopyWithImpl<_GetProductList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(EcomProductType type),
    @required TResult add(CompleteProductData productData),
    @required TResult update(CompleteProductData productData),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    return get(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type),
    TResult add(CompleteProductData productData),
    TResult update(CompleteProductData productData),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _GetProductList implements ProductOwnerEvent {
  const factory _GetProductList({@required EcomProductType type}) =
      _$_GetProductList;

  EcomProductType get type;
  @JsonKey(ignore: true)
  _$GetProductListCopyWith<_GetProductList> get copyWith;
}

/// @nodoc
abstract class _$AddProductCopyWith<$Res> {
  factory _$AddProductCopyWith(
          _AddProduct value, $Res Function(_AddProduct) then) =
      __$AddProductCopyWithImpl<$Res>;
  $Res call({CompleteProductData productData});

  $CompleteProductDataCopyWith<$Res> get productData;
}

/// @nodoc
class __$AddProductCopyWithImpl<$Res>
    extends _$ProductOwnerEventCopyWithImpl<$Res>
    implements _$AddProductCopyWith<$Res> {
  __$AddProductCopyWithImpl(
      _AddProduct _value, $Res Function(_AddProduct) _then)
      : super(_value, (v) => _then(v as _AddProduct));

  @override
  _AddProduct get _value => super._value as _AddProduct;

  @override
  $Res call({
    Object productData = freezed,
  }) {
    return _then(_AddProduct(
      productData: productData == freezed
          ? _value.productData
          : productData as CompleteProductData,
    ));
  }

  @override
  $CompleteProductDataCopyWith<$Res> get productData {
    if (_value.productData == null) {
      return null;
    }
    return $CompleteProductDataCopyWith<$Res>(_value.productData, (value) {
      return _then(_value.copyWith(productData: value));
    });
  }
}

/// @nodoc
class _$_AddProduct implements _AddProduct {
  const _$_AddProduct({@required this.productData})
      : assert(productData != null);

  @override
  final CompleteProductData productData;

  @override
  String toString() {
    return 'ProductOwnerEvent.add(productData: $productData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddProduct &&
            (identical(other.productData, productData) ||
                const DeepCollectionEquality()
                    .equals(other.productData, productData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productData);

  @JsonKey(ignore: true)
  @override
  _$AddProductCopyWith<_AddProduct> get copyWith =>
      __$AddProductCopyWithImpl<_AddProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(EcomProductType type),
    @required TResult add(CompleteProductData productData),
    @required TResult update(CompleteProductData productData),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    return add(productData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type),
    TResult add(CompleteProductData productData),
    TResult update(CompleteProductData productData),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(productData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements ProductOwnerEvent {
  const factory _AddProduct({@required CompleteProductData productData}) =
      _$_AddProduct;

  CompleteProductData get productData;
  @JsonKey(ignore: true)
  _$AddProductCopyWith<_AddProduct> get copyWith;
}

/// @nodoc
abstract class _$UpdateProductCopyWith<$Res> {
  factory _$UpdateProductCopyWith(
          _UpdateProduct value, $Res Function(_UpdateProduct) then) =
      __$UpdateProductCopyWithImpl<$Res>;
  $Res call({CompleteProductData productData});

  $CompleteProductDataCopyWith<$Res> get productData;
}

/// @nodoc
class __$UpdateProductCopyWithImpl<$Res>
    extends _$ProductOwnerEventCopyWithImpl<$Res>
    implements _$UpdateProductCopyWith<$Res> {
  __$UpdateProductCopyWithImpl(
      _UpdateProduct _value, $Res Function(_UpdateProduct) _then)
      : super(_value, (v) => _then(v as _UpdateProduct));

  @override
  _UpdateProduct get _value => super._value as _UpdateProduct;

  @override
  $Res call({
    Object productData = freezed,
  }) {
    return _then(_UpdateProduct(
      productData: productData == freezed
          ? _value.productData
          : productData as CompleteProductData,
    ));
  }

  @override
  $CompleteProductDataCopyWith<$Res> get productData {
    if (_value.productData == null) {
      return null;
    }
    return $CompleteProductDataCopyWith<$Res>(_value.productData, (value) {
      return _then(_value.copyWith(productData: value));
    });
  }
}

/// @nodoc
class _$_UpdateProduct implements _UpdateProduct {
  const _$_UpdateProduct({@required this.productData})
      : assert(productData != null);

  @override
  final CompleteProductData productData;

  @override
  String toString() {
    return 'ProductOwnerEvent.update(productData: $productData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateProduct &&
            (identical(other.productData, productData) ||
                const DeepCollectionEquality()
                    .equals(other.productData, productData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productData);

  @JsonKey(ignore: true)
  @override
  _$UpdateProductCopyWith<_UpdateProduct> get copyWith =>
      __$UpdateProductCopyWithImpl<_UpdateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(EcomProductType type),
    @required TResult add(CompleteProductData productData),
    @required TResult update(CompleteProductData productData),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    return update(productData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type),
    TResult add(CompleteProductData productData),
    TResult update(CompleteProductData productData),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(productData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateProduct implements ProductOwnerEvent {
  const factory _UpdateProduct({@required CompleteProductData productData}) =
      _$_UpdateProduct;

  CompleteProductData get productData;
  @JsonKey(ignore: true)
  _$UpdateProductCopyWith<_UpdateProduct> get copyWith;
}

/// @nodoc
class _$ProductOwnerStateTearOff {
  const _$ProductOwnerStateTearOff();

// ignore: unused_element
  _ProductListState call(
      {@required bool isLoading,
      @required bool workDone,
      @required Option<Failure> failure,
      @required String message,
      @required CompleteProductDataList listData}) {
    return _ProductListState(
      isLoading: isLoading,
      workDone: workDone,
      failure: failure,
      message: message,
      listData: listData,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductOwnerState = _$ProductOwnerStateTearOff();

/// @nodoc
mixin _$ProductOwnerState {
  bool get isLoading;
  bool get workDone;
  Option<Failure> get failure;
  String get message;
  CompleteProductDataList get listData;

  @JsonKey(ignore: true)
  $ProductOwnerStateCopyWith<ProductOwnerState> get copyWith;
}

/// @nodoc
abstract class $ProductOwnerStateCopyWith<$Res> {
  factory $ProductOwnerStateCopyWith(
          ProductOwnerState value, $Res Function(ProductOwnerState) then) =
      _$ProductOwnerStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool workDone,
      Option<Failure> failure,
      String message,
      CompleteProductDataList listData});

  $CompleteProductDataListCopyWith<$Res> get listData;
}

/// @nodoc
class _$ProductOwnerStateCopyWithImpl<$Res>
    implements $ProductOwnerStateCopyWith<$Res> {
  _$ProductOwnerStateCopyWithImpl(this._value, this._then);

  final ProductOwnerState _value;
  // ignore: unused_field
  final $Res Function(ProductOwnerState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object workDone = freezed,
    Object failure = freezed,
    Object message = freezed,
    Object listData = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      workDone: workDone == freezed ? _value.workDone : workDone as bool,
      failure: failure == freezed ? _value.failure : failure as Option<Failure>,
      message: message == freezed ? _value.message : message as String,
      listData: listData == freezed
          ? _value.listData
          : listData as CompleteProductDataList,
    ));
  }

  @override
  $CompleteProductDataListCopyWith<$Res> get listData {
    if (_value.listData == null) {
      return null;
    }
    return $CompleteProductDataListCopyWith<$Res>(_value.listData, (value) {
      return _then(_value.copyWith(listData: value));
    });
  }
}

/// @nodoc
abstract class _$ProductListStateCopyWith<$Res>
    implements $ProductOwnerStateCopyWith<$Res> {
  factory _$ProductListStateCopyWith(
          _ProductListState value, $Res Function(_ProductListState) then) =
      __$ProductListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool workDone,
      Option<Failure> failure,
      String message,
      CompleteProductDataList listData});

  @override
  $CompleteProductDataListCopyWith<$Res> get listData;
}

/// @nodoc
class __$ProductListStateCopyWithImpl<$Res>
    extends _$ProductOwnerStateCopyWithImpl<$Res>
    implements _$ProductListStateCopyWith<$Res> {
  __$ProductListStateCopyWithImpl(
      _ProductListState _value, $Res Function(_ProductListState) _then)
      : super(_value, (v) => _then(v as _ProductListState));

  @override
  _ProductListState get _value => super._value as _ProductListState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object workDone = freezed,
    Object failure = freezed,
    Object message = freezed,
    Object listData = freezed,
  }) {
    return _then(_ProductListState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      workDone: workDone == freezed ? _value.workDone : workDone as bool,
      failure: failure == freezed ? _value.failure : failure as Option<Failure>,
      message: message == freezed ? _value.message : message as String,
      listData: listData == freezed
          ? _value.listData
          : listData as CompleteProductDataList,
    ));
  }
}

/// @nodoc
class _$_ProductListState implements _ProductListState {
  const _$_ProductListState(
      {@required this.isLoading,
      @required this.workDone,
      @required this.failure,
      @required this.message,
      @required this.listData})
      : assert(isLoading != null),
        assert(workDone != null),
        assert(failure != null),
        assert(message != null),
        assert(listData != null);

  @override
  final bool isLoading;
  @override
  final bool workDone;
  @override
  final Option<Failure> failure;
  @override
  final String message;
  @override
  final CompleteProductDataList listData;

  @override
  String toString() {
    return 'ProductOwnerState(isLoading: $isLoading, workDone: $workDone, failure: $failure, message: $message, listData: $listData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductListState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.workDone, workDone) ||
                const DeepCollectionEquality()
                    .equals(other.workDone, workDone)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.listData, listData) ||
                const DeepCollectionEquality()
                    .equals(other.listData, listData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(workDone) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(listData);

  @JsonKey(ignore: true)
  @override
  _$ProductListStateCopyWith<_ProductListState> get copyWith =>
      __$ProductListStateCopyWithImpl<_ProductListState>(this, _$identity);
}

abstract class _ProductListState implements ProductOwnerState {
  const factory _ProductListState(
      {@required bool isLoading,
      @required bool workDone,
      @required Option<Failure> failure,
      @required String message,
      @required CompleteProductDataList listData}) = _$_ProductListState;

  @override
  bool get isLoading;
  @override
  bool get workDone;
  @override
  Option<Failure> get failure;
  @override
  String get message;
  @override
  CompleteProductDataList get listData;
  @override
  @JsonKey(ignore: true)
  _$ProductListStateCopyWith<_ProductListState> get copyWith;
}
