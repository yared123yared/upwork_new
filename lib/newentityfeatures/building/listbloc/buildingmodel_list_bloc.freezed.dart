// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'buildingmodel_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BuildingModelListEventTearOff {
  const _$BuildingModelListEventTearOff();

// ignore: unused_element
  _Initialized initialized() {
    return const _Initialized();
  }

// ignore: unused_element
  _GetListData getListData(String entityID, String entityType) {
    return _GetListData(
      entityID,
      entityType,
    );
  }

// ignore: unused_element
  _DeleteItemWithData deleteItemWithData(
      BuildingModel item, String entityid, String entitytype) {
    return _DeleteItemWithData(
      item,
      entityid,
      entitytype,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BuildingModelListEvent = _$BuildingModelListEventTearOff();

/// @nodoc
mixin _$BuildingModelListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult getListData(String entityID, String entityType),
    @required
        TResult deleteItemWithData(
            BuildingModel item, String entityid, String entitytype),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult getListData(String entityID, String entityType),
    TResult deleteItemWithData(
        BuildingModel item, String entityid, String entitytype),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult getListData(_GetListData value),
    @required TResult deleteItemWithData(_DeleteItemWithData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult getListData(_GetListData value),
    TResult deleteItemWithData(_DeleteItemWithData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BuildingModelListEventCopyWith<$Res> {
  factory $BuildingModelListEventCopyWith(BuildingModelListEvent value,
          $Res Function(BuildingModelListEvent) then) =
      _$BuildingModelListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuildingModelListEventCopyWithImpl<$Res>
    implements $BuildingModelListEventCopyWith<$Res> {
  _$BuildingModelListEventCopyWithImpl(this._value, this._then);

  final BuildingModelListEvent _value;
  // ignore: unused_field
  final $Res Function(BuildingModelListEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$BuildingModelListEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'BuildingModelListEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult getListData(String entityID, String entityType),
    @required
        TResult deleteItemWithData(
            BuildingModel item, String entityid, String entitytype),
  }) {
    assert(initialized != null);
    assert(getListData != null);
    assert(deleteItemWithData != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult getListData(String entityID, String entityType),
    TResult deleteItemWithData(
        BuildingModel item, String entityid, String entitytype),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult getListData(_GetListData value),
    @required TResult deleteItemWithData(_DeleteItemWithData value),
  }) {
    assert(initialized != null);
    assert(getListData != null);
    assert(deleteItemWithData != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult getListData(_GetListData value),
    TResult deleteItemWithData(_DeleteItemWithData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements BuildingModelListEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$GetListDataCopyWith<$Res> {
  factory _$GetListDataCopyWith(
          _GetListData value, $Res Function(_GetListData) then) =
      __$GetListDataCopyWithImpl<$Res>;
  $Res call({String entityID, String entityType});
}

/// @nodoc
class __$GetListDataCopyWithImpl<$Res>
    extends _$BuildingModelListEventCopyWithImpl<$Res>
    implements _$GetListDataCopyWith<$Res> {
  __$GetListDataCopyWithImpl(
      _GetListData _value, $Res Function(_GetListData) _then)
      : super(_value, (v) => _then(v as _GetListData));

  @override
  _GetListData get _value => super._value as _GetListData;

  @override
  $Res call({
    Object entityID = freezed,
    Object entityType = freezed,
  }) {
    return _then(_GetListData(
      entityID == freezed ? _value.entityID : entityID as String,
      entityType == freezed ? _value.entityType : entityType as String,
    ));
  }
}

/// @nodoc
class _$_GetListData implements _GetListData {
  const _$_GetListData(this.entityID, this.entityType)
      : assert(entityID != null),
        assert(entityType != null);

  @override
  final String entityID;
  @override
  final String entityType;

  @override
  String toString() {
    return 'BuildingModelListEvent.getListData(entityID: $entityID, entityType: $entityType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListData &&
            (identical(other.entityID, entityID) ||
                const DeepCollectionEquality()
                    .equals(other.entityID, entityID)) &&
            (identical(other.entityType, entityType) ||
                const DeepCollectionEquality()
                    .equals(other.entityType, entityType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entityID) ^
      const DeepCollectionEquality().hash(entityType);

  @JsonKey(ignore: true)
  @override
  _$GetListDataCopyWith<_GetListData> get copyWith =>
      __$GetListDataCopyWithImpl<_GetListData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult getListData(String entityID, String entityType),
    @required
        TResult deleteItemWithData(
            BuildingModel item, String entityid, String entitytype),
  }) {
    assert(initialized != null);
    assert(getListData != null);
    assert(deleteItemWithData != null);
    return getListData(entityID, entityType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult getListData(String entityID, String entityType),
    TResult deleteItemWithData(
        BuildingModel item, String entityid, String entitytype),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getListData != null) {
      return getListData(entityID, entityType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult getListData(_GetListData value),
    @required TResult deleteItemWithData(_DeleteItemWithData value),
  }) {
    assert(initialized != null);
    assert(getListData != null);
    assert(deleteItemWithData != null);
    return getListData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult getListData(_GetListData value),
    TResult deleteItemWithData(_DeleteItemWithData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getListData != null) {
      return getListData(this);
    }
    return orElse();
  }
}

abstract class _GetListData implements BuildingModelListEvent {
  const factory _GetListData(String entityID, String entityType) =
      _$_GetListData;

  String get entityID;
  String get entityType;
  @JsonKey(ignore: true)
  _$GetListDataCopyWith<_GetListData> get copyWith;
}

/// @nodoc
abstract class _$DeleteItemWithDataCopyWith<$Res> {
  factory _$DeleteItemWithDataCopyWith(
          _DeleteItemWithData value, $Res Function(_DeleteItemWithData) then) =
      __$DeleteItemWithDataCopyWithImpl<$Res>;
  $Res call({BuildingModel item, String entityid, String entitytype});
}

/// @nodoc
class __$DeleteItemWithDataCopyWithImpl<$Res>
    extends _$BuildingModelListEventCopyWithImpl<$Res>
    implements _$DeleteItemWithDataCopyWith<$Res> {
  __$DeleteItemWithDataCopyWithImpl(
      _DeleteItemWithData _value, $Res Function(_DeleteItemWithData) _then)
      : super(_value, (v) => _then(v as _DeleteItemWithData));

  @override
  _DeleteItemWithData get _value => super._value as _DeleteItemWithData;

  @override
  $Res call({
    Object item = freezed,
    Object entityid = freezed,
    Object entitytype = freezed,
  }) {
    return _then(_DeleteItemWithData(
      item == freezed ? _value.item : item as BuildingModel,
      entityid == freezed ? _value.entityid : entityid as String,
      entitytype == freezed ? _value.entitytype : entitytype as String,
    ));
  }
}

/// @nodoc
class _$_DeleteItemWithData implements _DeleteItemWithData {
  const _$_DeleteItemWithData(this.item, this.entityid, this.entitytype)
      : assert(item != null),
        assert(entityid != null),
        assert(entitytype != null);

  @override
  final BuildingModel item;
  @override
  final String entityid;
  @override
  final String entitytype;

  @override
  String toString() {
    return 'BuildingModelListEvent.deleteItemWithData(item: $item, entityid: $entityid, entitytype: $entitytype)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteItemWithData &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.entityid, entityid) ||
                const DeepCollectionEquality()
                    .equals(other.entityid, entityid)) &&
            (identical(other.entitytype, entitytype) ||
                const DeepCollectionEquality()
                    .equals(other.entitytype, entitytype)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(entityid) ^
      const DeepCollectionEquality().hash(entitytype);

  @JsonKey(ignore: true)
  @override
  _$DeleteItemWithDataCopyWith<_DeleteItemWithData> get copyWith =>
      __$DeleteItemWithDataCopyWithImpl<_DeleteItemWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult getListData(String entityID, String entityType),
    @required
        TResult deleteItemWithData(
            BuildingModel item, String entityid, String entitytype),
  }) {
    assert(initialized != null);
    assert(getListData != null);
    assert(deleteItemWithData != null);
    return deleteItemWithData(item, entityid, entitytype);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult getListData(String entityID, String entityType),
    TResult deleteItemWithData(
        BuildingModel item, String entityid, String entitytype),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteItemWithData != null) {
      return deleteItemWithData(item, entityid, entitytype);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult getListData(_GetListData value),
    @required TResult deleteItemWithData(_DeleteItemWithData value),
  }) {
    assert(initialized != null);
    assert(getListData != null);
    assert(deleteItemWithData != null);
    return deleteItemWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult getListData(_GetListData value),
    TResult deleteItemWithData(_DeleteItemWithData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteItemWithData != null) {
      return deleteItemWithData(this);
    }
    return orElse();
  }
}

abstract class _DeleteItemWithData implements BuildingModelListEvent {
  const factory _DeleteItemWithData(
          BuildingModel item, String entityid, String entitytype) =
      _$_DeleteItemWithData;

  BuildingModel get item;
  String get entityid;
  String get entitytype;
  @JsonKey(ignore: true)
  _$DeleteItemWithDataCopyWith<_DeleteItemWithData> get copyWith;
}

/// @nodoc
class _$BuildingModelListStateTearOff {
  const _$BuildingModelListStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _IsBusy isBusy() {
    return const _IsBusy();
  }

// ignore: unused_element
  _IsDeleted isDeleted() {
    return const _IsDeleted();
  }

// ignore: unused_element
  _IsListDataLoaded isListDataLoaded(List<BuildingModel> listdata) {
    return _IsListDataLoaded(
      listdata,
    );
  }

// ignore: unused_element
  _HasLogicalFailure hasLogicalFailure(String error) {
    return _HasLogicalFailure(
      error,
    );
  }

// ignore: unused_element
  _HasExceptionFailure hasExceptionFailure(String error) {
    return _HasExceptionFailure(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BuildingModelListState = _$BuildingModelListStateTearOff();

/// @nodoc
mixin _$BuildingModelListState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isListDataLoaded(List<BuildingModel> listdata),
    @required TResult hasLogicalFailure(String error),
    @required TResult hasExceptionFailure(String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isBusy(),
    TResult isDeleted(),
    TResult isListDataLoaded(List<BuildingModel> listdata),
    TResult hasLogicalFailure(String error),
    TResult hasExceptionFailure(String error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isBusy(_IsBusy value),
    @required TResult isDeleted(_IsDeleted value),
    @required TResult isListDataLoaded(_IsListDataLoaded value),
    @required TResult hasLogicalFailure(_HasLogicalFailure value),
    @required TResult hasExceptionFailure(_HasExceptionFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isBusy(_IsBusy value),
    TResult isDeleted(_IsDeleted value),
    TResult isListDataLoaded(_IsListDataLoaded value),
    TResult hasLogicalFailure(_HasLogicalFailure value),
    TResult hasExceptionFailure(_HasExceptionFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BuildingModelListStateCopyWith<$Res> {
  factory $BuildingModelListStateCopyWith(BuildingModelListState value,
          $Res Function(BuildingModelListState) then) =
      _$BuildingModelListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuildingModelListStateCopyWithImpl<$Res>
    implements $BuildingModelListStateCopyWith<$Res> {
  _$BuildingModelListStateCopyWithImpl(this._value, this._then);

  final BuildingModelListState _value;
  // ignore: unused_field
  final $Res Function(BuildingModelListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$BuildingModelListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BuildingModelListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isListDataLoaded(List<BuildingModel> listdata),
    @required TResult hasLogicalFailure(String error),
    @required TResult hasExceptionFailure(String error),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isBusy(),
    TResult isDeleted(),
    TResult isListDataLoaded(List<BuildingModel> listdata),
    TResult hasLogicalFailure(String error),
    TResult hasExceptionFailure(String error),
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
    @required TResult initial(_Initial value),
    @required TResult isBusy(_IsBusy value),
    @required TResult isDeleted(_IsDeleted value),
    @required TResult isListDataLoaded(_IsListDataLoaded value),
    @required TResult hasLogicalFailure(_HasLogicalFailure value),
    @required TResult hasExceptionFailure(_HasExceptionFailure value),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isBusy(_IsBusy value),
    TResult isDeleted(_IsDeleted value),
    TResult isListDataLoaded(_IsListDataLoaded value),
    TResult hasLogicalFailure(_HasLogicalFailure value),
    TResult hasExceptionFailure(_HasExceptionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BuildingModelListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsBusyCopyWith<$Res> {
  factory _$IsBusyCopyWith(_IsBusy value, $Res Function(_IsBusy) then) =
      __$IsBusyCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsBusyCopyWithImpl<$Res>
    extends _$BuildingModelListStateCopyWithImpl<$Res>
    implements _$IsBusyCopyWith<$Res> {
  __$IsBusyCopyWithImpl(_IsBusy _value, $Res Function(_IsBusy) _then)
      : super(_value, (v) => _then(v as _IsBusy));

  @override
  _IsBusy get _value => super._value as _IsBusy;
}

/// @nodoc
class _$_IsBusy implements _IsBusy {
  const _$_IsBusy();

  @override
  String toString() {
    return 'BuildingModelListState.isBusy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsBusy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isListDataLoaded(List<BuildingModel> listdata),
    @required TResult hasLogicalFailure(String error),
    @required TResult hasExceptionFailure(String error),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return isBusy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isBusy(),
    TResult isDeleted(),
    TResult isListDataLoaded(List<BuildingModel> listdata),
    TResult hasLogicalFailure(String error),
    TResult hasExceptionFailure(String error),
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
    @required TResult initial(_Initial value),
    @required TResult isBusy(_IsBusy value),
    @required TResult isDeleted(_IsDeleted value),
    @required TResult isListDataLoaded(_IsListDataLoaded value),
    @required TResult hasLogicalFailure(_HasLogicalFailure value),
    @required TResult hasExceptionFailure(_HasExceptionFailure value),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return isBusy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isBusy(_IsBusy value),
    TResult isDeleted(_IsDeleted value),
    TResult isListDataLoaded(_IsListDataLoaded value),
    TResult hasLogicalFailure(_HasLogicalFailure value),
    TResult hasExceptionFailure(_HasExceptionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isBusy != null) {
      return isBusy(this);
    }
    return orElse();
  }
}

abstract class _IsBusy implements BuildingModelListState {
  const factory _IsBusy() = _$_IsBusy;
}

/// @nodoc
abstract class _$IsDeletedCopyWith<$Res> {
  factory _$IsDeletedCopyWith(
          _IsDeleted value, $Res Function(_IsDeleted) then) =
      __$IsDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsDeletedCopyWithImpl<$Res>
    extends _$BuildingModelListStateCopyWithImpl<$Res>
    implements _$IsDeletedCopyWith<$Res> {
  __$IsDeletedCopyWithImpl(_IsDeleted _value, $Res Function(_IsDeleted) _then)
      : super(_value, (v) => _then(v as _IsDeleted));

  @override
  _IsDeleted get _value => super._value as _IsDeleted;
}

/// @nodoc
class _$_IsDeleted implements _IsDeleted {
  const _$_IsDeleted();

  @override
  String toString() {
    return 'BuildingModelListState.isDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isListDataLoaded(List<BuildingModel> listdata),
    @required TResult hasLogicalFailure(String error),
    @required TResult hasExceptionFailure(String error),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return isDeleted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isBusy(),
    TResult isDeleted(),
    TResult isListDataLoaded(List<BuildingModel> listdata),
    TResult hasLogicalFailure(String error),
    TResult hasExceptionFailure(String error),
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
    @required TResult initial(_Initial value),
    @required TResult isBusy(_IsBusy value),
    @required TResult isDeleted(_IsDeleted value),
    @required TResult isListDataLoaded(_IsListDataLoaded value),
    @required TResult hasLogicalFailure(_HasLogicalFailure value),
    @required TResult hasExceptionFailure(_HasExceptionFailure value),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return isDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isBusy(_IsBusy value),
    TResult isDeleted(_IsDeleted value),
    TResult isListDataLoaded(_IsListDataLoaded value),
    TResult hasLogicalFailure(_HasLogicalFailure value),
    TResult hasExceptionFailure(_HasExceptionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isDeleted != null) {
      return isDeleted(this);
    }
    return orElse();
  }
}

abstract class _IsDeleted implements BuildingModelListState {
  const factory _IsDeleted() = _$_IsDeleted;
}

/// @nodoc
abstract class _$IsListDataLoadedCopyWith<$Res> {
  factory _$IsListDataLoadedCopyWith(
          _IsListDataLoaded value, $Res Function(_IsListDataLoaded) then) =
      __$IsListDataLoadedCopyWithImpl<$Res>;
  $Res call({List<BuildingModel> listdata});
}

/// @nodoc
class __$IsListDataLoadedCopyWithImpl<$Res>
    extends _$BuildingModelListStateCopyWithImpl<$Res>
    implements _$IsListDataLoadedCopyWith<$Res> {
  __$IsListDataLoadedCopyWithImpl(
      _IsListDataLoaded _value, $Res Function(_IsListDataLoaded) _then)
      : super(_value, (v) => _then(v as _IsListDataLoaded));

  @override
  _IsListDataLoaded get _value => super._value as _IsListDataLoaded;

  @override
  $Res call({
    Object listdata = freezed,
  }) {
    return _then(_IsListDataLoaded(
      listdata == freezed ? _value.listdata : listdata as List<BuildingModel>,
    ));
  }
}

/// @nodoc
class _$_IsListDataLoaded implements _IsListDataLoaded {
  const _$_IsListDataLoaded(this.listdata) : assert(listdata != null);

  @override
  final List<BuildingModel> listdata;

  @override
  String toString() {
    return 'BuildingModelListState.isListDataLoaded(listdata: $listdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsListDataLoaded &&
            (identical(other.listdata, listdata) ||
                const DeepCollectionEquality()
                    .equals(other.listdata, listdata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listdata);

  @JsonKey(ignore: true)
  @override
  _$IsListDataLoadedCopyWith<_IsListDataLoaded> get copyWith =>
      __$IsListDataLoadedCopyWithImpl<_IsListDataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isListDataLoaded(List<BuildingModel> listdata),
    @required TResult hasLogicalFailure(String error),
    @required TResult hasExceptionFailure(String error),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return isListDataLoaded(listdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isBusy(),
    TResult isDeleted(),
    TResult isListDataLoaded(List<BuildingModel> listdata),
    TResult hasLogicalFailure(String error),
    TResult hasExceptionFailure(String error),
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
    @required TResult initial(_Initial value),
    @required TResult isBusy(_IsBusy value),
    @required TResult isDeleted(_IsDeleted value),
    @required TResult isListDataLoaded(_IsListDataLoaded value),
    @required TResult hasLogicalFailure(_HasLogicalFailure value),
    @required TResult hasExceptionFailure(_HasExceptionFailure value),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return isListDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isBusy(_IsBusy value),
    TResult isDeleted(_IsDeleted value),
    TResult isListDataLoaded(_IsListDataLoaded value),
    TResult hasLogicalFailure(_HasLogicalFailure value),
    TResult hasExceptionFailure(_HasExceptionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isListDataLoaded != null) {
      return isListDataLoaded(this);
    }
    return orElse();
  }
}

abstract class _IsListDataLoaded implements BuildingModelListState {
  const factory _IsListDataLoaded(List<BuildingModel> listdata) =
      _$_IsListDataLoaded;

  List<BuildingModel> get listdata;
  @JsonKey(ignore: true)
  _$IsListDataLoadedCopyWith<_IsListDataLoaded> get copyWith;
}

/// @nodoc
abstract class _$HasLogicalFailureCopyWith<$Res> {
  factory _$HasLogicalFailureCopyWith(
          _HasLogicalFailure value, $Res Function(_HasLogicalFailure) then) =
      __$HasLogicalFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$HasLogicalFailureCopyWithImpl<$Res>
    extends _$BuildingModelListStateCopyWithImpl<$Res>
    implements _$HasLogicalFailureCopyWith<$Res> {
  __$HasLogicalFailureCopyWithImpl(
      _HasLogicalFailure _value, $Res Function(_HasLogicalFailure) _then)
      : super(_value, (v) => _then(v as _HasLogicalFailure));

  @override
  _HasLogicalFailure get _value => super._value as _HasLogicalFailure;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_HasLogicalFailure(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_HasLogicalFailure implements _HasLogicalFailure {
  const _$_HasLogicalFailure(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'BuildingModelListState.hasLogicalFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasLogicalFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$HasLogicalFailureCopyWith<_HasLogicalFailure> get copyWith =>
      __$HasLogicalFailureCopyWithImpl<_HasLogicalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isListDataLoaded(List<BuildingModel> listdata),
    @required TResult hasLogicalFailure(String error),
    @required TResult hasExceptionFailure(String error),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return hasLogicalFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isBusy(),
    TResult isDeleted(),
    TResult isListDataLoaded(List<BuildingModel> listdata),
    TResult hasLogicalFailure(String error),
    TResult hasExceptionFailure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasLogicalFailure != null) {
      return hasLogicalFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isBusy(_IsBusy value),
    @required TResult isDeleted(_IsDeleted value),
    @required TResult isListDataLoaded(_IsListDataLoaded value),
    @required TResult hasLogicalFailure(_HasLogicalFailure value),
    @required TResult hasExceptionFailure(_HasExceptionFailure value),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return hasLogicalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isBusy(_IsBusy value),
    TResult isDeleted(_IsDeleted value),
    TResult isListDataLoaded(_IsListDataLoaded value),
    TResult hasLogicalFailure(_HasLogicalFailure value),
    TResult hasExceptionFailure(_HasExceptionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasLogicalFailure != null) {
      return hasLogicalFailure(this);
    }
    return orElse();
  }
}

abstract class _HasLogicalFailure implements BuildingModelListState {
  const factory _HasLogicalFailure(String error) = _$_HasLogicalFailure;

  String get error;
  @JsonKey(ignore: true)
  _$HasLogicalFailureCopyWith<_HasLogicalFailure> get copyWith;
}

/// @nodoc
abstract class _$HasExceptionFailureCopyWith<$Res> {
  factory _$HasExceptionFailureCopyWith(_HasExceptionFailure value,
          $Res Function(_HasExceptionFailure) then) =
      __$HasExceptionFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$HasExceptionFailureCopyWithImpl<$Res>
    extends _$BuildingModelListStateCopyWithImpl<$Res>
    implements _$HasExceptionFailureCopyWith<$Res> {
  __$HasExceptionFailureCopyWithImpl(
      _HasExceptionFailure _value, $Res Function(_HasExceptionFailure) _then)
      : super(_value, (v) => _then(v as _HasExceptionFailure));

  @override
  _HasExceptionFailure get _value => super._value as _HasExceptionFailure;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_HasExceptionFailure(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_HasExceptionFailure implements _HasExceptionFailure {
  const _$_HasExceptionFailure(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'BuildingModelListState.hasExceptionFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasExceptionFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$HasExceptionFailureCopyWith<_HasExceptionFailure> get copyWith =>
      __$HasExceptionFailureCopyWithImpl<_HasExceptionFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult isBusy(),
    @required TResult isDeleted(),
    @required TResult isListDataLoaded(List<BuildingModel> listdata),
    @required TResult hasLogicalFailure(String error),
    @required TResult hasExceptionFailure(String error),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return hasExceptionFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult isBusy(),
    TResult isDeleted(),
    TResult isListDataLoaded(List<BuildingModel> listdata),
    TResult hasLogicalFailure(String error),
    TResult hasExceptionFailure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasExceptionFailure != null) {
      return hasExceptionFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult isBusy(_IsBusy value),
    @required TResult isDeleted(_IsDeleted value),
    @required TResult isListDataLoaded(_IsListDataLoaded value),
    @required TResult hasLogicalFailure(_HasLogicalFailure value),
    @required TResult hasExceptionFailure(_HasExceptionFailure value),
  }) {
    assert(initial != null);
    assert(isBusy != null);
    assert(isDeleted != null);
    assert(isListDataLoaded != null);
    assert(hasLogicalFailure != null);
    assert(hasExceptionFailure != null);
    return hasExceptionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult isBusy(_IsBusy value),
    TResult isDeleted(_IsDeleted value),
    TResult isListDataLoaded(_IsListDataLoaded value),
    TResult hasLogicalFailure(_HasLogicalFailure value),
    TResult hasExceptionFailure(_HasExceptionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasExceptionFailure != null) {
      return hasExceptionFailure(this);
    }
    return orElse();
  }
}

abstract class _HasExceptionFailure implements BuildingModelListState {
  const factory _HasExceptionFailure(String error) = _$_HasExceptionFailure;

  String get error;
  @JsonKey(ignore: true)
  _$HasExceptionFailureCopyWith<_HasExceptionFailure> get copyWith;
}
