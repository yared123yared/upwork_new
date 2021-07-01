// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StringListEventTearOff {
  const _$StringListEventTearOff();

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
const $StringListEvent = _$StringListEventTearOff();

/// @nodoc
mixin _$StringListEvent {
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
  $StringListEventCopyWith<StringListEvent> get copyWith;
}

/// @nodoc
abstract class $StringListEventCopyWith<$Res> {
  factory $StringListEventCopyWith(
          StringListEvent value, $Res Function(StringListEvent) then) =
      _$StringListEventCopyWithImpl<$Res>;
  $Res call({String entityid, String entitytype, String fieldname});
}

/// @nodoc
class _$StringListEventCopyWithImpl<$Res>
    implements $StringListEventCopyWith<$Res> {
  _$StringListEventCopyWithImpl(this._value, this._then);

  final StringListEvent _value;
  // ignore: unused_field
  final $Res Function(StringListEvent) _then;

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
    implements $StringListEventCopyWith<$Res> {
  factory $GetListDataCopyWith(
          GetListData value, $Res Function(GetListData) then) =
      _$GetListDataCopyWithImpl<$Res>;
  @override
  $Res call({String entityid, String entitytype, String fieldname});
}

/// @nodoc
class _$GetListDataCopyWithImpl<$Res>
    extends _$StringListEventCopyWithImpl<$Res>
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
class _$GetListData with DiagnosticableTreeMixin implements GetListData {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StringListEvent.getListData(entityid: $entityid, entitytype: $entitytype, fieldname: $fieldname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StringListEvent.getListData'))
      ..add(DiagnosticsProperty('entityid', entityid))
      ..add(DiagnosticsProperty('entitytype', entitytype))
      ..add(DiagnosticsProperty('fieldname', fieldname));
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

abstract class GetListData implements StringListEvent {
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
    implements $StringListEventCopyWith<$Res> {
  factory $DeleteItemWithDataCopyWith(
          DeleteItemWithData value, $Res Function(DeleteItemWithData) then) =
      _$DeleteItemWithDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String item, String entityid, String entitytype, String fieldname});
}

/// @nodoc
class _$DeleteItemWithDataCopyWithImpl<$Res>
    extends _$StringListEventCopyWithImpl<$Res>
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
class _$DeleteItemWithData
    with DiagnosticableTreeMixin
    implements DeleteItemWithData {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StringListEvent.deleteItemWithData(item: $item, entityid: $entityid, entitytype: $entitytype, fieldname: $fieldname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StringListEvent.deleteItemWithData'))
      ..add(DiagnosticsProperty('item', item))
      ..add(DiagnosticsProperty('entityid', entityid))
      ..add(DiagnosticsProperty('entitytype', entitytype))
      ..add(DiagnosticsProperty('fieldname', fieldname));
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

abstract class DeleteItemWithData implements StringListEvent {
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
abstract class $CreateItemCopyWith<$Res>
    implements $StringListEventCopyWith<$Res> {
  factory $CreateItemCopyWith(
          CreateItem value, $Res Function(CreateItem) then) =
      _$CreateItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String item, String entityid, String entitytype, String fieldname});
}

/// @nodoc
class _$CreateItemCopyWithImpl<$Res> extends _$StringListEventCopyWithImpl<$Res>
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
class _$CreateItem with DiagnosticableTreeMixin implements CreateItem {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StringListEvent.createItemData(item: $item, entityid: $entityid, entitytype: $entitytype, fieldname: $fieldname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StringListEvent.createItemData'))
      ..add(DiagnosticsProperty('item', item))
      ..add(DiagnosticsProperty('entityid', entityid))
      ..add(DiagnosticsProperty('entitytype', entitytype))
      ..add(DiagnosticsProperty('fieldname', fieldname));
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

abstract class CreateItem implements StringListEvent {
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
class _$StringListStateTearOff {
  const _$StringListStateTearOff();

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
  HasLogicalFaliur hasLogicalFaliur({@required String error}) {
    return HasLogicalFaliur(
      error: error,
    );
  }

// ignore: unused_element
  HasExceptionFaliur hasExceptionFaliur({@required String error}) {
    return HasExceptionFaliur(
      error: error,
    );
  }

// ignore: unused_element
  IsListDataLoaded isListDataLoaded({List<String> listdata}) {
    return IsListDataLoaded(
      listdata: listdata,
    );
  }

// ignore: unused_element
  StringListInitialState initial() {
    return const StringListInitialState();
  }
}

/// @nodoc
// ignore: unused_element
const $StringListState = _$StringListStateTearOff();

/// @nodoc
mixin _$StringListState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasLogicalFaliur(String error),
    @required TResult hasExceptionFaliur(String error),
    @required TResult isListDataLoaded(List<String> listdata),
    @required TResult initial(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult isBusy(),
    TResult isDeleted(),
    TResult isSaved(),
    TResult hasLogicalFaliur(String error),
    TResult hasExceptionFaliur(String error),
    TResult isListDataLoaded(List<String> listdata),
    TResult initial(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult isBusy(IsBusy value),
    @required TResult isDeleted(IsDeleted value),
    @required TResult isSaved(IsSaved value),
    @required TResult hasLogicalFaliur(HasLogicalFaliur value),
    @required TResult hasExceptionFaliur(HasExceptionFaliur value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(StringListInitialState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult isBusy(IsBusy value),
    TResult isDeleted(IsDeleted value),
    TResult isSaved(IsSaved value),
    TResult hasLogicalFaliur(HasLogicalFaliur value),
    TResult hasExceptionFaliur(HasExceptionFaliur value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(StringListInitialState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $StringListStateCopyWith<$Res> {
  factory $StringListStateCopyWith(
          StringListState value, $Res Function(StringListState) then) =
      _$StringListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StringListStateCopyWithImpl<$Res>
    implements $StringListStateCopyWith<$Res> {
  _$StringListStateCopyWithImpl(this._value, this._then);

  final StringListState _value;
  // ignore: unused_field
  final $Res Function(StringListState) _then;
}

/// @nodoc
abstract class $IsBusyCopyWith<$Res> {
  factory $IsBusyCopyWith(IsBusy value, $Res Function(IsBusy) then) =
      _$IsBusyCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsBusyCopyWithImpl<$Res> extends _$StringListStateCopyWithImpl<$Res>
    implements $IsBusyCopyWith<$Res> {
  _$IsBusyCopyWithImpl(IsBusy _value, $Res Function(IsBusy) _then)
      : super(_value, (v) => _then(v as IsBusy));

  @override
  IsBusy get _value => super._value as IsBusy;
}

/// @nodoc
class _$IsBusy with DiagnosticableTreeMixin implements IsBusy {
  const _$IsBusy();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StringListState.isBusy()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StringListState.isBusy'));
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
    @required TResult hasLogicalFaliur(String error),
    @required TResult hasExceptionFaliur(String error),
    @required TResult isListDataLoaded(List<String> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
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
    TResult hasLogicalFaliur(String error),
    TResult hasExceptionFaliur(String error),
    TResult isListDataLoaded(List<String> listdata),
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
    @required TResult hasLogicalFaliur(HasLogicalFaliur value),
    @required TResult hasExceptionFaliur(HasExceptionFaliur value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(StringListInitialState value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
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
    TResult hasLogicalFaliur(HasLogicalFaliur value),
    TResult hasExceptionFaliur(HasExceptionFaliur value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(StringListInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isBusy != null) {
      return isBusy(this);
    }
    return orElse();
  }
}

abstract class IsBusy implements StringListState {
  const factory IsBusy() = _$IsBusy;
}

/// @nodoc
abstract class $IsDeletedCopyWith<$Res> {
  factory $IsDeletedCopyWith(IsDeleted value, $Res Function(IsDeleted) then) =
      _$IsDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsDeletedCopyWithImpl<$Res> extends _$StringListStateCopyWithImpl<$Res>
    implements $IsDeletedCopyWith<$Res> {
  _$IsDeletedCopyWithImpl(IsDeleted _value, $Res Function(IsDeleted) _then)
      : super(_value, (v) => _then(v as IsDeleted));

  @override
  IsDeleted get _value => super._value as IsDeleted;
}

/// @nodoc
class _$IsDeleted with DiagnosticableTreeMixin implements IsDeleted {
  const _$IsDeleted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StringListState.isDeleted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StringListState.isDeleted'));
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
    @required TResult hasLogicalFaliur(String error),
    @required TResult hasExceptionFaliur(String error),
    @required TResult isListDataLoaded(List<String> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
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
    TResult hasLogicalFaliur(String error),
    TResult hasExceptionFaliur(String error),
    TResult isListDataLoaded(List<String> listdata),
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
    @required TResult hasLogicalFaliur(HasLogicalFaliur value),
    @required TResult hasExceptionFaliur(HasExceptionFaliur value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(StringListInitialState value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
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
    TResult hasLogicalFaliur(HasLogicalFaliur value),
    TResult hasExceptionFaliur(HasExceptionFaliur value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(StringListInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isDeleted != null) {
      return isDeleted(this);
    }
    return orElse();
  }
}

abstract class IsDeleted implements StringListState {
  const factory IsDeleted() = _$IsDeleted;
}

/// @nodoc
abstract class $IsSavedCopyWith<$Res> {
  factory $IsSavedCopyWith(IsSaved value, $Res Function(IsSaved) then) =
      _$IsSavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsSavedCopyWithImpl<$Res> extends _$StringListStateCopyWithImpl<$Res>
    implements $IsSavedCopyWith<$Res> {
  _$IsSavedCopyWithImpl(IsSaved _value, $Res Function(IsSaved) _then)
      : super(_value, (v) => _then(v as IsSaved));

  @override
  IsSaved get _value => super._value as IsSaved;
}

/// @nodoc
class _$IsSaved with DiagnosticableTreeMixin implements IsSaved {
  const _$IsSaved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StringListState.isSaved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StringListState.isSaved'));
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
    @required TResult hasLogicalFaliur(String error),
    @required TResult hasExceptionFaliur(String error),
    @required TResult isListDataLoaded(List<String> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
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
    TResult hasLogicalFaliur(String error),
    TResult hasExceptionFaliur(String error),
    TResult isListDataLoaded(List<String> listdata),
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
    @required TResult hasLogicalFaliur(HasLogicalFaliur value),
    @required TResult hasExceptionFaliur(HasExceptionFaliur value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(StringListInitialState value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
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
    TResult hasLogicalFaliur(HasLogicalFaliur value),
    TResult hasExceptionFaliur(HasExceptionFaliur value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(StringListInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isSaved != null) {
      return isSaved(this);
    }
    return orElse();
  }
}

abstract class IsSaved implements StringListState {
  const factory IsSaved() = _$IsSaved;
}

/// @nodoc
abstract class $HasLogicalFaliurCopyWith<$Res> {
  factory $HasLogicalFaliurCopyWith(
          HasLogicalFaliur value, $Res Function(HasLogicalFaliur) then) =
      _$HasLogicalFaliurCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$HasLogicalFaliurCopyWithImpl<$Res>
    extends _$StringListStateCopyWithImpl<$Res>
    implements $HasLogicalFaliurCopyWith<$Res> {
  _$HasLogicalFaliurCopyWithImpl(
      HasLogicalFaliur _value, $Res Function(HasLogicalFaliur) _then)
      : super(_value, (v) => _then(v as HasLogicalFaliur));

  @override
  HasLogicalFaliur get _value => super._value as HasLogicalFaliur;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(HasLogicalFaliur(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$HasLogicalFaliur
    with DiagnosticableTreeMixin
    implements HasLogicalFaliur {
  const _$HasLogicalFaliur({@required this.error}) : assert(error != null);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StringListState.hasLogicalFaliur(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StringListState.hasLogicalFaliur'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HasLogicalFaliur &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $HasLogicalFaliurCopyWith<HasLogicalFaliur> get copyWith =>
      _$HasLogicalFaliurCopyWithImpl<HasLogicalFaliur>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasLogicalFaliur(String error),
    @required TResult hasExceptionFaliur(String error),
    @required TResult isListDataLoaded(List<String> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return hasLogicalFaliur(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult isBusy(),
    TResult isDeleted(),
    TResult isSaved(),
    TResult hasLogicalFaliur(String error),
    TResult hasExceptionFaliur(String error),
    TResult isListDataLoaded(List<String> listdata),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasLogicalFaliur != null) {
      return hasLogicalFaliur(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult isBusy(IsBusy value),
    @required TResult isDeleted(IsDeleted value),
    @required TResult isSaved(IsSaved value),
    @required TResult hasLogicalFaliur(HasLogicalFaliur value),
    @required TResult hasExceptionFaliur(HasExceptionFaliur value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(StringListInitialState value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return hasLogicalFaliur(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult isBusy(IsBusy value),
    TResult isDeleted(IsDeleted value),
    TResult isSaved(IsSaved value),
    TResult hasLogicalFaliur(HasLogicalFaliur value),
    TResult hasExceptionFaliur(HasExceptionFaliur value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(StringListInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasLogicalFaliur != null) {
      return hasLogicalFaliur(this);
    }
    return orElse();
  }
}

abstract class HasLogicalFaliur implements StringListState {
  const factory HasLogicalFaliur({@required String error}) = _$HasLogicalFaliur;

  String get error;
  @JsonKey(ignore: true)
  $HasLogicalFaliurCopyWith<HasLogicalFaliur> get copyWith;
}

/// @nodoc
abstract class $HasExceptionFaliurCopyWith<$Res> {
  factory $HasExceptionFaliurCopyWith(
          HasExceptionFaliur value, $Res Function(HasExceptionFaliur) then) =
      _$HasExceptionFaliurCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$HasExceptionFaliurCopyWithImpl<$Res>
    extends _$StringListStateCopyWithImpl<$Res>
    implements $HasExceptionFaliurCopyWith<$Res> {
  _$HasExceptionFaliurCopyWithImpl(
      HasExceptionFaliur _value, $Res Function(HasExceptionFaliur) _then)
      : super(_value, (v) => _then(v as HasExceptionFaliur));

  @override
  HasExceptionFaliur get _value => super._value as HasExceptionFaliur;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(HasExceptionFaliur(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$HasExceptionFaliur
    with DiagnosticableTreeMixin
    implements HasExceptionFaliur {
  const _$HasExceptionFaliur({@required this.error}) : assert(error != null);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StringListState.hasExceptionFaliur(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StringListState.hasExceptionFaliur'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HasExceptionFaliur &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $HasExceptionFaliurCopyWith<HasExceptionFaliur> get copyWith =>
      _$HasExceptionFaliurCopyWithImpl<HasExceptionFaliur>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasLogicalFaliur(String error),
    @required TResult hasExceptionFaliur(String error),
    @required TResult isListDataLoaded(List<String> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return hasExceptionFaliur(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult isBusy(),
    TResult isDeleted(),
    TResult isSaved(),
    TResult hasLogicalFaliur(String error),
    TResult hasExceptionFaliur(String error),
    TResult isListDataLoaded(List<String> listdata),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasExceptionFaliur != null) {
      return hasExceptionFaliur(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult isBusy(IsBusy value),
    @required TResult isDeleted(IsDeleted value),
    @required TResult isSaved(IsSaved value),
    @required TResult hasLogicalFaliur(HasLogicalFaliur value),
    @required TResult hasExceptionFaliur(HasExceptionFaliur value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(StringListInitialState value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
    assert(isListDataLoaded != null);
    assert(initial != null);
    return hasExceptionFaliur(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult isBusy(IsBusy value),
    TResult isDeleted(IsDeleted value),
    TResult isSaved(IsSaved value),
    TResult hasLogicalFaliur(HasLogicalFaliur value),
    TResult hasExceptionFaliur(HasExceptionFaliur value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(StringListInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasExceptionFaliur != null) {
      return hasExceptionFaliur(this);
    }
    return orElse();
  }
}

abstract class HasExceptionFaliur implements StringListState {
  const factory HasExceptionFaliur({@required String error}) =
      _$HasExceptionFaliur;

  String get error;
  @JsonKey(ignore: true)
  $HasExceptionFaliurCopyWith<HasExceptionFaliur> get copyWith;
}

/// @nodoc
abstract class $IsListDataLoadedCopyWith<$Res> {
  factory $IsListDataLoadedCopyWith(
          IsListDataLoaded value, $Res Function(IsListDataLoaded) then) =
      _$IsListDataLoadedCopyWithImpl<$Res>;
  $Res call({List<String> listdata});
}

/// @nodoc
class _$IsListDataLoadedCopyWithImpl<$Res>
    extends _$StringListStateCopyWithImpl<$Res>
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
          listdata == freezed ? _value.listdata : listdata as List<String>,
    ));
  }
}

/// @nodoc
class _$IsListDataLoaded
    with DiagnosticableTreeMixin
    implements IsListDataLoaded {
  const _$IsListDataLoaded({this.listdata});

  @override
  final List<String> listdata;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StringListState.isListDataLoaded(listdata: $listdata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StringListState.isListDataLoaded'))
      ..add(DiagnosticsProperty('listdata', listdata));
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
    @required TResult hasLogicalFaliur(String error),
    @required TResult hasExceptionFaliur(String error),
    @required TResult isListDataLoaded(List<String> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
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
    TResult hasLogicalFaliur(String error),
    TResult hasExceptionFaliur(String error),
    TResult isListDataLoaded(List<String> listdata),
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
    @required TResult hasLogicalFaliur(HasLogicalFaliur value),
    @required TResult hasExceptionFaliur(HasExceptionFaliur value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(StringListInitialState value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
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
    TResult hasLogicalFaliur(HasLogicalFaliur value),
    TResult hasExceptionFaliur(HasExceptionFaliur value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(StringListInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isListDataLoaded != null) {
      return isListDataLoaded(this);
    }
    return orElse();
  }
}

abstract class IsListDataLoaded implements StringListState {
  const factory IsListDataLoaded({List<String> listdata}) = _$IsListDataLoaded;

  List<String> get listdata;
  @JsonKey(ignore: true)
  $IsListDataLoadedCopyWith<IsListDataLoaded> get copyWith;
}

/// @nodoc
abstract class $StringListInitialStateCopyWith<$Res> {
  factory $StringListInitialStateCopyWith(StringListInitialState value,
          $Res Function(StringListInitialState) then) =
      _$StringListInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StringListInitialStateCopyWithImpl<$Res>
    extends _$StringListStateCopyWithImpl<$Res>
    implements $StringListInitialStateCopyWith<$Res> {
  _$StringListInitialStateCopyWithImpl(StringListInitialState _value,
      $Res Function(StringListInitialState) _then)
      : super(_value, (v) => _then(v as StringListInitialState));

  @override
  StringListInitialState get _value => super._value as StringListInitialState;
}

/// @nodoc
class _$StringListInitialState
    with DiagnosticableTreeMixin
    implements StringListInitialState {
  const _$StringListInitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StringListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StringListState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StringListInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isSaved(),
    @required TResult hasLogicalFaliur(String error),
    @required TResult hasExceptionFaliur(String error),
    @required TResult isListDataLoaded(List<String> listdata),
    @required TResult initial(),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
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
    TResult hasLogicalFaliur(String error),
    TResult hasExceptionFaliur(String error),
    TResult isListDataLoaded(List<String> listdata),
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
    @required TResult hasLogicalFaliur(HasLogicalFaliur value),
    @required TResult hasExceptionFaliur(HasExceptionFaliur value),
    @required TResult isListDataLoaded(IsListDataLoaded value),
    @required TResult initial(StringListInitialState value),
  }) {
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isSaved != null);
    assert(hasLogicalFaliur != null);
    assert(hasExceptionFaliur != null);
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
    TResult hasLogicalFaliur(HasLogicalFaliur value),
    TResult hasExceptionFaliur(HasExceptionFaliur value),
    TResult isListDataLoaded(IsListDataLoaded value),
    TResult initial(StringListInitialState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StringListInitialState implements StringListState {
  const factory StringListInitialState() = _$StringListInitialState;
}
