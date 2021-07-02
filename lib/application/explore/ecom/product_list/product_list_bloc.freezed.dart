// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductListEventTearOff {
  const _$ProductListEventTearOff();

// ignore: unused_element
  _GetProductList get({@required LimitedDataType type}) {
    return _GetProductList(
      type: type,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductListEvent = _$ProductListEventTearOff();

/// @nodoc
mixin _$ProductListEvent {
  LimitedDataType get type;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(LimitedDataType type),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(LimitedDataType type),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetProductList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ProductListEventCopyWith<ProductListEvent> get copyWith;
}

/// @nodoc
abstract class $ProductListEventCopyWith<$Res> {
  factory $ProductListEventCopyWith(
          ProductListEvent value, $Res Function(ProductListEvent) then) =
      _$ProductListEventCopyWithImpl<$Res>;
  $Res call({LimitedDataType type});

  $LimitedDataTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$ProductListEventCopyWithImpl<$Res>
    implements $ProductListEventCopyWith<$Res> {
  _$ProductListEventCopyWithImpl(this._value, this._then);

  final ProductListEvent _value;
  // ignore: unused_field
  final $Res Function(ProductListEvent) _then;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as LimitedDataType,
    ));
  }

  @override
  $LimitedDataTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $LimitedDataTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$GetProductListCopyWith<$Res>
    implements $ProductListEventCopyWith<$Res> {
  factory _$GetProductListCopyWith(
          _GetProductList value, $Res Function(_GetProductList) then) =
      __$GetProductListCopyWithImpl<$Res>;
  @override
  $Res call({LimitedDataType type});

  @override
  $LimitedDataTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$GetProductListCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res>
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
      type: type == freezed ? _value.type : type as LimitedDataType,
    ));
  }
}

/// @nodoc
class _$_GetProductList implements _GetProductList {
  const _$_GetProductList({@required this.type}) : assert(type != null);

  @override
  final LimitedDataType type;

  @override
  String toString() {
    return 'ProductListEvent.get(type: $type)';
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
    @required TResult get(LimitedDataType type),
  }) {
    assert(get != null);
    return get(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(LimitedDataType type),
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
  }) {
    assert(get != null);
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetProductList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _GetProductList implements ProductListEvent {
  const factory _GetProductList({@required LimitedDataType type}) =
      _$_GetProductList;

  @override
  LimitedDataType get type;
  @override
  @JsonKey(ignore: true)
  _$GetProductListCopyWith<_GetProductList> get copyWith;
}

/// @nodoc
class _$ProductListStateTearOff {
  const _$ProductListStateTearOff();

// ignore: unused_element
  _ProductListState call(
      {@required bool isLoading,
      @required bool workDone,
      @required Option<Failure> failure,
      @required String message,
      @required LimitedDataList listData}) {
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
const $ProductListState = _$ProductListStateTearOff();

/// @nodoc
mixin _$ProductListState {
  bool get isLoading;
  bool get workDone;
  Option<Failure> get failure;
  String get message;
  LimitedDataList get listData;

  @JsonKey(ignore: true)
  $ProductListStateCopyWith<ProductListState> get copyWith;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool workDone,
      Option<Failure> failure,
      String message,
      LimitedDataList listData});

  $LimitedDataListCopyWith<$Res> get listData;
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

  final ProductListState _value;
  // ignore: unused_field
  final $Res Function(ProductListState) _then;

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
      listData:
          listData == freezed ? _value.listData : listData as LimitedDataList,
    ));
  }

  @override
  $LimitedDataListCopyWith<$Res> get listData {
    if (_value.listData == null) {
      return null;
    }
    return $LimitedDataListCopyWith<$Res>(_value.listData, (value) {
      return _then(_value.copyWith(listData: value));
    });
  }
}

/// @nodoc
abstract class _$ProductListStateCopyWith<$Res>
    implements $ProductListStateCopyWith<$Res> {
  factory _$ProductListStateCopyWith(
          _ProductListState value, $Res Function(_ProductListState) then) =
      __$ProductListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool workDone,
      Option<Failure> failure,
      String message,
      LimitedDataList listData});

  @override
  $LimitedDataListCopyWith<$Res> get listData;
}

/// @nodoc
class __$ProductListStateCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res>
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
      listData:
          listData == freezed ? _value.listData : listData as LimitedDataList,
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
  final LimitedDataList listData;

  @override
  String toString() {
    return 'ProductListState(isLoading: $isLoading, workDone: $workDone, failure: $failure, message: $message, listData: $listData)';
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

abstract class _ProductListState implements ProductListState {
  const factory _ProductListState(
      {@required bool isLoading,
      @required bool workDone,
      @required Option<Failure> failure,
      @required String message,
      @required LimitedDataList listData}) = _$_ProductListState;

  @override
  bool get isLoading;
  @override
  bool get workDone;
  @override
  Option<Failure> get failure;
  @override
  String get message;
  @override
  LimitedDataList get listData;
  @override
  @JsonKey(ignore: true)
  _$ProductListStateCopyWith<_ProductListState> get copyWith;
}
