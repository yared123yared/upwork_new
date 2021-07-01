// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lookup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LookupEventTearOff {
  const _$LookupEventTearOff();

// ignore: unused_element
  GetListData getListData(
      {@required String entityid,
      @required String entitytype,
      @required LookupType lookupType}) {
    return GetListData(
      entityid: entityid,
      entitytype: entitytype,
      lookupType: lookupType,
    );
  }

// ignore: unused_element
  DeleteItemWithData deleteItemWithData(
      {@required String item,
      @required String entityid,
      @required String entitytype,
      @required String fieldname}) {
    return DeleteItemWithData(
      item: item,
      entityid: entityid,
      entitytype: entitytype,
      fieldname: fieldname,
    );
  }

// ignore: unused_element
  CreateItem createItemData(
      {@required String item,
      @required String entityid,
      @required String entitytype,
      @required String fieldname}) {
    return CreateItem(
      item: item,
      entityid: entityid,
      entitytype: entitytype,
      fieldname: fieldname,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LookupEvent = _$LookupEventTearOff();

/// @nodoc
mixin _$LookupEvent {
  String get entityid;
  String get entitytype;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult getListData(
            String entityid, String entitytype, LookupType lookupType),
    @required
        TResult deleteItemWithData(
            String item, String entityid, String entitytype, String fieldname),
    @required
        TResult createItemData(
            String item, String entityid, String entitytype, String fieldname),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getListData(
        String entityid, String entitytype, LookupType lookupType),
    TResult deleteItemWithData(
        String item, String entityid, String entitytype, String fieldname),
    TResult createItemData(
        String item, String entityid, String entitytype, String fieldname),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getListData(GetListData value),
    @required TResult deleteItemWithData(DeleteItemWithData value),
    @required TResult createItemData(CreateItem value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getListData(GetListData value),
    TResult deleteItemWithData(DeleteItemWithData value),
    TResult createItemData(CreateItem value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $LookupEventCopyWith<LookupEvent> get copyWith;
}

/// @nodoc
abstract class $LookupEventCopyWith<$Res> {
  factory $LookupEventCopyWith(
          LookupEvent value, $Res Function(LookupEvent) then) =
      _$LookupEventCopyWithImpl<$Res>;
  $Res call({String entityid, String entitytype});
}

/// @nodoc
class _$LookupEventCopyWithImpl<$Res> implements $LookupEventCopyWith<$Res> {
  _$LookupEventCopyWithImpl(this._value, this._then);

  final LookupEvent _value;
  // ignore: unused_field
  final $Res Function(LookupEvent) _then;

  @override
  $Res call({
    Object entityid = freezed,
    Object entitytype = freezed,
  }) {
    return _then(_value.copyWith(
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
    ));
  }
}

/// @nodoc
abstract class $GetListDataCopyWith<$Res>
    implements $LookupEventCopyWith<$Res> {
  factory $GetListDataCopyWith(
          GetListData value, $Res Function(GetListData) then) =
      _$GetListDataCopyWithImpl<$Res>;
  @override
  $Res call({String entityid, String entitytype, LookupType lookupType});

  $LookupTypeCopyWith<$Res> get lookupType;
}

/// @nodoc
class _$GetListDataCopyWithImpl<$Res> extends _$LookupEventCopyWithImpl<$Res>
    implements $GetListDataCopyWith<$Res> {
  _$GetListDataCopyWithImpl(
      GetListData _value, $Res Function(GetListData) _then)
      : super(_value, (v) => _then(v as GetListData));

  @override
  GetListData get _value => super._value as GetListData;

  @override
  $Res call({
    Object entityid = freezed,
    Object entitytype = freezed,
    Object lookupType = freezed,
  }) {
    return _then(GetListData(
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      lookupType:
          lookupType == freezed ? _value.lookupType : lookupType as LookupType,
    ));
  }

  @override
  $LookupTypeCopyWith<$Res> get lookupType {
    if (_value.lookupType == null) {
      return null;
    }
    return $LookupTypeCopyWith<$Res>(_value.lookupType, (value) {
      return _then(_value.copyWith(lookupType: value));
    });
  }
}

/// @nodoc
class _$GetListData implements GetListData {
  const _$GetListData(
      {@required this.entityid,
      @required this.entitytype,
      @required this.lookupType})
      : assert(entityid != null),
        assert(entitytype != null),
        assert(lookupType != null);

  @override
  final String entityid;
  @override
  final String entitytype;
  @override
  final LookupType lookupType;

  @override
  String toString() {
    return 'LookupEvent.getListData(entityid: $entityid, entitytype: $entitytype, lookupType: $lookupType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetListData &&
            (identical(other.entityid, entityid) ||
                const DeepCollectionEquality()
                    .equals(other.entityid, entityid)) &&
            (identical(other.entitytype, entitytype) ||
                const DeepCollectionEquality()
                    .equals(other.entitytype, entitytype)) &&
            (identical(other.lookupType, lookupType) ||
                const DeepCollectionEquality()
                    .equals(other.lookupType, lookupType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(entitytype) ^
      const DeepCollectionEquality().hash(lookupType);

  @JsonKey(ignore: true)
  @override
  $GetListDataCopyWith<GetListData> get copyWith =>
      _$GetListDataCopyWithImpl<GetListData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult getListData(
            String entityid, String entitytype, LookupType lookupType),
    @required
        TResult deleteItemWithData(
            String item, String entityid, String entitytype, String fieldname),
    @required
        TResult createItemData(
            String item, String entityid, String entitytype, String fieldname),
  }) {
    assert(getListData != null);
    assert(deleteItemWithData != null);
    assert(createItemData != null);
    return getListData(entityid, entitytype, lookupType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getListData(
        String entityid, String entitytype, LookupType lookupType),
    TResult deleteItemWithData(
        String item, String entityid, String entitytype, String fieldname),
    TResult createItemData(
        String item, String entityid, String entitytype, String fieldname),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getListData != null) {
      return getListData(entityid, entitytype, lookupType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getListData(GetListData value),
    @required TResult deleteItemWithData(DeleteItemWithData value),
    @required TResult createItemData(CreateItem value),
  }) {
    assert(getListData != null);
    assert(deleteItemWithData != null);
    assert(createItemData != null);
    return getListData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getListData(GetListData value),
    TResult deleteItemWithData(DeleteItemWithData value),
    TResult createItemData(CreateItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getListData != null) {
      return getListData(this);
    }
    return orElse();
  }
}

abstract class GetListData implements LookupEvent {
  const factory GetListData(
      {@required String entityid,
      @required String entitytype,
      @required LookupType lookupType}) = _$GetListData;

  @override
  String get entityid;
  @override
  String get entitytype;
  LookupType get lookupType;
  @override
  @JsonKey(ignore: true)
  $GetListDataCopyWith<GetListData> get copyWith;
}

/// @nodoc
abstract class $DeleteItemWithDataCopyWith<$Res>
    implements $LookupEventCopyWith<$Res> {
  factory $DeleteItemWithDataCopyWith(
          DeleteItemWithData value, $Res Function(DeleteItemWithData) then) =
      _$DeleteItemWithDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String item, String entityid, String entitytype, String fieldname});
}

/// @nodoc
class _$DeleteItemWithDataCopyWithImpl<$Res>
    extends _$LookupEventCopyWithImpl<$Res>
    implements $DeleteItemWithDataCopyWith<$Res> {
  _$DeleteItemWithDataCopyWithImpl(
      DeleteItemWithData _value, $Res Function(DeleteItemWithData) _then)
      : super(_value, (v) => _then(v as DeleteItemWithData));

  @override
  DeleteItemWithData get _value => super._value as DeleteItemWithData;

  @override
  $Res call({
    Object item = freezed,
    Object entityid = freezed,
    Object entitytype = freezed,
    Object fieldname = freezed,
  }) {
    return _then(DeleteItemWithData(
      item: item == freezed ? _value.item : item as String,
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      fieldname: fieldname == freezed ? _value.fieldname : fieldname as String,
    ));
  }
}

/// @nodoc
class _$DeleteItemWithData implements DeleteItemWithData {
  const _$DeleteItemWithData(
      {@required this.item,
      @required this.entityid,
      @required this.entitytype,
      @required this.fieldname})
      : assert(item != null),
        assert(entityid != null),
        assert(entitytype != null),
        assert(fieldname != null);

  @override
  final String item;
  @override
  final String entityid;
  @override
  final String entitytype;
  @override
  final String fieldname;

  @override
  String toString() {
    return 'LookupEvent.deleteItemWithData(item: $item, entityid: $entityid, entitytype: $entitytype, fieldname: $fieldname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteItemWithData &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.entityid, entityid) ||
                const DeepCollectionEquality()
                    .equals(other.entityid, entityid)) &&
            (identical(other.entitytype, entitytype) ||
                const DeepCollectionEquality()
                    .equals(other.entitytype, entitytype)) &&
            (identical(other.fieldname, fieldname) ||
                const DeepCollectionEquality()
                    .equals(other.fieldname, fieldname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(entitytype) ^
      const DeepCollectionEquality().hash(fieldname);

  @JsonKey(ignore: true)
  @override
  $DeleteItemWithDataCopyWith<DeleteItemWithData> get copyWith =>
      _$DeleteItemWithDataCopyWithImpl<DeleteItemWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult getListData(
            String entityid, String entitytype, LookupType lookupType),
    @required
        TResult deleteItemWithData(
            String item, String entityid, String entitytype, String fieldname),
    @required
        TResult createItemData(
            String item, String entityid, String entitytype, String fieldname),
  }) {
    assert(getListData != null);
    assert(deleteItemWithData != null);
    assert(createItemData != null);
    return deleteItemWithData(item, entityid, entitytype, fieldname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getListData(
        String entityid, String entitytype, LookupType lookupType),
    TResult deleteItemWithData(
        String item, String entityid, String entitytype, String fieldname),
    TResult createItemData(
        String item, String entityid, String entitytype, String fieldname),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteItemWithData != null) {
      return deleteItemWithData(item, entityid, entitytype, fieldname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getListData(GetListData value),
    @required TResult deleteItemWithData(DeleteItemWithData value),
    @required TResult createItemData(CreateItem value),
  }) {
    assert(getListData != null);
    assert(deleteItemWithData != null);
    assert(createItemData != null);
    return deleteItemWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getListData(GetListData value),
    TResult deleteItemWithData(DeleteItemWithData value),
    TResult createItemData(CreateItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteItemWithData != null) {
      return deleteItemWithData(this);
    }
    return orElse();
  }
}

abstract class DeleteItemWithData implements LookupEvent {
  const factory DeleteItemWithData(
      {@required String item,
      @required String entityid,
      @required String entitytype,
      @required String fieldname}) = _$DeleteItemWithData;

  String get item;
  @override
  String get entityid;
  @override
  String get entitytype;
  String get fieldname;
  @override
  @JsonKey(ignore: true)
  $DeleteItemWithDataCopyWith<DeleteItemWithData> get copyWith;
}

/// @nodoc
abstract class $CreateItemCopyWith<$Res> implements $LookupEventCopyWith<$Res> {
  factory $CreateItemCopyWith(
          CreateItem value, $Res Function(CreateItem) then) =
      _$CreateItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String item, String entityid, String entitytype, String fieldname});
}

/// @nodoc
class _$CreateItemCopyWithImpl<$Res> extends _$LookupEventCopyWithImpl<$Res>
    implements $CreateItemCopyWith<$Res> {
  _$CreateItemCopyWithImpl(CreateItem _value, $Res Function(CreateItem) _then)
      : super(_value, (v) => _then(v as CreateItem));

  @override
  CreateItem get _value => super._value as CreateItem;

  @override
  $Res call({
    Object item = freezed,
    Object entityid = freezed,
    Object entitytype = freezed,
    Object fieldname = freezed,
  }) {
    return _then(CreateItem(
      item: item == freezed ? _value.item : item as String,
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      fieldname: fieldname == freezed ? _value.fieldname : fieldname as String,
    ));
  }
}

/// @nodoc
class _$CreateItem implements CreateItem {
  const _$CreateItem(
      {@required this.item,
      @required this.entityid,
      @required this.entitytype,
      @required this.fieldname})
      : assert(item != null),
        assert(entityid != null),
        assert(entitytype != null),
        assert(fieldname != null);

  @override
  final String item;
  @override
  final String entityid;
  @override
  final String entitytype;
  @override
  final String fieldname;

  @override
  String toString() {
    return 'LookupEvent.createItemData(item: $item, entityid: $entityid, entitytype: $entitytype, fieldname: $fieldname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateItem &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.entityid, entityid) ||
                const DeepCollectionEquality()
                    .equals(other.entityid, entityid)) &&
            (identical(other.entitytype, entitytype) ||
                const DeepCollectionEquality()
                    .equals(other.entitytype, entitytype)) &&
            (identical(other.fieldname, fieldname) ||
                const DeepCollectionEquality()
                    .equals(other.fieldname, fieldname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(entitytype) ^
      const DeepCollectionEquality().hash(fieldname);

  @JsonKey(ignore: true)
  @override
  $CreateItemCopyWith<CreateItem> get copyWith =>
      _$CreateItemCopyWithImpl<CreateItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult getListData(
            String entityid, String entitytype, LookupType lookupType),
    @required
        TResult deleteItemWithData(
            String item, String entityid, String entitytype, String fieldname),
    @required
        TResult createItemData(
            String item, String entityid, String entitytype, String fieldname),
  }) {
    assert(getListData != null);
    assert(deleteItemWithData != null);
    assert(createItemData != null);
    return createItemData(item, entityid, entitytype, fieldname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getListData(
        String entityid, String entitytype, LookupType lookupType),
    TResult deleteItemWithData(
        String item, String entityid, String entitytype, String fieldname),
    TResult createItemData(
        String item, String entityid, String entitytype, String fieldname),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createItemData != null) {
      return createItemData(item, entityid, entitytype, fieldname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getListData(GetListData value),
    @required TResult deleteItemWithData(DeleteItemWithData value),
    @required TResult createItemData(CreateItem value),
  }) {
    assert(getListData != null);
    assert(deleteItemWithData != null);
    assert(createItemData != null);
    return createItemData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getListData(GetListData value),
    TResult deleteItemWithData(DeleteItemWithData value),
    TResult createItemData(CreateItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createItemData != null) {
      return createItemData(this);
    }
    return orElse();
  }
}

abstract class CreateItem implements LookupEvent {
  const factory CreateItem(
      {@required String item,
      @required String entityid,
      @required String entitytype,
      @required String fieldname}) = _$CreateItem;

  String get item;
  @override
  String get entityid;
  @override
  String get entitytype;
  String get fieldname;
  @override
  @JsonKey(ignore: true)
  $CreateItemCopyWith<CreateItem> get copyWith;
}

/// @nodoc
class _$LookupTypeTearOff {
  const _$LookupTypeTearOff();

// ignore: unused_element
  _FeeItem feeItem() {
    return const _FeeItem();
  }
}

/// @nodoc
// ignore: unused_element
const $LookupType = _$LookupTypeTearOff();

/// @nodoc
mixin _$LookupType {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LookupTypeCopyWith<$Res> {
  factory $LookupTypeCopyWith(
          LookupType value, $Res Function(LookupType) then) =
      _$LookupTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$LookupTypeCopyWithImpl<$Res> implements $LookupTypeCopyWith<$Res> {
  _$LookupTypeCopyWithImpl(this._value, this._then);

  final LookupType _value;
  // ignore: unused_field
  final $Res Function(LookupType) _then;
}

/// @nodoc
abstract class _$FeeItemCopyWith<$Res> {
  factory _$FeeItemCopyWith(_FeeItem value, $Res Function(_FeeItem) then) =
      __$FeeItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$FeeItemCopyWithImpl<$Res> extends _$LookupTypeCopyWithImpl<$Res>
    implements _$FeeItemCopyWith<$Res> {
  __$FeeItemCopyWithImpl(_FeeItem _value, $Res Function(_FeeItem) _then)
      : super(_value, (v) => _then(v as _FeeItem));

  @override
  _FeeItem get _value => super._value as _FeeItem;
}

/// @nodoc
class _$_FeeItem implements _FeeItem {
  const _$_FeeItem();

  @override
  String toString() {
    return 'LookupType.feeItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FeeItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult feeItem(),
  }) {
    assert(feeItem != null);
    return feeItem();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult feeItem(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feeItem != null) {
      return feeItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult feeItem(_FeeItem value),
  }) {
    assert(feeItem != null);
    return feeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult feeItem(_FeeItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feeItem != null) {
      return feeItem(this);
    }
    return orElse();
  }
}

abstract class _FeeItem implements LookupType {
  const factory _FeeItem() = _$_FeeItem;
}

/// @nodoc
class _$LookupStateTearOff {
  const _$LookupStateTearOff();

// ignore: unused_element
  _LookupState call(
      {@required bool isLoading,
      @required bool workDone,
      @required Option<Failure> failure,
      @required LookupList listData}) {
    return _LookupState(
      isLoading: isLoading,
      workDone: workDone,
      failure: failure,
      listData: listData,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LookupState = _$LookupStateTearOff();

/// @nodoc
mixin _$LookupState {
  bool get isLoading;
  bool get workDone;
  Option<Failure> get failure;
  LookupList get listData;

  @JsonKey(ignore: true)
  $LookupStateCopyWith<LookupState> get copyWith;
}

/// @nodoc
abstract class $LookupStateCopyWith<$Res> {
  factory $LookupStateCopyWith(
          LookupState value, $Res Function(LookupState) then) =
      _$LookupStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool workDone,
      Option<Failure> failure,
      LookupList listData});

  $LookupListCopyWith<$Res> get listData;
}

/// @nodoc
class _$LookupStateCopyWithImpl<$Res> implements $LookupStateCopyWith<$Res> {
  _$LookupStateCopyWithImpl(this._value, this._then);

  final LookupState _value;
  // ignore: unused_field
  final $Res Function(LookupState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object workDone = freezed,
    Object failure = freezed,
    Object listData = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      workDone: workDone == freezed ? _value.workDone : workDone as bool,
      failure: failure == freezed ? _value.failure : failure as Option<Failure>,
      listData: listData == freezed ? _value.listData : listData as LookupList,
    ));
  }

  @override
  $LookupListCopyWith<$Res> get listData {
    if (_value.listData == null) {
      return null;
    }
    return $LookupListCopyWith<$Res>(_value.listData, (value) {
      return _then(_value.copyWith(listData: value));
    });
  }
}

/// @nodoc
abstract class _$LookupStateCopyWith<$Res>
    implements $LookupStateCopyWith<$Res> {
  factory _$LookupStateCopyWith(
          _LookupState value, $Res Function(_LookupState) then) =
      __$LookupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool workDone,
      Option<Failure> failure,
      LookupList listData});

  @override
  $LookupListCopyWith<$Res> get listData;
}

/// @nodoc
class __$LookupStateCopyWithImpl<$Res> extends _$LookupStateCopyWithImpl<$Res>
    implements _$LookupStateCopyWith<$Res> {
  __$LookupStateCopyWithImpl(
      _LookupState _value, $Res Function(_LookupState) _then)
      : super(_value, (v) => _then(v as _LookupState));

  @override
  _LookupState get _value => super._value as _LookupState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object workDone = freezed,
    Object failure = freezed,
    Object listData = freezed,
  }) {
    return _then(_LookupState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      workDone: workDone == freezed ? _value.workDone : workDone as bool,
      failure: failure == freezed ? _value.failure : failure as Option<Failure>,
      listData: listData == freezed ? _value.listData : listData as LookupList,
    ));
  }
}

/// @nodoc
class _$_LookupState implements _LookupState {
  const _$_LookupState(
      {@required this.isLoading,
      @required this.workDone,
      @required this.failure,
      @required this.listData})
      : assert(isLoading != null),
        assert(workDone != null),
        assert(failure != null),
        assert(listData != null);

  @override
  final bool isLoading;
  @override
  final bool workDone;
  @override
  final Option<Failure> failure;
  @override
  final LookupList listData;

  @override
  String toString() {
    return 'LookupState(isLoading: $isLoading, workDone: $workDone, failure: $failure, listData: $listData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LookupState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.workDone, workDone) ||
                const DeepCollectionEquality()
                    .equals(other.workDone, workDone)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
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
      const DeepCollectionEquality().hash(listData);

  @JsonKey(ignore: true)
  @override
  _$LookupStateCopyWith<_LookupState> get copyWith =>
      __$LookupStateCopyWithImpl<_LookupState>(this, _$identity);
}

abstract class _LookupState implements LookupState {
  const factory _LookupState(
      {@required bool isLoading,
      @required bool workDone,
      @required Option<Failure> failure,
      @required LookupList listData}) = _$_LookupState;

  @override
  bool get isLoading;
  @override
  bool get workDone;
  @override
  Option<Failure> get failure;
  @override
  LookupList get listData;
  @override
  @JsonKey(ignore: true)
  _$LookupStateCopyWith<_LookupState> get copyWith;
}
