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
  _GetProductList get(
      {@required EcomProductType type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin,
      @required int limit,
      @required String lastdocumentid}) {
    return _GetProductList(
      type: type,
      entitytype: entitytype,
      entityid: entityid,
      isservice: isservice,
      origin: origin,
      limit: limit,
      lastdocumentid: lastdocumentid,
    );
  }

// ignore: unused_element
  _AddProduct add(
      {@required Map<String, dynamic> productdata,
      @required String type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin}) {
    return _AddProduct(
      productdata: productdata,
      type: type,
      entitytype: entitytype,
      entityid: entityid,
      isservice: isservice,
      origin: origin,
    );
  }

// ignore: unused_element
  _UpdateProduct update(
      {@required Map<String, dynamic> productdata,
      @required String type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin}) {
    return _UpdateProduct(
      productdata: productdata,
      type: type,
      entitytype: entitytype,
      entityid: entityid,
      isservice: isservice,
      origin: origin,
    );
  }

// ignore: unused_element
  _GetProductSuggestion getProductSuggestion(
      {@required String texttosearch,
      @required String type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin,
      int offset}) {
    return _GetProductSuggestion(
      texttosearch: texttosearch,
      type: type,
      entitytype: entitytype,
      entityid: entityid,
      isservice: isservice,
      origin: origin,
      offset: offset,
    );
  }

// ignore: unused_element
  _GetProductById getProductById(
      {@required String productid,
      @required EcomProductType type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin,
      int offset}) {
    return _GetProductById(
      productid: productid,
      type: type,
      entitytype: entitytype,
      entityid: entityid,
      isservice: isservice,
      origin: origin,
      offset: offset,
    );
  }

// ignore: unused_element
  _DeleteProduct delete(
      {@required String productid,
      @required String type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin}) {
    return _DeleteProduct(
      productid: productid,
      type: type,
      entitytype: entitytype,
      entityid: entityid,
      isservice: isservice,
      origin: origin,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductOwnerEvent = _$ProductOwnerEventTearOff();

/// @nodoc
mixin _$ProductOwnerEvent {
  String get entitytype;
  String get entityid;
  bool get isservice;
  int get origin;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult get(EcomProductType type, String entitytype, String entityid,
            bool isservice, int origin, int limit, String lastdocumentid),
    @required
        TResult add(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult update(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult getProductSuggestion(
            String texttosearch,
            String type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult getProductById(
            String productid,
            EcomProductType type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult delete(String productid, String type, String entitytype,
            String entityid, bool isservice, int origin),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type, String entitytype, String entityid,
        bool isservice, int origin, int limit, String lastdocumentid),
    TResult add(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult update(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult getProductSuggestion(
        String texttosearch,
        String type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult getProductById(
        String productid,
        EcomProductType type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult delete(String productid, String type, String entitytype,
        String entityid, bool isservice, int origin),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
    @required TResult getProductSuggestion(_GetProductSuggestion value),
    @required TResult getProductById(_GetProductById value),
    @required TResult delete(_DeleteProduct value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    TResult getProductSuggestion(_GetProductSuggestion value),
    TResult getProductById(_GetProductById value),
    TResult delete(_DeleteProduct value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ProductOwnerEventCopyWith<ProductOwnerEvent> get copyWith;
}

/// @nodoc
abstract class $ProductOwnerEventCopyWith<$Res> {
  factory $ProductOwnerEventCopyWith(
          ProductOwnerEvent value, $Res Function(ProductOwnerEvent) then) =
      _$ProductOwnerEventCopyWithImpl<$Res>;
  $Res call({String entitytype, String entityid, bool isservice, int origin});
}

/// @nodoc
class _$ProductOwnerEventCopyWithImpl<$Res>
    implements $ProductOwnerEventCopyWith<$Res> {
  _$ProductOwnerEventCopyWithImpl(this._value, this._then);

  final ProductOwnerEvent _value;
  // ignore: unused_field
  final $Res Function(ProductOwnerEvent) _then;

  @override
  $Res call({
    Object entitytype = freezed,
    Object entityid = freezed,
    Object isservice = freezed,
    Object origin = freezed,
  }) {
    return _then(_value.copyWith(
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      isservice: isservice == freezed ? _value.isservice : isservice as bool,
      origin: origin == freezed ? _value.origin : origin as int,
    ));
  }
}

/// @nodoc
abstract class _$GetProductListCopyWith<$Res>
    implements $ProductOwnerEventCopyWith<$Res> {
  factory _$GetProductListCopyWith(
          _GetProductList value, $Res Function(_GetProductList) then) =
      __$GetProductListCopyWithImpl<$Res>;
  @override
  $Res call(
      {EcomProductType type,
      String entitytype,
      String entityid,
      bool isservice,
      int origin,
      int limit,
      String lastdocumentid});

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
    Object entitytype = freezed,
    Object entityid = freezed,
    Object isservice = freezed,
    Object origin = freezed,
    Object limit = freezed,
    Object lastdocumentid = freezed,
  }) {
    return _then(_GetProductList(
      type: type == freezed ? _value.type : type as EcomProductType,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      isservice: isservice == freezed ? _value.isservice : isservice as bool,
      origin: origin == freezed ? _value.origin : origin as int,
      limit: limit == freezed ? _value.limit : limit as int,
      lastdocumentid: lastdocumentid == freezed
          ? _value.lastdocumentid
          : lastdocumentid as String,
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
  const _$_GetProductList(
      {@required this.type,
      @required this.entitytype,
      @required this.entityid,
      @required this.isservice,
      @required this.origin,
      @required this.limit,
      @required this.lastdocumentid})
      : assert(type != null),
        assert(entitytype != null),
        assert(entityid != null),
        assert(isservice != null),
        assert(origin != null),
        assert(limit != null),
        assert(lastdocumentid != null);

  @override
  final EcomProductType type;
  @override
  final String entitytype;
  @override
  final String entityid;
  @override
  final bool isservice;
  @override
  final int origin;
  @override
  final int limit;
  @override
  final String lastdocumentid;

  @override
  String toString() {
    return 'ProductOwnerEvent.get(type: $type, entitytype: $entitytype, entityid: $entityid, isservice: $isservice, origin: $origin, limit: $limit, lastdocumentid: $lastdocumentid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetProductList &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.entitytype, entitytype) ||
                const DeepCollectionEquality()
                    .equals(other.entitytype, entitytype)) &&
            (identical(other.entityid, entityid) ||
                const DeepCollectionEquality()
                    .equals(other.entityid, entityid)) &&
            (identical(other.isservice, isservice) ||
                const DeepCollectionEquality()
                    .equals(other.isservice, isservice)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.lastdocumentid, lastdocumentid) ||
                const DeepCollectionEquality()
                    .equals(other.lastdocumentid, lastdocumentid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(entitytype) ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(isservice) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(lastdocumentid);

  @JsonKey(ignore: true)
  @override
  _$GetProductListCopyWith<_GetProductList> get copyWith =>
      __$GetProductListCopyWithImpl<_GetProductList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult get(EcomProductType type, String entitytype, String entityid,
            bool isservice, int origin, int limit, String lastdocumentid),
    @required
        TResult add(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult update(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult getProductSuggestion(
            String texttosearch,
            String type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult getProductById(
            String productid,
            EcomProductType type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult delete(String productid, String type, String entitytype,
            String entityid, bool isservice, int origin),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return get(
        type, entitytype, entityid, isservice, origin, limit, lastdocumentid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type, String entitytype, String entityid,
        bool isservice, int origin, int limit, String lastdocumentid),
    TResult add(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult update(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult getProductSuggestion(
        String texttosearch,
        String type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult getProductById(
        String productid,
        EcomProductType type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult delete(String productid, String type, String entitytype,
        String entityid, bool isservice, int origin),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get(
          type, entitytype, entityid, isservice, origin, limit, lastdocumentid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
    @required TResult getProductSuggestion(_GetProductSuggestion value),
    @required TResult getProductById(_GetProductById value),
    @required TResult delete(_DeleteProduct value),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    TResult getProductSuggestion(_GetProductSuggestion value),
    TResult getProductById(_GetProductById value),
    TResult delete(_DeleteProduct value),
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
  const factory _GetProductList(
      {@required EcomProductType type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin,
      @required int limit,
      @required String lastdocumentid}) = _$_GetProductList;

  EcomProductType get type;
  @override
  String get entitytype;
  @override
  String get entityid;
  @override
  bool get isservice;
  @override
  int get origin;
  int get limit;
  String get lastdocumentid;
  @override
  @JsonKey(ignore: true)
  _$GetProductListCopyWith<_GetProductList> get copyWith;
}

/// @nodoc
abstract class _$AddProductCopyWith<$Res>
    implements $ProductOwnerEventCopyWith<$Res> {
  factory _$AddProductCopyWith(
          _AddProduct value, $Res Function(_AddProduct) then) =
      __$AddProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> productdata,
      String type,
      String entitytype,
      String entityid,
      bool isservice,
      int origin});
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
    Object productdata = freezed,
    Object type = freezed,
    Object entitytype = freezed,
    Object entityid = freezed,
    Object isservice = freezed,
    Object origin = freezed,
  }) {
    return _then(_AddProduct(
      productdata: productdata == freezed
          ? _value.productdata
          : productdata as Map<String, dynamic>,
      type: type == freezed ? _value.type : type as String,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      isservice: isservice == freezed ? _value.isservice : isservice as bool,
      origin: origin == freezed ? _value.origin : origin as int,
    ));
  }
}

/// @nodoc
class _$_AddProduct implements _AddProduct {
  const _$_AddProduct(
      {@required this.productdata,
      @required this.type,
      @required this.entitytype,
      @required this.entityid,
      @required this.isservice,
      @required this.origin})
      : assert(productdata != null),
        assert(type != null),
        assert(entitytype != null),
        assert(entityid != null),
        assert(isservice != null),
        assert(origin != null);

  @override
  final Map<String, dynamic> productdata;
  @override
  final String type;
  @override
  final String entitytype;
  @override
  final String entityid;
  @override
  final bool isservice;
  @override
  final int origin;

  @override
  String toString() {
    return 'ProductOwnerEvent.add(productdata: $productdata, type: $type, entitytype: $entitytype, entityid: $entityid, isservice: $isservice, origin: $origin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddProduct &&
            (identical(other.productdata, productdata) ||
                const DeepCollectionEquality()
                    .equals(other.productdata, productdata)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.entitytype, entitytype) ||
                const DeepCollectionEquality()
                    .equals(other.entitytype, entitytype)) &&
            (identical(other.entityid, entityid) ||
                const DeepCollectionEquality()
                    .equals(other.entityid, entityid)) &&
            (identical(other.isservice, isservice) ||
                const DeepCollectionEquality()
                    .equals(other.isservice, isservice)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productdata) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(entitytype) ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(isservice) ^
      const DeepCollectionEquality().hash(origin);

  @JsonKey(ignore: true)
  @override
  _$AddProductCopyWith<_AddProduct> get copyWith =>
      __$AddProductCopyWithImpl<_AddProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult get(EcomProductType type, String entitytype, String entityid,
            bool isservice, int origin, int limit, String lastdocumentid),
    @required
        TResult add(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult update(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult getProductSuggestion(
            String texttosearch,
            String type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult getProductById(
            String productid,
            EcomProductType type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult delete(String productid, String type, String entitytype,
            String entityid, bool isservice, int origin),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return add(productdata, type, entitytype, entityid, isservice, origin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type, String entitytype, String entityid,
        bool isservice, int origin, int limit, String lastdocumentid),
    TResult add(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult update(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult getProductSuggestion(
        String texttosearch,
        String type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult getProductById(
        String productid,
        EcomProductType type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult delete(String productid, String type, String entitytype,
        String entityid, bool isservice, int origin),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(productdata, type, entitytype, entityid, isservice, origin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
    @required TResult getProductSuggestion(_GetProductSuggestion value),
    @required TResult getProductById(_GetProductById value),
    @required TResult delete(_DeleteProduct value),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    TResult getProductSuggestion(_GetProductSuggestion value),
    TResult getProductById(_GetProductById value),
    TResult delete(_DeleteProduct value),
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
  const factory _AddProduct(
      {@required Map<String, dynamic> productdata,
      @required String type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin}) = _$_AddProduct;

  Map<String, dynamic> get productdata;
  String get type;
  @override
  String get entitytype;
  @override
  String get entityid;
  @override
  bool get isservice;
  @override
  int get origin;
  @override
  @JsonKey(ignore: true)
  _$AddProductCopyWith<_AddProduct> get copyWith;
}

/// @nodoc
abstract class _$UpdateProductCopyWith<$Res>
    implements $ProductOwnerEventCopyWith<$Res> {
  factory _$UpdateProductCopyWith(
          _UpdateProduct value, $Res Function(_UpdateProduct) then) =
      __$UpdateProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> productdata,
      String type,
      String entitytype,
      String entityid,
      bool isservice,
      int origin});
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
    Object productdata = freezed,
    Object type = freezed,
    Object entitytype = freezed,
    Object entityid = freezed,
    Object isservice = freezed,
    Object origin = freezed,
  }) {
    return _then(_UpdateProduct(
      productdata: productdata == freezed
          ? _value.productdata
          : productdata as Map<String, dynamic>,
      type: type == freezed ? _value.type : type as String,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      isservice: isservice == freezed ? _value.isservice : isservice as bool,
      origin: origin == freezed ? _value.origin : origin as int,
    ));
  }
}

/// @nodoc
class _$_UpdateProduct implements _UpdateProduct {
  const _$_UpdateProduct(
      {@required this.productdata,
      @required this.type,
      @required this.entitytype,
      @required this.entityid,
      @required this.isservice,
      @required this.origin})
      : assert(productdata != null),
        assert(type != null),
        assert(entitytype != null),
        assert(entityid != null),
        assert(isservice != null),
        assert(origin != null);

  @override
  final Map<String, dynamic> productdata;
  @override
  final String type;
  @override
  final String entitytype;
  @override
  final String entityid;
  @override
  final bool isservice;
  @override
  final int origin;

  @override
  String toString() {
    return 'ProductOwnerEvent.update(productdata: $productdata, type: $type, entitytype: $entitytype, entityid: $entityid, isservice: $isservice, origin: $origin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateProduct &&
            (identical(other.productdata, productdata) ||
                const DeepCollectionEquality()
                    .equals(other.productdata, productdata)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.entitytype, entitytype) ||
                const DeepCollectionEquality()
                    .equals(other.entitytype, entitytype)) &&
            (identical(other.entityid, entityid) ||
                const DeepCollectionEquality()
                    .equals(other.entityid, entityid)) &&
            (identical(other.isservice, isservice) ||
                const DeepCollectionEquality()
                    .equals(other.isservice, isservice)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productdata) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(entitytype) ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(isservice) ^
      const DeepCollectionEquality().hash(origin);

  @JsonKey(ignore: true)
  @override
  _$UpdateProductCopyWith<_UpdateProduct> get copyWith =>
      __$UpdateProductCopyWithImpl<_UpdateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult get(EcomProductType type, String entitytype, String entityid,
            bool isservice, int origin, int limit, String lastdocumentid),
    @required
        TResult add(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult update(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult getProductSuggestion(
            String texttosearch,
            String type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult getProductById(
            String productid,
            EcomProductType type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult delete(String productid, String type, String entitytype,
            String entityid, bool isservice, int origin),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return update(productdata, type, entitytype, entityid, isservice, origin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type, String entitytype, String entityid,
        bool isservice, int origin, int limit, String lastdocumentid),
    TResult add(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult update(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult getProductSuggestion(
        String texttosearch,
        String type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult getProductById(
        String productid,
        EcomProductType type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult delete(String productid, String type, String entitytype,
        String entityid, bool isservice, int origin),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(productdata, type, entitytype, entityid, isservice, origin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
    @required TResult getProductSuggestion(_GetProductSuggestion value),
    @required TResult getProductById(_GetProductById value),
    @required TResult delete(_DeleteProduct value),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    TResult getProductSuggestion(_GetProductSuggestion value),
    TResult getProductById(_GetProductById value),
    TResult delete(_DeleteProduct value),
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
  const factory _UpdateProduct(
      {@required Map<String, dynamic> productdata,
      @required String type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin}) = _$_UpdateProduct;

  Map<String, dynamic> get productdata;
  String get type;
  @override
  String get entitytype;
  @override
  String get entityid;
  @override
  bool get isservice;
  @override
  int get origin;
  @override
  @JsonKey(ignore: true)
  _$UpdateProductCopyWith<_UpdateProduct> get copyWith;
}

/// @nodoc
abstract class _$GetProductSuggestionCopyWith<$Res>
    implements $ProductOwnerEventCopyWith<$Res> {
  factory _$GetProductSuggestionCopyWith(_GetProductSuggestion value,
          $Res Function(_GetProductSuggestion) then) =
      __$GetProductSuggestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String texttosearch,
      String type,
      String entitytype,
      String entityid,
      bool isservice,
      int origin,
      int offset});
}

/// @nodoc
class __$GetProductSuggestionCopyWithImpl<$Res>
    extends _$ProductOwnerEventCopyWithImpl<$Res>
    implements _$GetProductSuggestionCopyWith<$Res> {
  __$GetProductSuggestionCopyWithImpl(
      _GetProductSuggestion _value, $Res Function(_GetProductSuggestion) _then)
      : super(_value, (v) => _then(v as _GetProductSuggestion));

  @override
  _GetProductSuggestion get _value => super._value as _GetProductSuggestion;

  @override
  $Res call({
    Object texttosearch = freezed,
    Object type = freezed,
    Object entitytype = freezed,
    Object entityid = freezed,
    Object isservice = freezed,
    Object origin = freezed,
    Object offset = freezed,
  }) {
    return _then(_GetProductSuggestion(
      texttosearch: texttosearch == freezed
          ? _value.texttosearch
          : texttosearch as String,
      type: type == freezed ? _value.type : type as String,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      isservice: isservice == freezed ? _value.isservice : isservice as bool,
      origin: origin == freezed ? _value.origin : origin as int,
      offset: offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
class _$_GetProductSuggestion implements _GetProductSuggestion {
  const _$_GetProductSuggestion(
      {@required this.texttosearch,
      @required this.type,
      @required this.entitytype,
      @required this.entityid,
      @required this.isservice,
      @required this.origin,
      this.offset})
      : assert(texttosearch != null),
        assert(type != null),
        assert(entitytype != null),
        assert(entityid != null),
        assert(isservice != null),
        assert(origin != null);

  @override
  final String texttosearch;
  @override
  final String type;
  @override
  final String entitytype;
  @override
  final String entityid;
  @override
  final bool isservice;
  @override
  final int origin;
  @override
  final int offset;

  @override
  String toString() {
    return 'ProductOwnerEvent.getProductSuggestion(texttosearch: $texttosearch, type: $type, entitytype: $entitytype, entityid: $entityid, isservice: $isservice, origin: $origin, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetProductSuggestion &&
            (identical(other.texttosearch, texttosearch) ||
                const DeepCollectionEquality()
                    .equals(other.texttosearch, texttosearch)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.entitytype, entitytype) ||
                const DeepCollectionEquality()
                    .equals(other.entitytype, entitytype)) &&
            (identical(other.entityid, entityid) ||
                const DeepCollectionEquality()
                    .equals(other.entityid, entityid)) &&
            (identical(other.isservice, isservice) ||
                const DeepCollectionEquality()
                    .equals(other.isservice, isservice)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(texttosearch) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(entitytype) ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(isservice) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(offset);

  @JsonKey(ignore: true)
  @override
  _$GetProductSuggestionCopyWith<_GetProductSuggestion> get copyWith =>
      __$GetProductSuggestionCopyWithImpl<_GetProductSuggestion>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult get(EcomProductType type, String entitytype, String entityid,
            bool isservice, int origin, int limit, String lastdocumentid),
    @required
        TResult add(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult update(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult getProductSuggestion(
            String texttosearch,
            String type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult getProductById(
            String productid,
            EcomProductType type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult delete(String productid, String type, String entitytype,
            String entityid, bool isservice, int origin),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return getProductSuggestion(
        texttosearch, type, entitytype, entityid, isservice, origin, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type, String entitytype, String entityid,
        bool isservice, int origin, int limit, String lastdocumentid),
    TResult add(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult update(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult getProductSuggestion(
        String texttosearch,
        String type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult getProductById(
        String productid,
        EcomProductType type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult delete(String productid, String type, String entitytype,
        String entityid, bool isservice, int origin),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductSuggestion != null) {
      return getProductSuggestion(
          texttosearch, type, entitytype, entityid, isservice, origin, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
    @required TResult getProductSuggestion(_GetProductSuggestion value),
    @required TResult getProductById(_GetProductById value),
    @required TResult delete(_DeleteProduct value),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return getProductSuggestion(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    TResult getProductSuggestion(_GetProductSuggestion value),
    TResult getProductById(_GetProductById value),
    TResult delete(_DeleteProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductSuggestion != null) {
      return getProductSuggestion(this);
    }
    return orElse();
  }
}

abstract class _GetProductSuggestion implements ProductOwnerEvent {
  const factory _GetProductSuggestion(
      {@required String texttosearch,
      @required String type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin,
      int offset}) = _$_GetProductSuggestion;

  String get texttosearch;
  String get type;
  @override
  String get entitytype;
  @override
  String get entityid;
  @override
  bool get isservice;
  @override
  int get origin;
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$GetProductSuggestionCopyWith<_GetProductSuggestion> get copyWith;
}

/// @nodoc
abstract class _$GetProductByIdCopyWith<$Res>
    implements $ProductOwnerEventCopyWith<$Res> {
  factory _$GetProductByIdCopyWith(
          _GetProductById value, $Res Function(_GetProductById) then) =
      __$GetProductByIdCopyWithImpl<$Res>;
  @override
  $Res call(
      {String productid,
      EcomProductType type,
      String entitytype,
      String entityid,
      bool isservice,
      int origin,
      int offset});

  $EcomProductTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$GetProductByIdCopyWithImpl<$Res>
    extends _$ProductOwnerEventCopyWithImpl<$Res>
    implements _$GetProductByIdCopyWith<$Res> {
  __$GetProductByIdCopyWithImpl(
      _GetProductById _value, $Res Function(_GetProductById) _then)
      : super(_value, (v) => _then(v as _GetProductById));

  @override
  _GetProductById get _value => super._value as _GetProductById;

  @override
  $Res call({
    Object productid = freezed,
    Object type = freezed,
    Object entitytype = freezed,
    Object entityid = freezed,
    Object isservice = freezed,
    Object origin = freezed,
    Object offset = freezed,
  }) {
    return _then(_GetProductById(
      productid: productid == freezed ? _value.productid : productid as String,
      type: type == freezed ? _value.type : type as EcomProductType,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      isservice: isservice == freezed ? _value.isservice : isservice as bool,
      origin: origin == freezed ? _value.origin : origin as int,
      offset: offset == freezed ? _value.offset : offset as int,
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
class _$_GetProductById implements _GetProductById {
  const _$_GetProductById(
      {@required this.productid,
      @required this.type,
      @required this.entitytype,
      @required this.entityid,
      @required this.isservice,
      @required this.origin,
      this.offset})
      : assert(productid != null),
        assert(type != null),
        assert(entitytype != null),
        assert(entityid != null),
        assert(isservice != null),
        assert(origin != null);

  @override
  final String productid;
  @override
  final EcomProductType type;
  @override
  final String entitytype;
  @override
  final String entityid;
  @override
  final bool isservice;
  @override
  final int origin;
  @override
  final int offset;

  @override
  String toString() {
    return 'ProductOwnerEvent.getProductById(productid: $productid, type: $type, entitytype: $entitytype, entityid: $entityid, isservice: $isservice, origin: $origin, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetProductById &&
            (identical(other.productid, productid) ||
                const DeepCollectionEquality()
                    .equals(other.productid, productid)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.entitytype, entitytype) ||
                const DeepCollectionEquality()
                    .equals(other.entitytype, entitytype)) &&
            (identical(other.entityid, entityid) ||
                const DeepCollectionEquality()
                    .equals(other.entityid, entityid)) &&
            (identical(other.isservice, isservice) ||
                const DeepCollectionEquality()
                    .equals(other.isservice, isservice)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productid) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(entitytype) ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(isservice) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(offset);

  @JsonKey(ignore: true)
  @override
  _$GetProductByIdCopyWith<_GetProductById> get copyWith =>
      __$GetProductByIdCopyWithImpl<_GetProductById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult get(EcomProductType type, String entitytype, String entityid,
            bool isservice, int origin, int limit, String lastdocumentid),
    @required
        TResult add(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult update(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult getProductSuggestion(
            String texttosearch,
            String type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult getProductById(
            String productid,
            EcomProductType type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult delete(String productid, String type, String entitytype,
            String entityid, bool isservice, int origin),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return getProductById(
        productid, type, entitytype, entityid, isservice, origin, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type, String entitytype, String entityid,
        bool isservice, int origin, int limit, String lastdocumentid),
    TResult add(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult update(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult getProductSuggestion(
        String texttosearch,
        String type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult getProductById(
        String productid,
        EcomProductType type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult delete(String productid, String type, String entitytype,
        String entityid, bool isservice, int origin),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductById != null) {
      return getProductById(
          productid, type, entitytype, entityid, isservice, origin, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
    @required TResult getProductSuggestion(_GetProductSuggestion value),
    @required TResult getProductById(_GetProductById value),
    @required TResult delete(_DeleteProduct value),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return getProductById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    TResult getProductSuggestion(_GetProductSuggestion value),
    TResult getProductById(_GetProductById value),
    TResult delete(_DeleteProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductById != null) {
      return getProductById(this);
    }
    return orElse();
  }
}

abstract class _GetProductById implements ProductOwnerEvent {
  const factory _GetProductById(
      {@required String productid,
      @required EcomProductType type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin,
      int offset}) = _$_GetProductById;

  String get productid;
  EcomProductType get type;
  @override
  String get entitytype;
  @override
  String get entityid;
  @override
  bool get isservice;
  @override
  int get origin;
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$GetProductByIdCopyWith<_GetProductById> get copyWith;
}

/// @nodoc
abstract class _$DeleteProductCopyWith<$Res>
    implements $ProductOwnerEventCopyWith<$Res> {
  factory _$DeleteProductCopyWith(
          _DeleteProduct value, $Res Function(_DeleteProduct) then) =
      __$DeleteProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String productid,
      String type,
      String entitytype,
      String entityid,
      bool isservice,
      int origin});
}

/// @nodoc
class __$DeleteProductCopyWithImpl<$Res>
    extends _$ProductOwnerEventCopyWithImpl<$Res>
    implements _$DeleteProductCopyWith<$Res> {
  __$DeleteProductCopyWithImpl(
      _DeleteProduct _value, $Res Function(_DeleteProduct) _then)
      : super(_value, (v) => _then(v as _DeleteProduct));

  @override
  _DeleteProduct get _value => super._value as _DeleteProduct;

  @override
  $Res call({
    Object productid = freezed,
    Object type = freezed,
    Object entitytype = freezed,
    Object entityid = freezed,
    Object isservice = freezed,
    Object origin = freezed,
  }) {
    return _then(_DeleteProduct(
      productid: productid == freezed ? _value.productid : productid as String,
      type: type == freezed ? _value.type : type as String,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      isservice: isservice == freezed ? _value.isservice : isservice as bool,
      origin: origin == freezed ? _value.origin : origin as int,
    ));
  }
}

/// @nodoc
class _$_DeleteProduct implements _DeleteProduct {
  const _$_DeleteProduct(
      {@required this.productid,
      @required this.type,
      @required this.entitytype,
      @required this.entityid,
      @required this.isservice,
      @required this.origin})
      : assert(productid != null),
        assert(type != null),
        assert(entitytype != null),
        assert(entityid != null),
        assert(isservice != null),
        assert(origin != null);

  @override
  final String productid;
  @override
  final String type;
  @override
  final String entitytype;
  @override
  final String entityid;
  @override
  final bool isservice;
  @override
  final int origin;

  @override
  String toString() {
    return 'ProductOwnerEvent.delete(productid: $productid, type: $type, entitytype: $entitytype, entityid: $entityid, isservice: $isservice, origin: $origin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteProduct &&
            (identical(other.productid, productid) ||
                const DeepCollectionEquality()
                    .equals(other.productid, productid)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.entitytype, entitytype) ||
                const DeepCollectionEquality()
                    .equals(other.entitytype, entitytype)) &&
            (identical(other.entityid, entityid) ||
                const DeepCollectionEquality()
                    .equals(other.entityid, entityid)) &&
            (identical(other.isservice, isservice) ||
                const DeepCollectionEquality()
                    .equals(other.isservice, isservice)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productid) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(entitytype) ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(isservice) ^
      const DeepCollectionEquality().hash(origin);

  @JsonKey(ignore: true)
  @override
  _$DeleteProductCopyWith<_DeleteProduct> get copyWith =>
      __$DeleteProductCopyWithImpl<_DeleteProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult get(EcomProductType type, String entitytype, String entityid,
            bool isservice, int origin, int limit, String lastdocumentid),
    @required
        TResult add(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult update(Map<String, dynamic> productdata, String type,
            String entitytype, String entityid, bool isservice, int origin),
    @required
        TResult getProductSuggestion(
            String texttosearch,
            String type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult getProductById(
            String productid,
            EcomProductType type,
            String entitytype,
            String entityid,
            bool isservice,
            int origin,
            int offset),
    @required
        TResult delete(String productid, String type, String entitytype,
            String entityid, bool isservice, int origin),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return delete(productid, type, entitytype, entityid, isservice, origin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(EcomProductType type, String entitytype, String entityid,
        bool isservice, int origin, int limit, String lastdocumentid),
    TResult add(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult update(Map<String, dynamic> productdata, String type,
        String entitytype, String entityid, bool isservice, int origin),
    TResult getProductSuggestion(
        String texttosearch,
        String type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult getProductById(
        String productid,
        EcomProductType type,
        String entitytype,
        String entityid,
        bool isservice,
        int origin,
        int offset),
    TResult delete(String productid, String type, String entitytype,
        String entityid, bool isservice, int origin),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(productid, type, entitytype, entityid, isservice, origin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
    @required TResult add(_AddProduct value),
    @required TResult update(_UpdateProduct value),
    @required TResult getProductSuggestion(_GetProductSuggestion value),
    @required TResult getProductById(_GetProductById value),
    @required TResult delete(_DeleteProduct value),
  }) {
    assert(get != null);
    assert(add != null);
    assert(update != null);
    assert(getProductSuggestion != null);
    assert(getProductById != null);
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    TResult add(_AddProduct value),
    TResult update(_UpdateProduct value),
    TResult getProductSuggestion(_GetProductSuggestion value),
    TResult getProductById(_GetProductById value),
    TResult delete(_DeleteProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteProduct implements ProductOwnerEvent {
  const factory _DeleteProduct(
      {@required String productid,
      @required String type,
      @required String entitytype,
      @required String entityid,
      @required bool isservice,
      @required int origin}) = _$_DeleteProduct;

  String get productid;
  String get type;
  @override
  String get entitytype;
  @override
  String get entityid;
  @override
  bool get isservice;
  @override
  int get origin;
  @override
  @JsonKey(ignore: true)
  _$DeleteProductCopyWith<_DeleteProduct> get copyWith;
}

/// @nodoc
class _$ProductOwnerStateTearOff {
  const _$ProductOwnerStateTearOff();

// ignore: unused_element
  _ProductListState call(
      {@required bool isLoading,
      @required bool workDone,
      @required dynamic failure,
      @required String message,
      @required int returneddatatype,
      @required CompleteProductDataList listData,
      @required List<LuceneSearchSuggestionData> lucenesuggestiondata}) {
    return _ProductListState(
      isLoading: isLoading,
      workDone: workDone,
      failure: failure,
      message: message,
      returneddatatype: returneddatatype,
      listData: listData,
      lucenesuggestiondata: lucenesuggestiondata,
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
  dynamic get failure;
  String get message;
  int get returneddatatype;
  CompleteProductDataList get listData;
  List<LuceneSearchSuggestionData> get lucenesuggestiondata;

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
      dynamic failure,
      String message,
      int returneddatatype,
      CompleteProductDataList listData,
      List<LuceneSearchSuggestionData> lucenesuggestiondata});
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
    Object returneddatatype = freezed,
    Object listData = freezed,
    Object lucenesuggestiondata = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      workDone: workDone == freezed ? _value.workDone : workDone as bool,
      failure: failure == freezed ? _value.failure : failure as dynamic,
      message: message == freezed ? _value.message : message as String,
      returneddatatype: returneddatatype == freezed
          ? _value.returneddatatype
          : returneddatatype as int,
      listData: listData == freezed
          ? _value.listData
          : listData as CompleteProductDataList,
      lucenesuggestiondata: lucenesuggestiondata == freezed
          ? _value.lucenesuggestiondata
          : lucenesuggestiondata as List<LuceneSearchSuggestionData>,
    ));
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
      dynamic failure,
      String message,
      int returneddatatype,
      CompleteProductDataList listData,
      List<LuceneSearchSuggestionData> lucenesuggestiondata});
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
    Object returneddatatype = freezed,
    Object listData = freezed,
    Object lucenesuggestiondata = freezed,
  }) {
    return _then(_ProductListState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      workDone: workDone == freezed ? _value.workDone : workDone as bool,
      failure: failure == freezed ? _value.failure : failure,
      message: message == freezed ? _value.message : message as String,
      returneddatatype: returneddatatype == freezed
          ? _value.returneddatatype
          : returneddatatype as int,
      listData: listData == freezed
          ? _value.listData
          : listData as CompleteProductDataList,
      lucenesuggestiondata: lucenesuggestiondata == freezed
          ? _value.lucenesuggestiondata
          : lucenesuggestiondata as List<LuceneSearchSuggestionData>,
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
      @required this.returneddatatype,
      @required this.listData,
      @required this.lucenesuggestiondata})
      : assert(isLoading != null),
        assert(workDone != null),
        assert(failure != null),
        assert(message != null),
        assert(returneddatatype != null),
        assert(listData != null),
        assert(lucenesuggestiondata != null);

  @override
  final bool isLoading;
  @override
  final bool workDone;
  @override
  final dynamic failure;
  @override
  final String message;
  @override
  final int returneddatatype;
  @override
  final CompleteProductDataList listData;
  @override
  final List<LuceneSearchSuggestionData> lucenesuggestiondata;

  @override
  String toString() {
    return 'ProductOwnerState(isLoading: $isLoading, workDone: $workDone, failure: $failure, message: $message, returneddatatype: $returneddatatype, listData: $listData, lucenesuggestiondata: $lucenesuggestiondata)';
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
            (identical(other.returneddatatype, returneddatatype) ||
                const DeepCollectionEquality()
                    .equals(other.returneddatatype, returneddatatype)) &&
            (identical(other.listData, listData) ||
                const DeepCollectionEquality()
                    .equals(other.listData, listData)) &&
            (identical(other.lucenesuggestiondata, lucenesuggestiondata) ||
                const DeepCollectionEquality()
                    .equals(other.lucenesuggestiondata, lucenesuggestiondata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(workDone) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(returneddatatype) ^
      const DeepCollectionEquality().hash(listData) ^
      const DeepCollectionEquality().hash(lucenesuggestiondata);

  @JsonKey(ignore: true)
  @override
  _$ProductListStateCopyWith<_ProductListState> get copyWith =>
      __$ProductListStateCopyWithImpl<_ProductListState>(this, _$identity);
}

abstract class _ProductListState implements ProductOwnerState {
  const factory _ProductListState(
          {@required bool isLoading,
          @required bool workDone,
          @required dynamic failure,
          @required String message,
          @required int returneddatatype,
          @required CompleteProductDataList listData,
          @required List<LuceneSearchSuggestionData> lucenesuggestiondata}) =
      _$_ProductListState;

  @override
  bool get isLoading;
  @override
  bool get workDone;
  @override
  dynamic get failure;
  @override
  String get message;
  @override
  int get returneddatatype;
  @override
  CompleteProductDataList get listData;
  @override
  List<LuceneSearchSuggestionData> get lucenesuggestiondata;
  @override
  @JsonKey(ignore: true)
  _$ProductListStateCopyWith<_ProductListState> get copyWith;
}
