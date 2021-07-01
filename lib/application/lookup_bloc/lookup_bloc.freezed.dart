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
      @required String fieldname}) {
    return GetListData(
      entityid: entityid,
      entitytype: entitytype,
      fieldname: fieldname,
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
  String get fieldname;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult getListData(
            String entityid, String entitytype, String fieldname),
    @required
        TResult deleteItemWithData(
            String item, String entityid, String entitytype, String fieldname),
    @required
        TResult createItemData(
            String item, String entityid, String entitytype, String fieldname),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getListData(String entityid, String entitytype, String fieldname),
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
  $Res call({String entityid, String entitytype, String fieldname});
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
    Object fieldname = freezed,
  }) {
    return _then(_value.copyWith(
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      fieldname: fieldname == freezed ? _value.fieldname : fieldname as String,
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
  $Res call({String entityid, String entitytype, String fieldname});
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
    Object fieldname = freezed,
  }) {
    return _then(GetListData(
      entityid: entityid == freezed ? _value.entityid : entityid as String,
      entitytype:
          entitytype == freezed ? _value.entitytype : entitytype as String,
      fieldname: fieldname == freezed ? _value.fieldname : fieldname as String,
    ));
  }
}

/// @nodoc
class _$GetListData implements GetListData {
  const _$GetListData(
      {@required this.entityid,
      @required this.entitytype,
      @required this.fieldname})
      : assert(entityid != null),
        assert(entitytype != null),
        assert(fieldname != null);

  @override
  final String entityid;
  @override
  final String entitytype;
  @override
  final String fieldname;

  @override
  String toString() {
    return 'LookupEvent.getListData(entityid: $entityid, entitytype: $entitytype, fieldname: $fieldname)';
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
            (identical(other.fieldname, fieldname) ||
                const DeepCollectionEquality()
                    .equals(other.fieldname, fieldname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(entitytype) ^
      const DeepCollectionEquality().hash(fieldname);

  @JsonKey(ignore: true)
  @override
  $GetListDataCopyWith<GetListData> get copyWith =>
      _$GetListDataCopyWithImpl<GetListData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult getListData(
            String entityid, String entitytype, String fieldname),
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
    return getListData(entityid, entitytype, fieldname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getListData(String entityid, String entitytype, String fieldname),
    TResult deleteItemWithData(
        String item, String entityid, String entitytype, String fieldname),
    TResult createItemData(
        String item, String entityid, String entitytype, String fieldname),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getListData != null) {
      return getListData(entityid, entitytype, fieldname);
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
      @required String fieldname}) = _$GetListData;

  @override
  String get entityid;
  @override
  String get entitytype;
  @override
  String get fieldname;
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
            String entityid, String entitytype, String fieldname),
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
    TResult getListData(String entityid, String entitytype, String fieldname),
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
  @override
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
            String entityid, String entitytype, String fieldname),
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
    TResult getListData(String entityid, String entitytype, String fieldname),
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
  @override
  String get fieldname;
  @override
  @JsonKey(ignore: true)
  $CreateItemCopyWith<CreateItem> get copyWith;
}

/// @nodoc
class _$LookupStateTearOff {
  const _$LookupStateTearOff();

// ignore: unused_element
  IsBusy isBusy() {
    return const IsBusy();
  }

// ignore: unused_element
  IsDeleted isDeleted() {
    return const IsDeleted();
  }

// ignore: unused_element
  IsSaved isSaved() {
    return const IsSaved();
  }

// ignore: unused_element
  HasFailure hasFailure({@required Failure failure}) {
    return HasFailure(
      failure: failure,
    );
  }

// ignore: unused_element
  IsListDataLoaded isListDataLoaded({List<Lookup> listdata}) {
    return IsListDataLoaded(
      listdata: listdata,
    );
  }

// ignore: unused_element
  LookupStateInitial initial() {
    return const LookupStateInitial();
  }
}

/// @nodoc
// ignore: unused_element
const $LookupState = _$LookupStateTearOff();

/// @nodoc
mixin _$LookupState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasFailure(Failure failure),
    @required TResult isListDataLoaded(List<Lookup> listdata),
    @required TResult initial(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult isBusy(),
    TResult isDeleted(),
    TResult isSaved(),
    TResult hasFailure(Failure failure),
    TResult isListDataLoaded(List<Lookup> listdata),
    TResult initial(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult isBusy(IsBusy value),
    @required TResult isDeleted(IsDeleted value),
    @required TResult isSaved(IsSaved value),
    @required TResult hasFailure(HasFailure value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(LookupStateInitial value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult isBusy(IsBusy value),
    TResult isDeleted(IsDeleted value),
    TResult isSaved(IsSaved value),
    TResult hasFailure(HasFailure value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(LookupStateInitial value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LookupStateCopyWith<$Res> {
  factory $LookupStateCopyWith(
          LookupState value, $Res Function(LookupState) then) =
      _$LookupStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LookupStateCopyWithImpl<$Res> implements $LookupStateCopyWith<$Res> {
  _$LookupStateCopyWithImpl(this._value, this._then);

  final LookupState _value;
  // ignore: unused_field
  final $Res Function(LookupState) _then;
}

/// @nodoc
abstract class $IsBusyCopyWith<$Res> {
  factory $IsBusyCopyWith(IsBusy value, $Res Function(IsBusy) then) =
      _$IsBusyCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsBusyCopyWithImpl<$Res> extends _$LookupStateCopyWithImpl<$Res>
    implements $IsBusyCopyWith<$Res> {
  _$IsBusyCopyWithImpl(IsBusy _value, $Res Function(IsBusy) _then)
      : super(_value, (v) => _then(v as IsBusy));

  @override
  IsBusy get _value => super._value as IsBusy;
}

/// @nodoc
class _$IsBusy implements IsBusy {
  const _$IsBusy();

  @override
  String toString() {
    return 'LookupState.isBusy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IsBusy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasFailure(Failure failure),
    @required TResult isListDataLoaded(List<Lookup> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return isBusy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult isBusy(),
    TResult isDeleted(),
    TResult isSaved(),
    TResult hasFailure(Failure failure),
    TResult isListDataLoaded(List<Lookup> listdata),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isBusy != null) {
      return isBusy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult isBusy(IsBusy value),
    @required TResult isDeleted(IsDeleted value),
    @required TResult isSaved(IsSaved value),
    @required TResult hasFailure(HasFailure value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(LookupStateInitial value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return isBusy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult isBusy(IsBusy value),
    TResult isDeleted(IsDeleted value),
    TResult isSaved(IsSaved value),
    TResult hasFailure(HasFailure value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(LookupStateInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isBusy != null) {
      return isBusy(this);
    }
    return orElse();
  }
}

abstract class IsBusy implements LookupState {
  const factory IsBusy() = _$IsBusy;
}

/// @nodoc
abstract class $IsDeletedCopyWith<$Res> {
  factory $IsDeletedCopyWith(IsDeleted value, $Res Function(IsDeleted) then) =
      _$IsDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsDeletedCopyWithImpl<$Res> extends _$LookupStateCopyWithImpl<$Res>
    implements $IsDeletedCopyWith<$Res> {
  _$IsDeletedCopyWithImpl(IsDeleted _value, $Res Function(IsDeleted) _then)
      : super(_value, (v) => _then(v as IsDeleted));

  @override
  IsDeleted get _value => super._value as IsDeleted;
}

/// @nodoc
class _$IsDeleted implements IsDeleted {
  const _$IsDeleted();

  @override
  String toString() {
    return 'LookupState.isDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IsDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasFailure(Failure failure),
    @required TResult isListDataLoaded(List<Lookup> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return isDeleted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult isBusy(),
    TResult isDeleted(),
    TResult isSaved(),
    TResult hasFailure(Failure failure),
    TResult isListDataLoaded(List<Lookup> listdata),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isDeleted != null) {
      return isDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult isBusy(IsBusy value),
    @required TResult isDeleted(IsDeleted value),
    @required TResult isSaved(IsSaved value),
    @required TResult hasFailure(HasFailure value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(LookupStateInitial value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return isDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult isBusy(IsBusy value),
    TResult isDeleted(IsDeleted value),
    TResult isSaved(IsSaved value),
    TResult hasFailure(HasFailure value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(LookupStateInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isDeleted != null) {
      return isDeleted(this);
    }
    return orElse();
  }
}

abstract class IsDeleted implements LookupState {
  const factory IsDeleted() = _$IsDeleted;
}

/// @nodoc
abstract class $IsSavedCopyWith<$Res> {
  factory $IsSavedCopyWith(IsSaved value, $Res Function(IsSaved) then) =
      _$IsSavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsSavedCopyWithImpl<$Res> extends _$LookupStateCopyWithImpl<$Res>
    implements $IsSavedCopyWith<$Res> {
  _$IsSavedCopyWithImpl(IsSaved _value, $Res Function(IsSaved) _then)
      : super(_value, (v) => _then(v as IsSaved));

  @override
  IsSaved get _value => super._value as IsSaved;
}

/// @nodoc
class _$IsSaved implements IsSaved {
  const _$IsSaved();

  @override
  String toString() {
    return 'LookupState.isSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IsSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasFailure(Failure failure),
    @required TResult isListDataLoaded(List<Lookup> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return isSaved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult isBusy(),
    TResult isDeleted(),
    TResult isSaved(),
    TResult hasFailure(Failure failure),
    TResult isListDataLoaded(List<Lookup> listdata),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isSaved != null) {
      return isSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult isBusy(IsBusy value),
    @required TResult isDeleted(IsDeleted value),
    @required TResult isSaved(IsSaved value),
    @required TResult hasFailure(HasFailure value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(LookupStateInitial value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return isSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult isBusy(IsBusy value),
    TResult isDeleted(IsDeleted value),
    TResult isSaved(IsSaved value),
    TResult hasFailure(HasFailure value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(LookupStateInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isSaved != null) {
      return isSaved(this);
    }
    return orElse();
  }
}

abstract class IsSaved implements LookupState {
  const factory IsSaved() = _$IsSaved;
}

/// @nodoc
abstract class $HasFailureCopyWith<$Res> {
  factory $HasFailureCopyWith(
          HasFailure value, $Res Function(HasFailure) then) =
      _$HasFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$HasFailureCopyWithImpl<$Res> extends _$LookupStateCopyWithImpl<$Res>
    implements $HasFailureCopyWith<$Res> {
  _$HasFailureCopyWithImpl(HasFailure _value, $Res Function(HasFailure) _then)
      : super(_value, (v) => _then(v as HasFailure));

  @override
  HasFailure get _value => super._value as HasFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(HasFailure(
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$HasFailure implements HasFailure {
  const _$HasFailure({@required this.failure}) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'LookupState.hasFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HasFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $HasFailureCopyWith<HasFailure> get copyWith =>
      _$HasFailureCopyWithImpl<HasFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasFailure(Failure failure),
    @required TResult isListDataLoaded(List<Lookup> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return hasFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult isBusy(),
    TResult isDeleted(),
    TResult isSaved(),
    TResult hasFailure(Failure failure),
    TResult isListDataLoaded(List<Lookup> listdata),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasFailure != null) {
      return hasFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult isBusy(IsBusy value),
    @required TResult isDeleted(IsDeleted value),
    @required TResult isSaved(IsSaved value),
    @required TResult hasFailure(HasFailure value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(LookupStateInitial value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return hasFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult isBusy(IsBusy value),
    TResult isDeleted(IsDeleted value),
    TResult isSaved(IsSaved value),
    TResult hasFailure(HasFailure value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(LookupStateInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasFailure != null) {
      return hasFailure(this);
    }
    return orElse();
  }
}

abstract class HasFailure implements LookupState {
  const factory HasFailure({@required Failure failure}) = _$HasFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  $HasFailureCopyWith<HasFailure> get copyWith;
}

/// @nodoc
abstract class $IsListDataLoadedCopyWith<$Res> {
  factory $IsListDataLoadedCopyWith(
          IsListDataLoaded value, $Res Function(IsListDataLoaded) then) =
      _$IsListDataLoadedCopyWithImpl<$Res>;
  $Res call({List<Lookup> listdata});
}

/// @nodoc
class _$IsListDataLoadedCopyWithImpl<$Res>
    extends _$LookupStateCopyWithImpl<$Res>
    implements $IsListDataLoadedCopyWith<$Res> {
  _$IsListDataLoadedCopyWithImpl(
      IsListDataLoaded _value, $Res Function(IsListDataLoaded) _then)
      : super(_value, (v) => _then(v as IsListDataLoaded));

  @override
  IsListDataLoaded get _value => super._value as IsListDataLoaded;

  @override
  $Res call({
    Object listdata = freezed,
  }) {
    return _then(IsListDataLoaded(
      listdata:
          listdata == freezed ? _value.listdata : listdata as List<Lookup>,
    ));
  }
}

/// @nodoc
class _$IsListDataLoaded implements IsListDataLoaded {
  const _$IsListDataLoaded({this.listdata});

  @override
  final List<Lookup> listdata;

  @override
  String toString() {
    return 'LookupState.isListDataLoaded(listdata: $listdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsListDataLoaded &&
            (identical(other.listdata, listdata) ||
                const DeepCollectionEquality()
                    .equals(other.listdata, listdata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listdata);

  @JsonKey(ignore: true)
  @override
  $IsListDataLoadedCopyWith<IsListDataLoaded> get copyWith =>
      _$IsListDataLoadedCopyWithImpl<IsListDataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasFailure(Failure failure),
    @required TResult isListDataLoaded(List<Lookup> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return isListDataLoaded(listdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult isBusy(),
    TResult isDeleted(),
    TResult isSaved(),
    TResult hasFailure(Failure failure),
    TResult isListDataLoaded(List<Lookup> listdata),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isListDataLoaded != null) {
      return isListDataLoaded(listdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult isBusy(IsBusy value),
    @required TResult isDeleted(IsDeleted value),
    @required TResult isSaved(IsSaved value),
    @required TResult hasFailure(HasFailure value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(LookupStateInitial value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return isListDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult isBusy(IsBusy value),
    TResult isDeleted(IsDeleted value),
    TResult isSaved(IsSaved value),
    TResult hasFailure(HasFailure value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(LookupStateInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isListDataLoaded != null) {
      return isListDataLoaded(this);
    }
    return orElse();
  }
}

abstract class IsListDataLoaded implements LookupState {
  const factory IsListDataLoaded({List<Lookup> listdata}) = _$IsListDataLoaded;

  List<Lookup> get listdata;
  @JsonKey(ignore: true)
  $IsListDataLoadedCopyWith<IsListDataLoaded> get copyWith;
}

/// @nodoc
abstract class $LookupStateInitialCopyWith<$Res> {
  factory $LookupStateInitialCopyWith(
          LookupStateInitial value, $Res Function(LookupStateInitial) then) =
      _$LookupStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$LookupStateInitialCopyWithImpl<$Res>
    extends _$LookupStateCopyWithImpl<$Res>
    implements $LookupStateInitialCopyWith<$Res> {
  _$LookupStateInitialCopyWithImpl(
      LookupStateInitial _value, $Res Function(LookupStateInitial) _then)
      : super(_value, (v) => _then(v as LookupStateInitial));

  @override
  LookupStateInitial get _value => super._value as LookupStateInitial;
}

/// @nodoc
class _$LookupStateInitial implements LookupStateInitial {
  const _$LookupStateInitial();

  @override
  String toString() {
    return 'LookupState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LookupStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasFailure(Failure failure),
    @required TResult isListDataLoaded(List<Lookup> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult isBusy(),
    TResult isDeleted(),
    TResult isSaved(),
    TResult hasFailure(Failure failure),
    TResult isListDataLoaded(List<Lookup> listdata),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult isBusy(IsBusy value),
    @required TResult isDeleted(IsDeleted value),
    @required TResult isSaved(IsSaved value),
    @required TResult hasFailure(HasFailure value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(LookupStateInitial value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasFailure != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult isBusy(IsBusy value),
    TResult isDeleted(IsDeleted value),
    TResult isSaved(IsSaved value),
    TResult hasFailure(HasFailure value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(LookupStateInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LookupStateInitial implements LookupState {
  const factory LookupStateInitial() = _$LookupStateInitial;
}
