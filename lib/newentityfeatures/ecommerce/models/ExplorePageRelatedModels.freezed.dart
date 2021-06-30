// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ExplorePageRelatedModels.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DimData _$DimDataFromJson(Map<String, dynamic> json) {
  return _DimData.fromJson(json);
}

/// @nodoc
class _$DimDataTearOff {
  const _$DimDataTearOff();

// ignore: unused_element
  _DimData call(
      {@JsonKey(name: 'dimname') String dimname,
      @JsonKey(name: 'fieldvalues') List<DimItem> fieldvalues}) {
    return _DimData(
      dimname: dimname,
      fieldvalues: fieldvalues,
    );
  }

// ignore: unused_element
  DimData fromJson(Map<String, Object> json) {
    return DimData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DimData = _$DimDataTearOff();

/// @nodoc
mixin _$DimData {
  @JsonKey(name: 'dimname')
  String get dimname;
  @JsonKey(name: 'fieldvalues')
  List<DimItem> get fieldvalues;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DimDataCopyWith<DimData> get copyWith;
}

/// @nodoc
abstract class $DimDataCopyWith<$Res> {
  factory $DimDataCopyWith(DimData value, $Res Function(DimData) then) =
      _$DimDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'dimname') String dimname,
      @JsonKey(name: 'fieldvalues') List<DimItem> fieldvalues});
}

/// @nodoc
class _$DimDataCopyWithImpl<$Res> implements $DimDataCopyWith<$Res> {
  _$DimDataCopyWithImpl(this._value, this._then);

  final DimData _value;
  // ignore: unused_field
  final $Res Function(DimData) _then;

  @override
  $Res call({
    Object dimname = freezed,
    Object fieldvalues = freezed,
  }) {
    return _then(_value.copyWith(
      dimname: dimname == freezed ? _value.dimname : dimname as String,
      fieldvalues: fieldvalues == freezed
          ? _value.fieldvalues
          : fieldvalues as List<DimItem>,
    ));
  }
}

/// @nodoc
abstract class _$DimDataCopyWith<$Res> implements $DimDataCopyWith<$Res> {
  factory _$DimDataCopyWith(_DimData value, $Res Function(_DimData) then) =
      __$DimDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'dimname') String dimname,
      @JsonKey(name: 'fieldvalues') List<DimItem> fieldvalues});
}

/// @nodoc
class __$DimDataCopyWithImpl<$Res> extends _$DimDataCopyWithImpl<$Res>
    implements _$DimDataCopyWith<$Res> {
  __$DimDataCopyWithImpl(_DimData _value, $Res Function(_DimData) _then)
      : super(_value, (v) => _then(v as _DimData));

  @override
  _DimData get _value => super._value as _DimData;

  @override
  $Res call({
    Object dimname = freezed,
    Object fieldvalues = freezed,
  }) {
    return _then(_DimData(
      dimname: dimname == freezed ? _value.dimname : dimname as String,
      fieldvalues: fieldvalues == freezed
          ? _value.fieldvalues
          : fieldvalues as List<DimItem>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DimData implements _DimData {
  _$_DimData(
      {@JsonKey(name: 'dimname') this.dimname,
      @JsonKey(name: 'fieldvalues') this.fieldvalues});

  factory _$_DimData.fromJson(Map<String, dynamic> json) =>
      _$_$_DimDataFromJson(json);

  @override
  @JsonKey(name: 'dimname')
  final String dimname;
  @override
  @JsonKey(name: 'fieldvalues')
  final List<DimItem> fieldvalues;

  @override
  String toString() {
    return 'DimData(dimname: $dimname, fieldvalues: $fieldvalues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DimData &&
            (identical(other.dimname, dimname) ||
                const DeepCollectionEquality()
                    .equals(other.dimname, dimname)) &&
            (identical(other.fieldvalues, fieldvalues) ||
                const DeepCollectionEquality()
                    .equals(other.fieldvalues, fieldvalues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dimname) ^
      const DeepCollectionEquality().hash(fieldvalues);

  @JsonKey(ignore: true)
  @override
  _$DimDataCopyWith<_DimData> get copyWith =>
      __$DimDataCopyWithImpl<_DimData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DimDataToJson(this);
  }
}

abstract class _DimData implements DimData {
  factory _DimData(
      {@JsonKey(name: 'dimname') String dimname,
      @JsonKey(name: 'fieldvalues') List<DimItem> fieldvalues}) = _$_DimData;

  factory _DimData.fromJson(Map<String, dynamic> json) = _$_DimData.fromJson;

  @override
  @JsonKey(name: 'dimname')
  String get dimname;
  @override
  @JsonKey(name: 'fieldvalues')
  List<DimItem> get fieldvalues;
  @override
  @JsonKey(ignore: true)
  _$DimDataCopyWith<_DimData> get copyWith;
}

DimItem _$DimItemFromJson(Map<String, dynamic> json) {
  return _DimItem.fromJson(json);
}

/// @nodoc
class _$DimItemTearOff {
  const _$DimItemTearOff();

// ignore: unused_element
  _DimItem call(
      {@JsonKey(name: 'fieldvalue') String fieldvalue,
      @JsonKey(name: 'count') int count}) {
    return _DimItem(
      fieldvalue: fieldvalue,
      count: count,
    );
  }

// ignore: unused_element
  DimItem fromJson(Map<String, Object> json) {
    return DimItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DimItem = _$DimItemTearOff();

/// @nodoc
mixin _$DimItem {
  @JsonKey(name: 'fieldvalue')
  String get fieldvalue;
  @JsonKey(name: 'count')
  int get count;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DimItemCopyWith<DimItem> get copyWith;
}

/// @nodoc
abstract class $DimItemCopyWith<$Res> {
  factory $DimItemCopyWith(DimItem value, $Res Function(DimItem) then) =
      _$DimItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'fieldvalue') String fieldvalue,
      @JsonKey(name: 'count') int count});
}

/// @nodoc
class _$DimItemCopyWithImpl<$Res> implements $DimItemCopyWith<$Res> {
  _$DimItemCopyWithImpl(this._value, this._then);

  final DimItem _value;
  // ignore: unused_field
  final $Res Function(DimItem) _then;

  @override
  $Res call({
    Object fieldvalue = freezed,
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      fieldvalue:
          fieldvalue == freezed ? _value.fieldvalue : fieldvalue as String,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

/// @nodoc
abstract class _$DimItemCopyWith<$Res> implements $DimItemCopyWith<$Res> {
  factory _$DimItemCopyWith(_DimItem value, $Res Function(_DimItem) then) =
      __$DimItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'fieldvalue') String fieldvalue,
      @JsonKey(name: 'count') int count});
}

/// @nodoc
class __$DimItemCopyWithImpl<$Res> extends _$DimItemCopyWithImpl<$Res>
    implements _$DimItemCopyWith<$Res> {
  __$DimItemCopyWithImpl(_DimItem _value, $Res Function(_DimItem) _then)
      : super(_value, (v) => _then(v as _DimItem));

  @override
  _DimItem get _value => super._value as _DimItem;

  @override
  $Res call({
    Object fieldvalue = freezed,
    Object count = freezed,
  }) {
    return _then(_DimItem(
      fieldvalue:
          fieldvalue == freezed ? _value.fieldvalue : fieldvalue as String,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DimItem implements _DimItem {
  _$_DimItem(
      {@JsonKey(name: 'fieldvalue') this.fieldvalue,
      @JsonKey(name: 'count') this.count});

  factory _$_DimItem.fromJson(Map<String, dynamic> json) =>
      _$_$_DimItemFromJson(json);

  @override
  @JsonKey(name: 'fieldvalue')
  final String fieldvalue;
  @override
  @JsonKey(name: 'count')
  final int count;

  @override
  String toString() {
    return 'DimItem(fieldvalue: $fieldvalue, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DimItem &&
            (identical(other.fieldvalue, fieldvalue) ||
                const DeepCollectionEquality()
                    .equals(other.fieldvalue, fieldvalue)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fieldvalue) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$DimItemCopyWith<_DimItem> get copyWith =>
      __$DimItemCopyWithImpl<_DimItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DimItemToJson(this);
  }
}

abstract class _DimItem implements DimItem {
  factory _DimItem(
      {@JsonKey(name: 'fieldvalue') String fieldvalue,
      @JsonKey(name: 'count') int count}) = _$_DimItem;

  factory _DimItem.fromJson(Map<String, dynamic> json) = _$_DimItem.fromJson;

  @override
  @JsonKey(name: 'fieldvalue')
  String get fieldvalue;
  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(ignore: true)
  _$DimItemCopyWith<_DimItem> get copyWith;
}

AreaInfo _$AreaInfoFromJson(Map<String, dynamic> json) {
  return _AreaInfo.fromJson(json);
}

/// @nodoc
class _$AreaInfoTearOff {
  const _$AreaInfoTearOff();

// ignore: unused_element
  _AreaInfo call(
      {@JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'areaname') String areaname,
      @JsonKey(name: 'zipcode') int zipcode}) {
    return _AreaInfo(
      state: state,
      district: district,
      areaname: areaname,
      zipcode: zipcode,
    );
  }

// ignore: unused_element
  AreaInfo fromJson(Map<String, Object> json) {
    return AreaInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AreaInfo = _$AreaInfoTearOff();

/// @nodoc
mixin _$AreaInfo {
  @JsonKey(name: 'state')
  String get state;
  @JsonKey(name: 'district')
  String get district;
  @JsonKey(name: 'areaname')
  String get areaname;
  @JsonKey(name: 'zipcode')
  int get zipcode;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AreaInfoCopyWith<AreaInfo> get copyWith;
}

/// @nodoc
abstract class $AreaInfoCopyWith<$Res> {
  factory $AreaInfoCopyWith(AreaInfo value, $Res Function(AreaInfo) then) =
      _$AreaInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'areaname') String areaname,
      @JsonKey(name: 'zipcode') int zipcode});
}

/// @nodoc
class _$AreaInfoCopyWithImpl<$Res> implements $AreaInfoCopyWith<$Res> {
  _$AreaInfoCopyWithImpl(this._value, this._then);

  final AreaInfo _value;
  // ignore: unused_field
  final $Res Function(AreaInfo) _then;

  @override
  $Res call({
    Object state = freezed,
    Object district = freezed,
    Object areaname = freezed,
    Object zipcode = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed ? _value.state : state as String,
      district: district == freezed ? _value.district : district as String,
      areaname: areaname == freezed ? _value.areaname : areaname as String,
      zipcode: zipcode == freezed ? _value.zipcode : zipcode as int,
    ));
  }
}

/// @nodoc
abstract class _$AreaInfoCopyWith<$Res> implements $AreaInfoCopyWith<$Res> {
  factory _$AreaInfoCopyWith(_AreaInfo value, $Res Function(_AreaInfo) then) =
      __$AreaInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'areaname') String areaname,
      @JsonKey(name: 'zipcode') int zipcode});
}

/// @nodoc
class __$AreaInfoCopyWithImpl<$Res> extends _$AreaInfoCopyWithImpl<$Res>
    implements _$AreaInfoCopyWith<$Res> {
  __$AreaInfoCopyWithImpl(_AreaInfo _value, $Res Function(_AreaInfo) _then)
      : super(_value, (v) => _then(v as _AreaInfo));

  @override
  _AreaInfo get _value => super._value as _AreaInfo;

  @override
  $Res call({
    Object state = freezed,
    Object district = freezed,
    Object areaname = freezed,
    Object zipcode = freezed,
  }) {
    return _then(_AreaInfo(
      state: state == freezed ? _value.state : state as String,
      district: district == freezed ? _value.district : district as String,
      areaname: areaname == freezed ? _value.areaname : areaname as String,
      zipcode: zipcode == freezed ? _value.zipcode : zipcode as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AreaInfo implements _AreaInfo {
  _$_AreaInfo(
      {@JsonKey(name: 'state') this.state,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'areaname') this.areaname,
      @JsonKey(name: 'zipcode') this.zipcode});

  factory _$_AreaInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_AreaInfoFromJson(json);

  @override
  @JsonKey(name: 'state')
  final String state;
  @override
  @JsonKey(name: 'district')
  final String district;
  @override
  @JsonKey(name: 'areaname')
  final String areaname;
  @override
  @JsonKey(name: 'zipcode')
  final int zipcode;

  @override
  String toString() {
    return 'AreaInfo(state: $state, district: $district, areaname: $areaname, zipcode: $zipcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AreaInfo &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.areaname, areaname) ||
                const DeepCollectionEquality()
                    .equals(other.areaname, areaname)) &&
            (identical(other.zipcode, zipcode) ||
                const DeepCollectionEquality().equals(other.zipcode, zipcode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(areaname) ^
      const DeepCollectionEquality().hash(zipcode);

  @JsonKey(ignore: true)
  @override
  _$AreaInfoCopyWith<_AreaInfo> get copyWith =>
      __$AreaInfoCopyWithImpl<_AreaInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AreaInfoToJson(this);
  }
}

abstract class _AreaInfo implements AreaInfo {
  factory _AreaInfo(
      {@JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'areaname') String areaname,
      @JsonKey(name: 'zipcode') int zipcode}) = _$_AreaInfo;

  factory _AreaInfo.fromJson(Map<String, dynamic> json) = _$_AreaInfo.fromJson;

  @override
  @JsonKey(name: 'state')
  String get state;
  @override
  @JsonKey(name: 'district')
  String get district;
  @override
  @JsonKey(name: 'areaname')
  String get areaname;
  @override
  @JsonKey(name: 'zipcode')
  int get zipcode;
  @override
  @JsonKey(ignore: true)
  _$AreaInfoCopyWith<_AreaInfo> get copyWith;
}

Categoryinfo _$CategoryinfoFromJson(Map<String, dynamic> json) {
  return _Categoryinfo.fromJson(json);
}

/// @nodoc
class _$CategoryinfoTearOff {
  const _$CategoryinfoTearOff();

// ignore: unused_element
  _Categoryinfo call(
      {@JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'pricerange')
          List<int> pricerange,
      @JsonKey(name: 'priceareadependent')
          bool priceareadependent,
      @JsonKey(name: 'iconpath')
          String iconpath,
      @JsonKey(name: 'imagepath')
          String imagepath,
      @JsonKey(name: 'dynamicpropertiesidentifier')
          String dynamicpropertiesidentifier,
      @JsonKey(name: 'childcategory')
          List<Categoryinfo> childcategory}) {
    return _Categoryinfo(
      category: category,
      pricerange: pricerange,
      priceareadependent: priceareadependent,
      iconpath: iconpath,
      imagepath: imagepath,
      dynamicpropertiesidentifier: dynamicpropertiesidentifier,
      childcategory: childcategory,
    );
  }

// ignore: unused_element
  Categoryinfo fromJson(Map<String, Object> json) {
    return Categoryinfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Categoryinfo = _$CategoryinfoTearOff();

/// @nodoc
mixin _$Categoryinfo {
  @JsonKey(name: 'category')
  String get category;
  @JsonKey(name: 'pricerange')
  List<int> get pricerange;
  @JsonKey(name: 'priceareadependent')
  bool get priceareadependent;
  @JsonKey(name: 'iconpath')
  String get iconpath;
  @JsonKey(name: 'imagepath')
  String get imagepath;
  @JsonKey(name: 'dynamicpropertiesidentifier')
  String get dynamicpropertiesidentifier;
  @JsonKey(name: 'childcategory')
  List<Categoryinfo> get childcategory;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CategoryinfoCopyWith<Categoryinfo> get copyWith;
}

/// @nodoc
abstract class $CategoryinfoCopyWith<$Res> {
  factory $CategoryinfoCopyWith(
          Categoryinfo value, $Res Function(Categoryinfo) then) =
      _$CategoryinfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'pricerange')
          List<int> pricerange,
      @JsonKey(name: 'priceareadependent')
          bool priceareadependent,
      @JsonKey(name: 'iconpath')
          String iconpath,
      @JsonKey(name: 'imagepath')
          String imagepath,
      @JsonKey(name: 'dynamicpropertiesidentifier')
          String dynamicpropertiesidentifier,
      @JsonKey(name: 'childcategory')
          List<Categoryinfo> childcategory});
}

/// @nodoc
class _$CategoryinfoCopyWithImpl<$Res> implements $CategoryinfoCopyWith<$Res> {
  _$CategoryinfoCopyWithImpl(this._value, this._then);

  final Categoryinfo _value;
  // ignore: unused_field
  final $Res Function(Categoryinfo) _then;

  @override
  $Res call({
    Object category = freezed,
    Object pricerange = freezed,
    Object priceareadependent = freezed,
    Object iconpath = freezed,
    Object imagepath = freezed,
    Object dynamicpropertiesidentifier = freezed,
    Object childcategory = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed ? _value.category : category as String,
      pricerange:
          pricerange == freezed ? _value.pricerange : pricerange as List<int>,
      priceareadependent: priceareadependent == freezed
          ? _value.priceareadependent
          : priceareadependent as bool,
      iconpath: iconpath == freezed ? _value.iconpath : iconpath as String,
      imagepath: imagepath == freezed ? _value.imagepath : imagepath as String,
      dynamicpropertiesidentifier: dynamicpropertiesidentifier == freezed
          ? _value.dynamicpropertiesidentifier
          : dynamicpropertiesidentifier as String,
      childcategory: childcategory == freezed
          ? _value.childcategory
          : childcategory as List<Categoryinfo>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryinfoCopyWith<$Res>
    implements $CategoryinfoCopyWith<$Res> {
  factory _$CategoryinfoCopyWith(
          _Categoryinfo value, $Res Function(_Categoryinfo) then) =
      __$CategoryinfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'pricerange')
          List<int> pricerange,
      @JsonKey(name: 'priceareadependent')
          bool priceareadependent,
      @JsonKey(name: 'iconpath')
          String iconpath,
      @JsonKey(name: 'imagepath')
          String imagepath,
      @JsonKey(name: 'dynamicpropertiesidentifier')
          String dynamicpropertiesidentifier,
      @JsonKey(name: 'childcategory')
          List<Categoryinfo> childcategory});
}

/// @nodoc
class __$CategoryinfoCopyWithImpl<$Res> extends _$CategoryinfoCopyWithImpl<$Res>
    implements _$CategoryinfoCopyWith<$Res> {
  __$CategoryinfoCopyWithImpl(
      _Categoryinfo _value, $Res Function(_Categoryinfo) _then)
      : super(_value, (v) => _then(v as _Categoryinfo));

  @override
  _Categoryinfo get _value => super._value as _Categoryinfo;

  @override
  $Res call({
    Object category = freezed,
    Object pricerange = freezed,
    Object priceareadependent = freezed,
    Object iconpath = freezed,
    Object imagepath = freezed,
    Object dynamicpropertiesidentifier = freezed,
    Object childcategory = freezed,
  }) {
    return _then(_Categoryinfo(
      category: category == freezed ? _value.category : category as String,
      pricerange:
          pricerange == freezed ? _value.pricerange : pricerange as List<int>,
      priceareadependent: priceareadependent == freezed
          ? _value.priceareadependent
          : priceareadependent as bool,
      iconpath: iconpath == freezed ? _value.iconpath : iconpath as String,
      imagepath: imagepath == freezed ? _value.imagepath : imagepath as String,
      dynamicpropertiesidentifier: dynamicpropertiesidentifier == freezed
          ? _value.dynamicpropertiesidentifier
          : dynamicpropertiesidentifier as String,
      childcategory: childcategory == freezed
          ? _value.childcategory
          : childcategory as List<Categoryinfo>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Categoryinfo implements _Categoryinfo {
  _$_Categoryinfo(
      {@JsonKey(name: 'category')
          this.category,
      @JsonKey(name: 'pricerange')
          this.pricerange,
      @JsonKey(name: 'priceareadependent')
          this.priceareadependent,
      @JsonKey(name: 'iconpath')
          this.iconpath,
      @JsonKey(name: 'imagepath')
          this.imagepath,
      @JsonKey(name: 'dynamicpropertiesidentifier')
          this.dynamicpropertiesidentifier,
      @JsonKey(name: 'childcategory')
          this.childcategory});

  factory _$_Categoryinfo.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryinfoFromJson(json);

  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'pricerange')
  final List<int> pricerange;
  @override
  @JsonKey(name: 'priceareadependent')
  final bool priceareadependent;
  @override
  @JsonKey(name: 'iconpath')
  final String iconpath;
  @override
  @JsonKey(name: 'imagepath')
  final String imagepath;
  @override
  @JsonKey(name: 'dynamicpropertiesidentifier')
  final String dynamicpropertiesidentifier;
  @override
  @JsonKey(name: 'childcategory')
  final List<Categoryinfo> childcategory;

  @override
  String toString() {
    return 'Categoryinfo(category: $category, pricerange: $pricerange, priceareadependent: $priceareadependent, iconpath: $iconpath, imagepath: $imagepath, dynamicpropertiesidentifier: $dynamicpropertiesidentifier, childcategory: $childcategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Categoryinfo &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.pricerange, pricerange) ||
                const DeepCollectionEquality()
                    .equals(other.pricerange, pricerange)) &&
            (identical(other.priceareadependent, priceareadependent) ||
                const DeepCollectionEquality()
                    .equals(other.priceareadependent, priceareadependent)) &&
            (identical(other.iconpath, iconpath) ||
                const DeepCollectionEquality()
                    .equals(other.iconpath, iconpath)) &&
            (identical(other.imagepath, imagepath) ||
                const DeepCollectionEquality()
                    .equals(other.imagepath, imagepath)) &&
            (identical(other.dynamicpropertiesidentifier,
                    dynamicpropertiesidentifier) ||
                const DeepCollectionEquality().equals(
                    other.dynamicpropertiesidentifier,
                    dynamicpropertiesidentifier)) &&
            (identical(other.childcategory, childcategory) ||
                const DeepCollectionEquality()
                    .equals(other.childcategory, childcategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(pricerange) ^
      const DeepCollectionEquality().hash(priceareadependent) ^
      const DeepCollectionEquality().hash(iconpath) ^
      const DeepCollectionEquality().hash(imagepath) ^
      const DeepCollectionEquality().hash(dynamicpropertiesidentifier) ^
      const DeepCollectionEquality().hash(childcategory);

  @JsonKey(ignore: true)
  @override
  _$CategoryinfoCopyWith<_Categoryinfo> get copyWith =>
      __$CategoryinfoCopyWithImpl<_Categoryinfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryinfoToJson(this);
  }
}

abstract class _Categoryinfo implements Categoryinfo {
  factory _Categoryinfo(
      {@JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'pricerange')
          List<int> pricerange,
      @JsonKey(name: 'priceareadependent')
          bool priceareadependent,
      @JsonKey(name: 'iconpath')
          String iconpath,
      @JsonKey(name: 'imagepath')
          String imagepath,
      @JsonKey(name: 'dynamicpropertiesidentifier')
          String dynamicpropertiesidentifier,
      @JsonKey(name: 'childcategory')
          List<Categoryinfo> childcategory}) = _$_Categoryinfo;

  factory _Categoryinfo.fromJson(Map<String, dynamic> json) =
      _$_Categoryinfo.fromJson;

  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'pricerange')
  List<int> get pricerange;
  @override
  @JsonKey(name: 'priceareadependent')
  bool get priceareadependent;
  @override
  @JsonKey(name: 'iconpath')
  String get iconpath;
  @override
  @JsonKey(name: 'imagepath')
  String get imagepath;
  @override
  @JsonKey(name: 'dynamicpropertiesidentifier')
  String get dynamicpropertiesidentifier;
  @override
  @JsonKey(name: 'childcategory')
  List<Categoryinfo> get childcategory;
  @override
  @JsonKey(ignore: true)
  _$CategoryinfoCopyWith<_Categoryinfo> get copyWith;
}

productinorder _$productinorderFromJson(Map<String, dynamic> json) {
  return _productinorder.fromJson(json);
}

/// @nodoc
class _$productinorderTearOff {
  const _$productinorderTearOff();

// ignore: unused_element
  _productinorder call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'itemid') String itemid,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'unitprice') String unitprice,
      @JsonKey(name: 'qty') double qty,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'taxid') String taxid,
      @JsonKey(name: 'totalprice') double totalprice}) {
    return _productinorder(
      id: id,
      productid: productid,
      itemid: itemid,
      tileimage: tileimage,
      title: title,
      unit: unit,
      unitprice: unitprice,
      qty: qty,
      price: price,
      discountedprice: discountedprice,
      taxid: taxid,
      totalprice: totalprice,
    );
  }

// ignore: unused_element
  productinorder fromJson(Map<String, Object> json) {
    return productinorder.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $productinorder = _$productinorderTearOff();

/// @nodoc
mixin _$productinorder {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'productid')
  String get productid;
  @JsonKey(name: 'itemid')
  String get itemid;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'unit')
  String get unit;
  @JsonKey(name: 'unitprice')
  String get unitprice;
  @JsonKey(name: 'qty')
  double get qty;
  @JsonKey(name: 'price')
  double get price;
  @JsonKey(name: 'discountedprice')
  double get discountedprice;
  @JsonKey(name: 'taxid')
  String get taxid;
  @JsonKey(name: 'totalprice')
  double get totalprice;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $productinorderCopyWith<productinorder> get copyWith;
}

/// @nodoc
abstract class $productinorderCopyWith<$Res> {
  factory $productinorderCopyWith(
          productinorder value, $Res Function(productinorder) then) =
      _$productinorderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'itemid') String itemid,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'unitprice') String unitprice,
      @JsonKey(name: 'qty') double qty,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'taxid') String taxid,
      @JsonKey(name: 'totalprice') double totalprice});
}

/// @nodoc
class _$productinorderCopyWithImpl<$Res>
    implements $productinorderCopyWith<$Res> {
  _$productinorderCopyWithImpl(this._value, this._then);

  final productinorder _value;
  // ignore: unused_field
  final $Res Function(productinorder) _then;

  @override
  $Res call({
    Object id = freezed,
    Object productid = freezed,
    Object itemid = freezed,
    Object tileimage = freezed,
    Object title = freezed,
    Object unit = freezed,
    Object unitprice = freezed,
    Object qty = freezed,
    Object price = freezed,
    Object discountedprice = freezed,
    Object taxid = freezed,
    Object totalprice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      productid: productid == freezed ? _value.productid : productid as String,
      itemid: itemid == freezed ? _value.itemid : itemid as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      title: title == freezed ? _value.title : title as String,
      unit: unit == freezed ? _value.unit : unit as String,
      unitprice: unitprice == freezed ? _value.unitprice : unitprice as String,
      qty: qty == freezed ? _value.qty : qty as double,
      price: price == freezed ? _value.price : price as double,
      discountedprice: discountedprice == freezed
          ? _value.discountedprice
          : discountedprice as double,
      taxid: taxid == freezed ? _value.taxid : taxid as String,
      totalprice:
          totalprice == freezed ? _value.totalprice : totalprice as double,
    ));
  }
}

/// @nodoc
abstract class _$productinorderCopyWith<$Res>
    implements $productinorderCopyWith<$Res> {
  factory _$productinorderCopyWith(
          _productinorder value, $Res Function(_productinorder) then) =
      __$productinorderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'itemid') String itemid,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'unitprice') String unitprice,
      @JsonKey(name: 'qty') double qty,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'taxid') String taxid,
      @JsonKey(name: 'totalprice') double totalprice});
}

/// @nodoc
class __$productinorderCopyWithImpl<$Res>
    extends _$productinorderCopyWithImpl<$Res>
    implements _$productinorderCopyWith<$Res> {
  __$productinorderCopyWithImpl(
      _productinorder _value, $Res Function(_productinorder) _then)
      : super(_value, (v) => _then(v as _productinorder));

  @override
  _productinorder get _value => super._value as _productinorder;

  @override
  $Res call({
    Object id = freezed,
    Object productid = freezed,
    Object itemid = freezed,
    Object tileimage = freezed,
    Object title = freezed,
    Object unit = freezed,
    Object unitprice = freezed,
    Object qty = freezed,
    Object price = freezed,
    Object discountedprice = freezed,
    Object taxid = freezed,
    Object totalprice = freezed,
  }) {
    return _then(_productinorder(
      id: id == freezed ? _value.id : id as String,
      productid: productid == freezed ? _value.productid : productid as String,
      itemid: itemid == freezed ? _value.itemid : itemid as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      title: title == freezed ? _value.title : title as String,
      unit: unit == freezed ? _value.unit : unit as String,
      unitprice: unitprice == freezed ? _value.unitprice : unitprice as String,
      qty: qty == freezed ? _value.qty : qty as double,
      price: price == freezed ? _value.price : price as double,
      discountedprice: discountedprice == freezed
          ? _value.discountedprice
          : discountedprice as double,
      taxid: taxid == freezed ? _value.taxid : taxid as String,
      totalprice:
          totalprice == freezed ? _value.totalprice : totalprice as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_productinorder implements _productinorder {
  _$_productinorder(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'productid') this.productid,
      @JsonKey(name: 'itemid') this.itemid,
      @JsonKey(name: 'tileimage') this.tileimage,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'unit') this.unit,
      @JsonKey(name: 'unitprice') this.unitprice,
      @JsonKey(name: 'qty') this.qty,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'discountedprice') this.discountedprice,
      @JsonKey(name: 'taxid') this.taxid,
      @JsonKey(name: 'totalprice') this.totalprice});

  factory _$_productinorder.fromJson(Map<String, dynamic> json) =>
      _$_$_productinorderFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'productid')
  final String productid;
  @override
  @JsonKey(name: 'itemid')
  final String itemid;
  @override
  @JsonKey(name: 'tileimage')
  final String tileimage;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'unit')
  final String unit;
  @override
  @JsonKey(name: 'unitprice')
  final String unitprice;
  @override
  @JsonKey(name: 'qty')
  final double qty;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'discountedprice')
  final double discountedprice;
  @override
  @JsonKey(name: 'taxid')
  final String taxid;
  @override
  @JsonKey(name: 'totalprice')
  final double totalprice;

  @override
  String toString() {
    return 'productinorder(id: $id, productid: $productid, itemid: $itemid, tileimage: $tileimage, title: $title, unit: $unit, unitprice: $unitprice, qty: $qty, price: $price, discountedprice: $discountedprice, taxid: $taxid, totalprice: $totalprice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _productinorder &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.productid, productid) ||
                const DeepCollectionEquality()
                    .equals(other.productid, productid)) &&
            (identical(other.itemid, itemid) ||
                const DeepCollectionEquality().equals(other.itemid, itemid)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.unitprice, unitprice) ||
                const DeepCollectionEquality()
                    .equals(other.unitprice, unitprice)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discountedprice, discountedprice) ||
                const DeepCollectionEquality()
                    .equals(other.discountedprice, discountedprice)) &&
            (identical(other.taxid, taxid) ||
                const DeepCollectionEquality().equals(other.taxid, taxid)) &&
            (identical(other.totalprice, totalprice) ||
                const DeepCollectionEquality()
                    .equals(other.totalprice, totalprice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productid) ^
      const DeepCollectionEquality().hash(itemid) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(unitprice) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discountedprice) ^
      const DeepCollectionEquality().hash(taxid) ^
      const DeepCollectionEquality().hash(totalprice);

  @JsonKey(ignore: true)
  @override
  _$productinorderCopyWith<_productinorder> get copyWith =>
      __$productinorderCopyWithImpl<_productinorder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_productinorderToJson(this);
  }
}

abstract class _productinorder implements productinorder {
  factory _productinorder(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'itemid') String itemid,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'unitprice') String unitprice,
      @JsonKey(name: 'qty') double qty,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'taxid') String taxid,
      @JsonKey(name: 'totalprice') double totalprice}) = _$_productinorder;

  factory _productinorder.fromJson(Map<String, dynamic> json) =
      _$_productinorder.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'productid')
  String get productid;
  @override
  @JsonKey(name: 'itemid')
  String get itemid;
  @override
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'unit')
  String get unit;
  @override
  @JsonKey(name: 'unitprice')
  String get unitprice;
  @override
  @JsonKey(name: 'qty')
  double get qty;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'discountedprice')
  double get discountedprice;
  @override
  @JsonKey(name: 'taxid')
  String get taxid;
  @override
  @JsonKey(name: 'totalprice')
  double get totalprice;
  @override
  @JsonKey(ignore: true)
  _$productinorderCopyWith<_productinorder> get copyWith;
}

orderinfomodel _$orderinfomodelFromJson(Map<String, dynamic> json) {
  return _orderinfomodel.fromJson(json);
}

/// @nodoc
class _$orderinfomodelTearOff {
  const _$orderinfomodelTearOff();

// ignore: unused_element
  _orderinfomodel call(
      {@JsonKey(name: 'custaddress')
          Addressmodel custaddress,
      @JsonKey(name: 'customerid')
          String customerid,
      @JsonKey(name: 'custuserid')
          String custuserid,
      @JsonKey(name: 'custname')
          String custname,
      @JsonKey(name: 'advanceamount')
          double advanceamount,
      @JsonKey(name: 'productlist')
          List<productinorder> productlist,
      @JsonKey(name: 'totaltax')
          double totaltax,
      @JsonKey(name: 'totalcalculatedprice')
          double totalcalculatedprice,
      @JsonKey(name: 'extradiscount')
          double extradiscount,
      @JsonKey(name: 'askedprice')
          double askedprice,
      @JsonKey(name: 'orderdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime orderdate,
      @JsonKey(name: 'orderstate')
          String orderstate,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'custphonenum')
          String custphonenum,
      @JsonKey(name: 'id')
          String id}) {
    return _orderinfomodel(
      custaddress: custaddress,
      customerid: customerid,
      custuserid: custuserid,
      custname: custname,
      advanceamount: advanceamount,
      productlist: productlist,
      totaltax: totaltax,
      totalcalculatedprice: totalcalculatedprice,
      extradiscount: extradiscount,
      askedprice: askedprice,
      orderdate: orderdate,
      orderstate: orderstate,
      serviceproviderid: serviceproviderid,
      custphonenum: custphonenum,
      id: id,
    );
  }

// ignore: unused_element
  orderinfomodel fromJson(Map<String, Object> json) {
    return orderinfomodel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $orderinfomodel = _$orderinfomodelTearOff();

/// @nodoc
mixin _$orderinfomodel {
  @JsonKey(name: 'custaddress')
  Addressmodel get custaddress;
  @JsonKey(name: 'customerid')
  String get customerid;
  @JsonKey(name: 'custuserid')
  String get custuserid;
  @JsonKey(name: 'custname')
  String get custname;
  @JsonKey(name: 'advanceamount')
  double get advanceamount;
  @JsonKey(name: 'productlist')
  List<productinorder> get productlist;
  @JsonKey(name: 'totaltax')
  double get totaltax;
  @JsonKey(name: 'totalcalculatedprice')
  double get totalcalculatedprice;
  @JsonKey(name: 'extradiscount')
  double get extradiscount;
  @JsonKey(name: 'askedprice')
  double get askedprice;
  @JsonKey(
      name: 'orderdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get orderdate;
  @JsonKey(name: 'orderstate')
  String get orderstate;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'custphonenum')
  String get custphonenum;
  @JsonKey(name: 'id')
  String get id;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $orderinfomodelCopyWith<orderinfomodel> get copyWith;
}

/// @nodoc
abstract class $orderinfomodelCopyWith<$Res> {
  factory $orderinfomodelCopyWith(
          orderinfomodel value, $Res Function(orderinfomodel) then) =
      _$orderinfomodelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'custaddress')
          Addressmodel custaddress,
      @JsonKey(name: 'customerid')
          String customerid,
      @JsonKey(name: 'custuserid')
          String custuserid,
      @JsonKey(name: 'custname')
          String custname,
      @JsonKey(name: 'advanceamount')
          double advanceamount,
      @JsonKey(name: 'productlist')
          List<productinorder> productlist,
      @JsonKey(name: 'totaltax')
          double totaltax,
      @JsonKey(name: 'totalcalculatedprice')
          double totalcalculatedprice,
      @JsonKey(name: 'extradiscount')
          double extradiscount,
      @JsonKey(name: 'askedprice')
          double askedprice,
      @JsonKey(name: 'orderdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime orderdate,
      @JsonKey(name: 'orderstate')
          String orderstate,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'custphonenum')
          String custphonenum,
      @JsonKey(name: 'id')
          String id});

  $AddressmodelCopyWith<$Res> get custaddress;
}

/// @nodoc
class _$orderinfomodelCopyWithImpl<$Res>
    implements $orderinfomodelCopyWith<$Res> {
  _$orderinfomodelCopyWithImpl(this._value, this._then);

  final orderinfomodel _value;
  // ignore: unused_field
  final $Res Function(orderinfomodel) _then;

  @override
  $Res call({
    Object custaddress = freezed,
    Object customerid = freezed,
    Object custuserid = freezed,
    Object custname = freezed,
    Object advanceamount = freezed,
    Object productlist = freezed,
    Object totaltax = freezed,
    Object totalcalculatedprice = freezed,
    Object extradiscount = freezed,
    Object askedprice = freezed,
    Object orderdate = freezed,
    Object orderstate = freezed,
    Object serviceproviderid = freezed,
    Object custphonenum = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      custaddress: custaddress == freezed
          ? _value.custaddress
          : custaddress as Addressmodel,
      customerid:
          customerid == freezed ? _value.customerid : customerid as String,
      custuserid:
          custuserid == freezed ? _value.custuserid : custuserid as String,
      custname: custname == freezed ? _value.custname : custname as String,
      advanceamount: advanceamount == freezed
          ? _value.advanceamount
          : advanceamount as double,
      productlist: productlist == freezed
          ? _value.productlist
          : productlist as List<productinorder>,
      totaltax: totaltax == freezed ? _value.totaltax : totaltax as double,
      totalcalculatedprice: totalcalculatedprice == freezed
          ? _value.totalcalculatedprice
          : totalcalculatedprice as double,
      extradiscount: extradiscount == freezed
          ? _value.extradiscount
          : extradiscount as double,
      askedprice:
          askedprice == freezed ? _value.askedprice : askedprice as double,
      orderdate:
          orderdate == freezed ? _value.orderdate : orderdate as DateTime,
      orderstate:
          orderstate == freezed ? _value.orderstate : orderstate as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      custphonenum: custphonenum == freezed
          ? _value.custphonenum
          : custphonenum as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }

  @override
  $AddressmodelCopyWith<$Res> get custaddress {
    if (_value.custaddress == null) {
      return null;
    }
    return $AddressmodelCopyWith<$Res>(_value.custaddress, (value) {
      return _then(_value.copyWith(custaddress: value));
    });
  }
}

/// @nodoc
abstract class _$orderinfomodelCopyWith<$Res>
    implements $orderinfomodelCopyWith<$Res> {
  factory _$orderinfomodelCopyWith(
          _orderinfomodel value, $Res Function(_orderinfomodel) then) =
      __$orderinfomodelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'custaddress')
          Addressmodel custaddress,
      @JsonKey(name: 'customerid')
          String customerid,
      @JsonKey(name: 'custuserid')
          String custuserid,
      @JsonKey(name: 'custname')
          String custname,
      @JsonKey(name: 'advanceamount')
          double advanceamount,
      @JsonKey(name: 'productlist')
          List<productinorder> productlist,
      @JsonKey(name: 'totaltax')
          double totaltax,
      @JsonKey(name: 'totalcalculatedprice')
          double totalcalculatedprice,
      @JsonKey(name: 'extradiscount')
          double extradiscount,
      @JsonKey(name: 'askedprice')
          double askedprice,
      @JsonKey(name: 'orderdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime orderdate,
      @JsonKey(name: 'orderstate')
          String orderstate,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'custphonenum')
          String custphonenum,
      @JsonKey(name: 'id')
          String id});

  @override
  $AddressmodelCopyWith<$Res> get custaddress;
}

/// @nodoc
class __$orderinfomodelCopyWithImpl<$Res>
    extends _$orderinfomodelCopyWithImpl<$Res>
    implements _$orderinfomodelCopyWith<$Res> {
  __$orderinfomodelCopyWithImpl(
      _orderinfomodel _value, $Res Function(_orderinfomodel) _then)
      : super(_value, (v) => _then(v as _orderinfomodel));

  @override
  _orderinfomodel get _value => super._value as _orderinfomodel;

  @override
  $Res call({
    Object custaddress = freezed,
    Object customerid = freezed,
    Object custuserid = freezed,
    Object custname = freezed,
    Object advanceamount = freezed,
    Object productlist = freezed,
    Object totaltax = freezed,
    Object totalcalculatedprice = freezed,
    Object extradiscount = freezed,
    Object askedprice = freezed,
    Object orderdate = freezed,
    Object orderstate = freezed,
    Object serviceproviderid = freezed,
    Object custphonenum = freezed,
    Object id = freezed,
  }) {
    return _then(_orderinfomodel(
      custaddress: custaddress == freezed
          ? _value.custaddress
          : custaddress as Addressmodel,
      customerid:
          customerid == freezed ? _value.customerid : customerid as String,
      custuserid:
          custuserid == freezed ? _value.custuserid : custuserid as String,
      custname: custname == freezed ? _value.custname : custname as String,
      advanceamount: advanceamount == freezed
          ? _value.advanceamount
          : advanceamount as double,
      productlist: productlist == freezed
          ? _value.productlist
          : productlist as List<productinorder>,
      totaltax: totaltax == freezed ? _value.totaltax : totaltax as double,
      totalcalculatedprice: totalcalculatedprice == freezed
          ? _value.totalcalculatedprice
          : totalcalculatedprice as double,
      extradiscount: extradiscount == freezed
          ? _value.extradiscount
          : extradiscount as double,
      askedprice:
          askedprice == freezed ? _value.askedprice : askedprice as double,
      orderdate:
          orderdate == freezed ? _value.orderdate : orderdate as DateTime,
      orderstate:
          orderstate == freezed ? _value.orderstate : orderstate as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      custphonenum: custphonenum == freezed
          ? _value.custphonenum
          : custphonenum as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_orderinfomodel implements _orderinfomodel {
  _$_orderinfomodel(
      {@JsonKey(name: 'custaddress')
          this.custaddress,
      @JsonKey(name: 'customerid')
          this.customerid,
      @JsonKey(name: 'custuserid')
          this.custuserid,
      @JsonKey(name: 'custname')
          this.custname,
      @JsonKey(name: 'advanceamount')
          this.advanceamount,
      @JsonKey(name: 'productlist')
          this.productlist,
      @JsonKey(name: 'totaltax')
          this.totaltax,
      @JsonKey(name: 'totalcalculatedprice')
          this.totalcalculatedprice,
      @JsonKey(name: 'extradiscount')
          this.extradiscount,
      @JsonKey(name: 'askedprice')
          this.askedprice,
      @JsonKey(name: 'orderdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.orderdate,
      @JsonKey(name: 'orderstate')
          this.orderstate,
      @JsonKey(name: 'serviceproviderid')
          this.serviceproviderid,
      @JsonKey(name: 'custphonenum')
          this.custphonenum,
      @JsonKey(name: 'id')
          this.id});

  factory _$_orderinfomodel.fromJson(Map<String, dynamic> json) =>
      _$_$_orderinfomodelFromJson(json);

  @override
  @JsonKey(name: 'custaddress')
  final Addressmodel custaddress;
  @override
  @JsonKey(name: 'customerid')
  final String customerid;
  @override
  @JsonKey(name: 'custuserid')
  final String custuserid;
  @override
  @JsonKey(name: 'custname')
  final String custname;
  @override
  @JsonKey(name: 'advanceamount')
  final double advanceamount;
  @override
  @JsonKey(name: 'productlist')
  final List<productinorder> productlist;
  @override
  @JsonKey(name: 'totaltax')
  final double totaltax;
  @override
  @JsonKey(name: 'totalcalculatedprice')
  final double totalcalculatedprice;
  @override
  @JsonKey(name: 'extradiscount')
  final double extradiscount;
  @override
  @JsonKey(name: 'askedprice')
  final double askedprice;
  @override
  @JsonKey(
      name: 'orderdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime orderdate;
  @override
  @JsonKey(name: 'orderstate')
  final String orderstate;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'custphonenum')
  final String custphonenum;
  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'orderinfomodel(custaddress: $custaddress, customerid: $customerid, custuserid: $custuserid, custname: $custname, advanceamount: $advanceamount, productlist: $productlist, totaltax: $totaltax, totalcalculatedprice: $totalcalculatedprice, extradiscount: $extradiscount, askedprice: $askedprice, orderdate: $orderdate, orderstate: $orderstate, serviceproviderid: $serviceproviderid, custphonenum: $custphonenum, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _orderinfomodel &&
            (identical(other.custaddress, custaddress) ||
                const DeepCollectionEquality()
                    .equals(other.custaddress, custaddress)) &&
            (identical(other.customerid, customerid) ||
                const DeepCollectionEquality()
                    .equals(other.customerid, customerid)) &&
            (identical(other.custuserid, custuserid) ||
                const DeepCollectionEquality()
                    .equals(other.custuserid, custuserid)) &&
            (identical(other.custname, custname) ||
                const DeepCollectionEquality()
                    .equals(other.custname, custname)) &&
            (identical(other.advanceamount, advanceamount) ||
                const DeepCollectionEquality()
                    .equals(other.advanceamount, advanceamount)) &&
            (identical(other.productlist, productlist) ||
                const DeepCollectionEquality()
                    .equals(other.productlist, productlist)) &&
            (identical(other.totaltax, totaltax) ||
                const DeepCollectionEquality()
                    .equals(other.totaltax, totaltax)) &&
            (identical(other.totalcalculatedprice, totalcalculatedprice) ||
                const DeepCollectionEquality().equals(
                    other.totalcalculatedprice, totalcalculatedprice)) &&
            (identical(other.extradiscount, extradiscount) ||
                const DeepCollectionEquality()
                    .equals(other.extradiscount, extradiscount)) &&
            (identical(other.askedprice, askedprice) ||
                const DeepCollectionEquality()
                    .equals(other.askedprice, askedprice)) &&
            (identical(other.orderdate, orderdate) ||
                const DeepCollectionEquality()
                    .equals(other.orderdate, orderdate)) &&
            (identical(other.orderstate, orderstate) ||
                const DeepCollectionEquality()
                    .equals(other.orderstate, orderstate)) &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)) &&
            (identical(other.custphonenum, custphonenum) ||
                const DeepCollectionEquality()
                    .equals(other.custphonenum, custphonenum)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(custaddress) ^
      const DeepCollectionEquality().hash(customerid) ^
      const DeepCollectionEquality().hash(custuserid) ^
      const DeepCollectionEquality().hash(custname) ^
      const DeepCollectionEquality().hash(advanceamount) ^
      const DeepCollectionEquality().hash(productlist) ^
      const DeepCollectionEquality().hash(totaltax) ^
      const DeepCollectionEquality().hash(totalcalculatedprice) ^
      const DeepCollectionEquality().hash(extradiscount) ^
      const DeepCollectionEquality().hash(askedprice) ^
      const DeepCollectionEquality().hash(orderdate) ^
      const DeepCollectionEquality().hash(orderstate) ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(custphonenum) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$orderinfomodelCopyWith<_orderinfomodel> get copyWith =>
      __$orderinfomodelCopyWithImpl<_orderinfomodel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_orderinfomodelToJson(this);
  }
}

abstract class _orderinfomodel implements orderinfomodel {
  factory _orderinfomodel(
      {@JsonKey(name: 'custaddress')
          Addressmodel custaddress,
      @JsonKey(name: 'customerid')
          String customerid,
      @JsonKey(name: 'custuserid')
          String custuserid,
      @JsonKey(name: 'custname')
          String custname,
      @JsonKey(name: 'advanceamount')
          double advanceamount,
      @JsonKey(name: 'productlist')
          List<productinorder> productlist,
      @JsonKey(name: 'totaltax')
          double totaltax,
      @JsonKey(name: 'totalcalculatedprice')
          double totalcalculatedprice,
      @JsonKey(name: 'extradiscount')
          double extradiscount,
      @JsonKey(name: 'askedprice')
          double askedprice,
      @JsonKey(name: 'orderdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime orderdate,
      @JsonKey(name: 'orderstate')
          String orderstate,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'custphonenum')
          String custphonenum,
      @JsonKey(name: 'id')
          String id}) = _$_orderinfomodel;

  factory _orderinfomodel.fromJson(Map<String, dynamic> json) =
      _$_orderinfomodel.fromJson;

  @override
  @JsonKey(name: 'custaddress')
  Addressmodel get custaddress;
  @override
  @JsonKey(name: 'customerid')
  String get customerid;
  @override
  @JsonKey(name: 'custuserid')
  String get custuserid;
  @override
  @JsonKey(name: 'custname')
  String get custname;
  @override
  @JsonKey(name: 'advanceamount')
  double get advanceamount;
  @override
  @JsonKey(name: 'productlist')
  List<productinorder> get productlist;
  @override
  @JsonKey(name: 'totaltax')
  double get totaltax;
  @override
  @JsonKey(name: 'totalcalculatedprice')
  double get totalcalculatedprice;
  @override
  @JsonKey(name: 'extradiscount')
  double get extradiscount;
  @override
  @JsonKey(name: 'askedprice')
  double get askedprice;
  @override
  @JsonKey(
      name: 'orderdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get orderdate;
  @override
  @JsonKey(name: 'orderstate')
  String get orderstate;
  @override
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @override
  @JsonKey(name: 'custphonenum')
  String get custphonenum;
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$orderinfomodelCopyWith<_orderinfomodel> get copyWith;
}

ProductSuggestionData _$ProductSuggestionDataFromJson(
    Map<String, dynamic> json) {
  return _ProductSuggestionData.fromJson(json);
}

/// @nodoc
class _$ProductSuggestionDataTearOff {
  const _$ProductSuggestionDataTearOff();

// ignore: unused_element
  _ProductSuggestionData call(
      {@JsonKey(name: 'pid') String pid, @JsonKey(name: 'text') String text}) {
    return _ProductSuggestionData(
      pid: pid,
      text: text,
    );
  }

// ignore: unused_element
  ProductSuggestionData fromJson(Map<String, Object> json) {
    return ProductSuggestionData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductSuggestionData = _$ProductSuggestionDataTearOff();

/// @nodoc
mixin _$ProductSuggestionData {
  @JsonKey(name: 'pid')
  String get pid;
  @JsonKey(name: 'text')
  String get text;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductSuggestionDataCopyWith<ProductSuggestionData> get copyWith;
}

/// @nodoc
abstract class $ProductSuggestionDataCopyWith<$Res> {
  factory $ProductSuggestionDataCopyWith(ProductSuggestionData value,
          $Res Function(ProductSuggestionData) then) =
      _$ProductSuggestionDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'pid') String pid, @JsonKey(name: 'text') String text});
}

/// @nodoc
class _$ProductSuggestionDataCopyWithImpl<$Res>
    implements $ProductSuggestionDataCopyWith<$Res> {
  _$ProductSuggestionDataCopyWithImpl(this._value, this._then);

  final ProductSuggestionData _value;
  // ignore: unused_field
  final $Res Function(ProductSuggestionData) _then;

  @override
  $Res call({
    Object pid = freezed,
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      pid: pid == freezed ? _value.pid : pid as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductSuggestionDataCopyWith<$Res>
    implements $ProductSuggestionDataCopyWith<$Res> {
  factory _$ProductSuggestionDataCopyWith(_ProductSuggestionData value,
          $Res Function(_ProductSuggestionData) then) =
      __$ProductSuggestionDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'pid') String pid, @JsonKey(name: 'text') String text});
}

/// @nodoc
class __$ProductSuggestionDataCopyWithImpl<$Res>
    extends _$ProductSuggestionDataCopyWithImpl<$Res>
    implements _$ProductSuggestionDataCopyWith<$Res> {
  __$ProductSuggestionDataCopyWithImpl(_ProductSuggestionData _value,
      $Res Function(_ProductSuggestionData) _then)
      : super(_value, (v) => _then(v as _ProductSuggestionData));

  @override
  _ProductSuggestionData get _value => super._value as _ProductSuggestionData;

  @override
  $Res call({
    Object pid = freezed,
    Object text = freezed,
  }) {
    return _then(_ProductSuggestionData(
      pid: pid == freezed ? _value.pid : pid as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductSuggestionData implements _ProductSuggestionData {
  _$_ProductSuggestionData(
      {@JsonKey(name: 'pid') this.pid, @JsonKey(name: 'text') this.text});

  factory _$_ProductSuggestionData.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductSuggestionDataFromJson(json);

  @override
  @JsonKey(name: 'pid')
  final String pid;
  @override
  @JsonKey(name: 'text')
  final String text;

  @override
  String toString() {
    return 'ProductSuggestionData(pid: $pid, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductSuggestionData &&
            (identical(other.pid, pid) ||
                const DeepCollectionEquality().equals(other.pid, pid)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pid) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$ProductSuggestionDataCopyWith<_ProductSuggestionData> get copyWith =>
      __$ProductSuggestionDataCopyWithImpl<_ProductSuggestionData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductSuggestionDataToJson(this);
  }
}

abstract class _ProductSuggestionData implements ProductSuggestionData {
  factory _ProductSuggestionData(
      {@JsonKey(name: 'pid') String pid,
      @JsonKey(name: 'text') String text}) = _$_ProductSuggestionData;

  factory _ProductSuggestionData.fromJson(Map<String, dynamic> json) =
      _$_ProductSuggestionData.fromJson;

  @override
  @JsonKey(name: 'pid')
  String get pid;
  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(ignore: true)
  _$ProductSuggestionDataCopyWith<_ProductSuggestionData> get copyWith;
}

Sortfielddata _$SortfielddataFromJson(Map<String, dynamic> json) {
  return _Sortfielddata.fromJson(json);
}

/// @nodoc
class _$SortfielddataTearOff {
  const _$SortfielddataTearOff();

// ignore: unused_element
  _Sortfielddata call(
      {@JsonKey(name: 'fieldname') String fieldname,
      @JsonKey(name: 'desc') bool desc}) {
    return _Sortfielddata(
      fieldname: fieldname,
      desc: desc,
    );
  }

// ignore: unused_element
  Sortfielddata fromJson(Map<String, Object> json) {
    return Sortfielddata.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Sortfielddata = _$SortfielddataTearOff();

/// @nodoc
mixin _$Sortfielddata {
  @JsonKey(name: 'fieldname')
  String get fieldname;
  @JsonKey(name: 'desc')
  bool get desc;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SortfielddataCopyWith<Sortfielddata> get copyWith;
}

/// @nodoc
abstract class $SortfielddataCopyWith<$Res> {
  factory $SortfielddataCopyWith(
          Sortfielddata value, $Res Function(Sortfielddata) then) =
      _$SortfielddataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'fieldname') String fieldname,
      @JsonKey(name: 'desc') bool desc});
}

/// @nodoc
class _$SortfielddataCopyWithImpl<$Res>
    implements $SortfielddataCopyWith<$Res> {
  _$SortfielddataCopyWithImpl(this._value, this._then);

  final Sortfielddata _value;
  // ignore: unused_field
  final $Res Function(Sortfielddata) _then;

  @override
  $Res call({
    Object fieldname = freezed,
    Object desc = freezed,
  }) {
    return _then(_value.copyWith(
      fieldname: fieldname == freezed ? _value.fieldname : fieldname as String,
      desc: desc == freezed ? _value.desc : desc as bool,
    ));
  }
}

/// @nodoc
abstract class _$SortfielddataCopyWith<$Res>
    implements $SortfielddataCopyWith<$Res> {
  factory _$SortfielddataCopyWith(
          _Sortfielddata value, $Res Function(_Sortfielddata) then) =
      __$SortfielddataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'fieldname') String fieldname,
      @JsonKey(name: 'desc') bool desc});
}

/// @nodoc
class __$SortfielddataCopyWithImpl<$Res>
    extends _$SortfielddataCopyWithImpl<$Res>
    implements _$SortfielddataCopyWith<$Res> {
  __$SortfielddataCopyWithImpl(
      _Sortfielddata _value, $Res Function(_Sortfielddata) _then)
      : super(_value, (v) => _then(v as _Sortfielddata));

  @override
  _Sortfielddata get _value => super._value as _Sortfielddata;

  @override
  $Res call({
    Object fieldname = freezed,
    Object desc = freezed,
  }) {
    return _then(_Sortfielddata(
      fieldname: fieldname == freezed ? _value.fieldname : fieldname as String,
      desc: desc == freezed ? _value.desc : desc as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Sortfielddata implements _Sortfielddata {
  _$_Sortfielddata(
      {@JsonKey(name: 'fieldname') this.fieldname,
      @JsonKey(name: 'desc') this.desc});

  factory _$_Sortfielddata.fromJson(Map<String, dynamic> json) =>
      _$_$_SortfielddataFromJson(json);

  @override
  @JsonKey(name: 'fieldname')
  final String fieldname;
  @override
  @JsonKey(name: 'desc')
  final bool desc;

  @override
  String toString() {
    return 'Sortfielddata(fieldname: $fieldname, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sortfielddata &&
            (identical(other.fieldname, fieldname) ||
                const DeepCollectionEquality()
                    .equals(other.fieldname, fieldname)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fieldname) ^
      const DeepCollectionEquality().hash(desc);

  @JsonKey(ignore: true)
  @override
  _$SortfielddataCopyWith<_Sortfielddata> get copyWith =>
      __$SortfielddataCopyWithImpl<_Sortfielddata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SortfielddataToJson(this);
  }
}

abstract class _Sortfielddata implements Sortfielddata {
  factory _Sortfielddata(
      {@JsonKey(name: 'fieldname') String fieldname,
      @JsonKey(name: 'desc') bool desc}) = _$_Sortfielddata;

  factory _Sortfielddata.fromJson(Map<String, dynamic> json) =
      _$_Sortfielddata.fromJson;

  @override
  @JsonKey(name: 'fieldname')
  String get fieldname;
  @override
  @JsonKey(name: 'desc')
  bool get desc;
  @override
  @JsonKey(ignore: true)
  _$SortfielddataCopyWith<_Sortfielddata> get copyWith;
}

NumericFilterData _$NumericFilterDataFromJson(Map<String, dynamic> json) {
  return _NumericFilterData.fromJson(json);
}

/// @nodoc
class _$NumericFilterDataTearOff {
  const _$NumericFilterDataTearOff();

// ignore: unused_element
  _NumericFilterData call(
      {@JsonKey(name: 'fieldname') String fieldname,
      @JsonKey(name: 'minval') double minval,
      @JsonKey(name: 'maxval') double maxval}) {
    return _NumericFilterData(
      fieldname: fieldname,
      minval: minval,
      maxval: maxval,
    );
  }

// ignore: unused_element
  NumericFilterData fromJson(Map<String, Object> json) {
    return NumericFilterData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NumericFilterData = _$NumericFilterDataTearOff();

/// @nodoc
mixin _$NumericFilterData {
  @JsonKey(name: 'fieldname')
  String get fieldname;
  @JsonKey(name: 'minval')
  double get minval;
  @JsonKey(name: 'maxval')
  double get maxval;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NumericFilterDataCopyWith<NumericFilterData> get copyWith;
}

/// @nodoc
abstract class $NumericFilterDataCopyWith<$Res> {
  factory $NumericFilterDataCopyWith(
          NumericFilterData value, $Res Function(NumericFilterData) then) =
      _$NumericFilterDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'fieldname') String fieldname,
      @JsonKey(name: 'minval') double minval,
      @JsonKey(name: 'maxval') double maxval});
}

/// @nodoc
class _$NumericFilterDataCopyWithImpl<$Res>
    implements $NumericFilterDataCopyWith<$Res> {
  _$NumericFilterDataCopyWithImpl(this._value, this._then);

  final NumericFilterData _value;
  // ignore: unused_field
  final $Res Function(NumericFilterData) _then;

  @override
  $Res call({
    Object fieldname = freezed,
    Object minval = freezed,
    Object maxval = freezed,
  }) {
    return _then(_value.copyWith(
      fieldname: fieldname == freezed ? _value.fieldname : fieldname as String,
      minval: minval == freezed ? _value.minval : minval as double,
      maxval: maxval == freezed ? _value.maxval : maxval as double,
    ));
  }
}

/// @nodoc
abstract class _$NumericFilterDataCopyWith<$Res>
    implements $NumericFilterDataCopyWith<$Res> {
  factory _$NumericFilterDataCopyWith(
          _NumericFilterData value, $Res Function(_NumericFilterData) then) =
      __$NumericFilterDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'fieldname') String fieldname,
      @JsonKey(name: 'minval') double minval,
      @JsonKey(name: 'maxval') double maxval});
}

/// @nodoc
class __$NumericFilterDataCopyWithImpl<$Res>
    extends _$NumericFilterDataCopyWithImpl<$Res>
    implements _$NumericFilterDataCopyWith<$Res> {
  __$NumericFilterDataCopyWithImpl(
      _NumericFilterData _value, $Res Function(_NumericFilterData) _then)
      : super(_value, (v) => _then(v as _NumericFilterData));

  @override
  _NumericFilterData get _value => super._value as _NumericFilterData;

  @override
  $Res call({
    Object fieldname = freezed,
    Object minval = freezed,
    Object maxval = freezed,
  }) {
    return _then(_NumericFilterData(
      fieldname: fieldname == freezed ? _value.fieldname : fieldname as String,
      minval: minval == freezed ? _value.minval : minval as double,
      maxval: maxval == freezed ? _value.maxval : maxval as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NumericFilterData implements _NumericFilterData {
  _$_NumericFilterData(
      {@JsonKey(name: 'fieldname') this.fieldname,
      @JsonKey(name: 'minval') this.minval,
      @JsonKey(name: 'maxval') this.maxval});

  factory _$_NumericFilterData.fromJson(Map<String, dynamic> json) =>
      _$_$_NumericFilterDataFromJson(json);

  @override
  @JsonKey(name: 'fieldname')
  final String fieldname;
  @override
  @JsonKey(name: 'minval')
  final double minval;
  @override
  @JsonKey(name: 'maxval')
  final double maxval;

  @override
  String toString() {
    return 'NumericFilterData(fieldname: $fieldname, minval: $minval, maxval: $maxval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NumericFilterData &&
            (identical(other.fieldname, fieldname) ||
                const DeepCollectionEquality()
                    .equals(other.fieldname, fieldname)) &&
            (identical(other.minval, minval) ||
                const DeepCollectionEquality().equals(other.minval, minval)) &&
            (identical(other.maxval, maxval) ||
                const DeepCollectionEquality().equals(other.maxval, maxval)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fieldname) ^
      const DeepCollectionEquality().hash(minval) ^
      const DeepCollectionEquality().hash(maxval);

  @JsonKey(ignore: true)
  @override
  _$NumericFilterDataCopyWith<_NumericFilterData> get copyWith =>
      __$NumericFilterDataCopyWithImpl<_NumericFilterData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NumericFilterDataToJson(this);
  }
}

abstract class _NumericFilterData implements NumericFilterData {
  factory _NumericFilterData(
      {@JsonKey(name: 'fieldname') String fieldname,
      @JsonKey(name: 'minval') double minval,
      @JsonKey(name: 'maxval') double maxval}) = _$_NumericFilterData;

  factory _NumericFilterData.fromJson(Map<String, dynamic> json) =
      _$_NumericFilterData.fromJson;

  @override
  @JsonKey(name: 'fieldname')
  String get fieldname;
  @override
  @JsonKey(name: 'minval')
  double get minval;
  @override
  @JsonKey(name: 'maxval')
  double get maxval;
  @override
  @JsonKey(ignore: true)
  _$NumericFilterDataCopyWith<_NumericFilterData> get copyWith;
}

FacetParaFilter _$FacetParaFilterFromJson(Map<String, dynamic> json) {
  return _FacetParaFilter.fromJson(json);
}

/// @nodoc
class _$FacetParaFilterTearOff {
  const _$FacetParaFilterTearOff();

// ignore: unused_element
  _FacetParaFilter call(
      {@JsonKey(name: 'paraname') String paraname,
      @JsonKey(name: 'fieldvalues') List<String> fieldvalues}) {
    return _FacetParaFilter(
      paraname: paraname,
      fieldvalues: fieldvalues,
    );
  }

// ignore: unused_element
  FacetParaFilter fromJson(Map<String, Object> json) {
    return FacetParaFilter.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FacetParaFilter = _$FacetParaFilterTearOff();

/// @nodoc
mixin _$FacetParaFilter {
  @JsonKey(name: 'paraname')
  String get paraname;
  @JsonKey(name: 'fieldvalues')
  List<String> get fieldvalues;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FacetParaFilterCopyWith<FacetParaFilter> get copyWith;
}

/// @nodoc
abstract class $FacetParaFilterCopyWith<$Res> {
  factory $FacetParaFilterCopyWith(
          FacetParaFilter value, $Res Function(FacetParaFilter) then) =
      _$FacetParaFilterCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'paraname') String paraname,
      @JsonKey(name: 'fieldvalues') List<String> fieldvalues});
}

/// @nodoc
class _$FacetParaFilterCopyWithImpl<$Res>
    implements $FacetParaFilterCopyWith<$Res> {
  _$FacetParaFilterCopyWithImpl(this._value, this._then);

  final FacetParaFilter _value;
  // ignore: unused_field
  final $Res Function(FacetParaFilter) _then;

  @override
  $Res call({
    Object paraname = freezed,
    Object fieldvalues = freezed,
  }) {
    return _then(_value.copyWith(
      paraname: paraname == freezed ? _value.paraname : paraname as String,
      fieldvalues: fieldvalues == freezed
          ? _value.fieldvalues
          : fieldvalues as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FacetParaFilterCopyWith<$Res>
    implements $FacetParaFilterCopyWith<$Res> {
  factory _$FacetParaFilterCopyWith(
          _FacetParaFilter value, $Res Function(_FacetParaFilter) then) =
      __$FacetParaFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'paraname') String paraname,
      @JsonKey(name: 'fieldvalues') List<String> fieldvalues});
}

/// @nodoc
class __$FacetParaFilterCopyWithImpl<$Res>
    extends _$FacetParaFilterCopyWithImpl<$Res>
    implements _$FacetParaFilterCopyWith<$Res> {
  __$FacetParaFilterCopyWithImpl(
      _FacetParaFilter _value, $Res Function(_FacetParaFilter) _then)
      : super(_value, (v) => _then(v as _FacetParaFilter));

  @override
  _FacetParaFilter get _value => super._value as _FacetParaFilter;

  @override
  $Res call({
    Object paraname = freezed,
    Object fieldvalues = freezed,
  }) {
    return _then(_FacetParaFilter(
      paraname: paraname == freezed ? _value.paraname : paraname as String,
      fieldvalues: fieldvalues == freezed
          ? _value.fieldvalues
          : fieldvalues as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FacetParaFilter implements _FacetParaFilter {
  _$_FacetParaFilter(
      {@JsonKey(name: 'paraname') this.paraname,
      @JsonKey(name: 'fieldvalues') this.fieldvalues});

  factory _$_FacetParaFilter.fromJson(Map<String, dynamic> json) =>
      _$_$_FacetParaFilterFromJson(json);

  @override
  @JsonKey(name: 'paraname')
  final String paraname;
  @override
  @JsonKey(name: 'fieldvalues')
  final List<String> fieldvalues;

  @override
  String toString() {
    return 'FacetParaFilter(paraname: $paraname, fieldvalues: $fieldvalues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FacetParaFilter &&
            (identical(other.paraname, paraname) ||
                const DeepCollectionEquality()
                    .equals(other.paraname, paraname)) &&
            (identical(other.fieldvalues, fieldvalues) ||
                const DeepCollectionEquality()
                    .equals(other.fieldvalues, fieldvalues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paraname) ^
      const DeepCollectionEquality().hash(fieldvalues);

  @JsonKey(ignore: true)
  @override
  _$FacetParaFilterCopyWith<_FacetParaFilter> get copyWith =>
      __$FacetParaFilterCopyWithImpl<_FacetParaFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FacetParaFilterToJson(this);
  }
}

abstract class _FacetParaFilter implements FacetParaFilter {
  factory _FacetParaFilter(
          {@JsonKey(name: 'paraname') String paraname,
          @JsonKey(name: 'fieldvalues') List<String> fieldvalues}) =
      _$_FacetParaFilter;

  factory _FacetParaFilter.fromJson(Map<String, dynamic> json) =
      _$_FacetParaFilter.fromJson;

  @override
  @JsonKey(name: 'paraname')
  String get paraname;
  @override
  @JsonKey(name: 'fieldvalues')
  List<String> get fieldvalues;
  @override
  @JsonKey(ignore: true)
  _$FacetParaFilterCopyWith<_FacetParaFilter> get copyWith;
}

ProductFilterModel _$ProductFilterModelFromJson(Map<String, dynamic> json) {
  return _ProductFilterModel.fromJson(json);
}

/// @nodoc
class _$ProductFilterModelTearOff {
  const _$ProductFilterModelTearOff();

// ignore: unused_element
  _ProductFilterModel call(
      {@JsonKey(name: 'filtertype') int filtertype,
      @JsonKey(name: 'psc') ProductSearchInformationConfig psc,
      @JsonKey(name: 'categorytype') String categorytype,
      @JsonKey(name: 'reqfacet') bool reqfacet,
      @JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'termquery') String termquery,
      @JsonKey(name: 'sortf') Sortfielddata sortf,
      @JsonKey(name: 'filters') List<NumericFilterData> filters,
      @JsonKey(name: 'facetparalist') List<FacetParaFilter> facetparalist}) {
    return _ProductFilterModel(
      filtertype: filtertype,
      psc: psc,
      categorytype: categorytype,
      reqfacet: reqfacet,
      offset: offset,
      termquery: termquery,
      sortf: sortf,
      filters: filters,
      facetparalist: facetparalist,
    );
  }

// ignore: unused_element
  ProductFilterModel fromJson(Map<String, Object> json) {
    return ProductFilterModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductFilterModel = _$ProductFilterModelTearOff();

/// @nodoc
mixin _$ProductFilterModel {
  @JsonKey(name: 'filtertype')
  int get filtertype;
  @JsonKey(name: 'psc')
  ProductSearchInformationConfig get psc;
  @JsonKey(name: 'categorytype')
  String get categorytype;
  @JsonKey(name: 'reqfacet')
  bool get reqfacet;
  @JsonKey(name: 'offset')
  int get offset;
  @JsonKey(name: 'termquery')
  String get termquery;
  @JsonKey(name: 'sortf')
  Sortfielddata get sortf;
  @JsonKey(name: 'filters')
  List<NumericFilterData> get filters;
  @JsonKey(name: 'facetparalist')
  List<FacetParaFilter> get facetparalist;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductFilterModelCopyWith<ProductFilterModel> get copyWith;
}

/// @nodoc
abstract class $ProductFilterModelCopyWith<$Res> {
  factory $ProductFilterModelCopyWith(
          ProductFilterModel value, $Res Function(ProductFilterModel) then) =
      _$ProductFilterModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'filtertype') int filtertype,
      @JsonKey(name: 'psc') ProductSearchInformationConfig psc,
      @JsonKey(name: 'categorytype') String categorytype,
      @JsonKey(name: 'reqfacet') bool reqfacet,
      @JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'termquery') String termquery,
      @JsonKey(name: 'sortf') Sortfielddata sortf,
      @JsonKey(name: 'filters') List<NumericFilterData> filters,
      @JsonKey(name: 'facetparalist') List<FacetParaFilter> facetparalist});

  $ProductSearchInformationConfigCopyWith<$Res> get psc;
  $SortfielddataCopyWith<$Res> get sortf;
}

/// @nodoc
class _$ProductFilterModelCopyWithImpl<$Res>
    implements $ProductFilterModelCopyWith<$Res> {
  _$ProductFilterModelCopyWithImpl(this._value, this._then);

  final ProductFilterModel _value;
  // ignore: unused_field
  final $Res Function(ProductFilterModel) _then;

  @override
  $Res call({
    Object filtertype = freezed,
    Object psc = freezed,
    Object categorytype = freezed,
    Object reqfacet = freezed,
    Object offset = freezed,
    Object termquery = freezed,
    Object sortf = freezed,
    Object filters = freezed,
    Object facetparalist = freezed,
  }) {
    return _then(_value.copyWith(
      filtertype: filtertype == freezed ? _value.filtertype : filtertype as int,
      psc: psc == freezed ? _value.psc : psc as ProductSearchInformationConfig,
      categorytype: categorytype == freezed
          ? _value.categorytype
          : categorytype as String,
      reqfacet: reqfacet == freezed ? _value.reqfacet : reqfacet as bool,
      offset: offset == freezed ? _value.offset : offset as int,
      termquery: termquery == freezed ? _value.termquery : termquery as String,
      sortf: sortf == freezed ? _value.sortf : sortf as Sortfielddata,
      filters: filters == freezed
          ? _value.filters
          : filters as List<NumericFilterData>,
      facetparalist: facetparalist == freezed
          ? _value.facetparalist
          : facetparalist as List<FacetParaFilter>,
    ));
  }

  @override
  $ProductSearchInformationConfigCopyWith<$Res> get psc {
    if (_value.psc == null) {
      return null;
    }
    return $ProductSearchInformationConfigCopyWith<$Res>(_value.psc, (value) {
      return _then(_value.copyWith(psc: value));
    });
  }

  @override
  $SortfielddataCopyWith<$Res> get sortf {
    if (_value.sortf == null) {
      return null;
    }
    return $SortfielddataCopyWith<$Res>(_value.sortf, (value) {
      return _then(_value.copyWith(sortf: value));
    });
  }
}

/// @nodoc
abstract class _$ProductFilterModelCopyWith<$Res>
    implements $ProductFilterModelCopyWith<$Res> {
  factory _$ProductFilterModelCopyWith(
          _ProductFilterModel value, $Res Function(_ProductFilterModel) then) =
      __$ProductFilterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'filtertype') int filtertype,
      @JsonKey(name: 'psc') ProductSearchInformationConfig psc,
      @JsonKey(name: 'categorytype') String categorytype,
      @JsonKey(name: 'reqfacet') bool reqfacet,
      @JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'termquery') String termquery,
      @JsonKey(name: 'sortf') Sortfielddata sortf,
      @JsonKey(name: 'filters') List<NumericFilterData> filters,
      @JsonKey(name: 'facetparalist') List<FacetParaFilter> facetparalist});

  @override
  $ProductSearchInformationConfigCopyWith<$Res> get psc;
  @override
  $SortfielddataCopyWith<$Res> get sortf;
}

/// @nodoc
class __$ProductFilterModelCopyWithImpl<$Res>
    extends _$ProductFilterModelCopyWithImpl<$Res>
    implements _$ProductFilterModelCopyWith<$Res> {
  __$ProductFilterModelCopyWithImpl(
      _ProductFilterModel _value, $Res Function(_ProductFilterModel) _then)
      : super(_value, (v) => _then(v as _ProductFilterModel));

  @override
  _ProductFilterModel get _value => super._value as _ProductFilterModel;

  @override
  $Res call({
    Object filtertype = freezed,
    Object psc = freezed,
    Object categorytype = freezed,
    Object reqfacet = freezed,
    Object offset = freezed,
    Object termquery = freezed,
    Object sortf = freezed,
    Object filters = freezed,
    Object facetparalist = freezed,
  }) {
    return _then(_ProductFilterModel(
      filtertype: filtertype == freezed ? _value.filtertype : filtertype as int,
      psc: psc == freezed ? _value.psc : psc as ProductSearchInformationConfig,
      categorytype: categorytype == freezed
          ? _value.categorytype
          : categorytype as String,
      reqfacet: reqfacet == freezed ? _value.reqfacet : reqfacet as bool,
      offset: offset == freezed ? _value.offset : offset as int,
      termquery: termquery == freezed ? _value.termquery : termquery as String,
      sortf: sortf == freezed ? _value.sortf : sortf as Sortfielddata,
      filters: filters == freezed
          ? _value.filters
          : filters as List<NumericFilterData>,
      facetparalist: facetparalist == freezed
          ? _value.facetparalist
          : facetparalist as List<FacetParaFilter>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductFilterModel implements _ProductFilterModel {
  _$_ProductFilterModel(
      {@JsonKey(name: 'filtertype') this.filtertype,
      @JsonKey(name: 'psc') this.psc,
      @JsonKey(name: 'categorytype') this.categorytype,
      @JsonKey(name: 'reqfacet') this.reqfacet,
      @JsonKey(name: 'offset') this.offset,
      @JsonKey(name: 'termquery') this.termquery,
      @JsonKey(name: 'sortf') this.sortf,
      @JsonKey(name: 'filters') this.filters,
      @JsonKey(name: 'facetparalist') this.facetparalist});

  factory _$_ProductFilterModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductFilterModelFromJson(json);

  @override
  @JsonKey(name: 'filtertype')
  final int filtertype;
  @override
  @JsonKey(name: 'psc')
  final ProductSearchInformationConfig psc;
  @override
  @JsonKey(name: 'categorytype')
  final String categorytype;
  @override
  @JsonKey(name: 'reqfacet')
  final bool reqfacet;
  @override
  @JsonKey(name: 'offset')
  final int offset;
  @override
  @JsonKey(name: 'termquery')
  final String termquery;
  @override
  @JsonKey(name: 'sortf')
  final Sortfielddata sortf;
  @override
  @JsonKey(name: 'filters')
  final List<NumericFilterData> filters;
  @override
  @JsonKey(name: 'facetparalist')
  final List<FacetParaFilter> facetparalist;

  @override
  String toString() {
    return 'ProductFilterModel(filtertype: $filtertype, psc: $psc, categorytype: $categorytype, reqfacet: $reqfacet, offset: $offset, termquery: $termquery, sortf: $sortf, filters: $filters, facetparalist: $facetparalist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductFilterModel &&
            (identical(other.filtertype, filtertype) ||
                const DeepCollectionEquality()
                    .equals(other.filtertype, filtertype)) &&
            (identical(other.psc, psc) ||
                const DeepCollectionEquality().equals(other.psc, psc)) &&
            (identical(other.categorytype, categorytype) ||
                const DeepCollectionEquality()
                    .equals(other.categorytype, categorytype)) &&
            (identical(other.reqfacet, reqfacet) ||
                const DeepCollectionEquality()
                    .equals(other.reqfacet, reqfacet)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.termquery, termquery) ||
                const DeepCollectionEquality()
                    .equals(other.termquery, termquery)) &&
            (identical(other.sortf, sortf) ||
                const DeepCollectionEquality().equals(other.sortf, sortf)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.facetparalist, facetparalist) ||
                const DeepCollectionEquality()
                    .equals(other.facetparalist, facetparalist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filtertype) ^
      const DeepCollectionEquality().hash(psc) ^
      const DeepCollectionEquality().hash(categorytype) ^
      const DeepCollectionEquality().hash(reqfacet) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(termquery) ^
      const DeepCollectionEquality().hash(sortf) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(facetparalist);

  @JsonKey(ignore: true)
  @override
  _$ProductFilterModelCopyWith<_ProductFilterModel> get copyWith =>
      __$ProductFilterModelCopyWithImpl<_ProductFilterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductFilterModelToJson(this);
  }
}

abstract class _ProductFilterModel implements ProductFilterModel {
  factory _ProductFilterModel(
      {@JsonKey(name: 'filtertype')
          int filtertype,
      @JsonKey(name: 'psc')
          ProductSearchInformationConfig psc,
      @JsonKey(name: 'categorytype')
          String categorytype,
      @JsonKey(name: 'reqfacet')
          bool reqfacet,
      @JsonKey(name: 'offset')
          int offset,
      @JsonKey(name: 'termquery')
          String termquery,
      @JsonKey(name: 'sortf')
          Sortfielddata sortf,
      @JsonKey(name: 'filters')
          List<NumericFilterData> filters,
      @JsonKey(name: 'facetparalist')
          List<FacetParaFilter> facetparalist}) = _$_ProductFilterModel;

  factory _ProductFilterModel.fromJson(Map<String, dynamic> json) =
      _$_ProductFilterModel.fromJson;

  @override
  @JsonKey(name: 'filtertype')
  int get filtertype;
  @override
  @JsonKey(name: 'psc')
  ProductSearchInformationConfig get psc;
  @override
  @JsonKey(name: 'categorytype')
  String get categorytype;
  @override
  @JsonKey(name: 'reqfacet')
  bool get reqfacet;
  @override
  @JsonKey(name: 'offset')
  int get offset;
  @override
  @JsonKey(name: 'termquery')
  String get termquery;
  @override
  @JsonKey(name: 'sortf')
  Sortfielddata get sortf;
  @override
  @JsonKey(name: 'filters')
  List<NumericFilterData> get filters;
  @override
  @JsonKey(name: 'facetparalist')
  List<FacetParaFilter> get facetparalist;
  @override
  @JsonKey(ignore: true)
  _$ProductFilterModelCopyWith<_ProductFilterModel> get copyWith;
}

LimitedData _$LimitedDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'pet':
      return LimitedPetData.fromJson(json);
    case 'package':
      return LimitedPackageData.fromJson(json);
    case 'product':
      return LimitedProductData.fromJson(json);
    case 'vehicle':
      return LimitedVehicleData.fromJson(json);
    case 'realEstate':
      return LimitedRealEstateData.fromJson(json);
    case 'job':
      return LimitedJobData.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$LimitedDataTearOff {
  const _$LimitedDataTearOff();

// ignore: unused_element
  LimitedPetData pet(
      {@JsonKey(name: 'petclass')
          String petclass,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'breed')
          String breed,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'animalclass')
          String animalclass,
      @JsonKey(name: 'age')
          int age,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid}) {
    return LimitedPetData(
      petclass: petclass,
      name: name,
      breed: breed,
      gender: gender,
      animalclass: animalclass,
      age: age,
      tileimage: tileimage,
      price: price,
      postedon: postedon,
      addressarea: addressarea,
      serviceproviderid: serviceproviderid,
    );
  }

// ignore: unused_element
  LimitedPackageData package(
      {@JsonKey(name: 'itemid') String itemid,
      @JsonKey(name: 'desc') String desc,
      @JsonKey(name: 'origprice') double origprice,
      @JsonKey(name: 'discountedprice') double discountedprice}) {
    return LimitedPackageData(
      itemid: itemid,
      desc: desc,
      origprice: origprice,
      discountedprice: discountedprice,
    );
  }

// ignore: unused_element
  LimitedProductData product(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'reqqty') bool reqqty,
      @JsonKey(name: 'isvegetarian') bool isvegetarian,
      @JsonKey(name: 'spicetype') int spicetype,
      @JsonKey(name: 'ispackage') bool ispackage,
      @JsonKey(name: 'unitmeasure') String unitmeasure,
      @JsonKey(name: 'origprice') double origprice,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'varianttype') String varianttype,
      @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
      @JsonKey(name: 'contenttype') String contenttype}) {
    return LimitedProductData(
      id: id,
      title: title,
      tileimage: tileimage,
      reqqty: reqqty,
      isvegetarian: isvegetarian,
      spicetype: spicetype,
      ispackage: ispackage,
      unitmeasure: unitmeasure,
      origprice: origprice,
      discountedprice: discountedprice,
      varianttype: varianttype,
      packdata: packdata,
      contenttype: contenttype,
    );
  }

// ignore: unused_element
  LimitedVehicleData vehicle(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'vehicletype')
          String vehicletype,
      @JsonKey(name: 'make')
          String make,
      @JsonKey(name: 'model')
          String model,
      @JsonKey(name: 'yearmade')
          int yearmade,
      @JsonKey(name: 'milage')
          int milage,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid}) {
    return LimitedVehicleData(
      productid: productid,
      title: title,
      vehicletype: vehicletype,
      make: make,
      model: model,
      yearmade: yearmade,
      milage: milage,
      price: price,
      tileimage: tileimage,
      postedon: postedon,
      addressarea: addressarea,
      serviceproviderid: serviceproviderid,
    );
  }

// ignore: unused_element
  LimitedRealEstateData realEstate(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'listingtype')
          String listingtype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'numbedroom')
          int numbedroom,
      @JsonKey(name: 'numbathroom')
          int numbathroom,
      @JsonKey(name: 'sharingallowed')
          bool sharingallowed,
      @JsonKey(name: 'sqrfootage')
          int sqrfootage,
      @JsonKey(name: 'floorNumber')
          int floorNumber,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid}) {
    return LimitedRealEstateData(
      productid: productid,
      listingtype: listingtype,
      propertytype: propertytype,
      numbedroom: numbedroom,
      numbathroom: numbathroom,
      sharingallowed: sharingallowed,
      sqrfootage: sqrfootage,
      floorNumber: floorNumber,
      price: price,
      addressarea: addressarea,
      postedon: postedon,
      tileimage: tileimage,
      serviceproviderid: serviceproviderid,
    );
  }

// ignore: unused_element
  LimitedJobData job(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'companyname')
          String companyname,
      @JsonKey(name: 'companyicon')
          String companyicon,
      @JsonKey(name: 'salaryrange')
          String salaryrange,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'jobtype')
          String jobtype,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon}) {
    return LimitedJobData(
      productid: productid,
      title: title,
      companyname: companyname,
      companyicon: companyicon,
      salaryrange: salaryrange,
      addressarea: addressarea,
      jobtype: jobtype,
      postedon: postedon,
    );
  }

// ignore: unused_element
  LimitedData fromJson(Map<String, Object> json) {
    return LimitedData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LimitedData = _$LimitedDataTearOff();

/// @nodoc
mixin _$LimitedData {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult pet(
            @JsonKey(name: 'petclass')
                String petclass,
            @JsonKey(name: 'name')
                String name,
            @JsonKey(name: 'breed')
                String breed,
            @JsonKey(name: 'gender')
                String gender,
            @JsonKey(name: 'animalclass')
                String animalclass,
            @JsonKey(name: 'age')
                int age,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult package(
            @JsonKey(name: 'itemid') String itemid,
            @JsonKey(name: 'desc') String desc,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice),
    @required
        TResult product(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'tileimage') String tileimage,
            @JsonKey(name: 'reqqty') bool reqqty,
            @JsonKey(name: 'isvegetarian') bool isvegetarian,
            @JsonKey(name: 'spicetype') int spicetype,
            @JsonKey(name: 'ispackage') bool ispackage,
            @JsonKey(name: 'unitmeasure') String unitmeasure,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice,
            @JsonKey(name: 'varianttype') String varianttype,
            @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
            @JsonKey(name: 'contenttype') String contenttype),
    @required
        TResult vehicle(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'vehicletype')
                String vehicletype,
            @JsonKey(name: 'make')
                String make,
            @JsonKey(name: 'model')
                String model,
            @JsonKey(name: 'yearmade')
                int yearmade,
            @JsonKey(name: 'milage')
                int milage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult realEstate(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'listingtype')
                String listingtype,
            @JsonKey(name: 'propertytype')
                String propertytype,
            @JsonKey(name: 'numbedroom')
                int numbedroom,
            @JsonKey(name: 'numbathroom')
                int numbathroom,
            @JsonKey(name: 'sharingallowed')
                bool sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'floorNumber')
                int floorNumber,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'companyicon')
                String companyicon,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(
        @JsonKey(name: 'petclass')
            String petclass,
        @JsonKey(name: 'name')
            String name,
        @JsonKey(name: 'breed')
            String breed,
        @JsonKey(name: 'gender')
            String gender,
        @JsonKey(name: 'animalclass')
            String animalclass,
        @JsonKey(name: 'age')
            int age,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult package(
        @JsonKey(name: 'itemid') String itemid,
        @JsonKey(name: 'desc') String desc,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice),
    TResult product(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'title') String title,
        @JsonKey(name: 'tileimage') String tileimage,
        @JsonKey(name: 'reqqty') bool reqqty,
        @JsonKey(name: 'isvegetarian') bool isvegetarian,
        @JsonKey(name: 'spicetype') int spicetype,
        @JsonKey(name: 'ispackage') bool ispackage,
        @JsonKey(name: 'unitmeasure') String unitmeasure,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice,
        @JsonKey(name: 'varianttype') String varianttype,
        @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
        @JsonKey(name: 'contenttype') String contenttype),
    TResult vehicle(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'vehicletype')
            String vehicletype,
        @JsonKey(name: 'make')
            String make,
        @JsonKey(name: 'model')
            String model,
        @JsonKey(name: 'yearmade')
            int yearmade,
        @JsonKey(name: 'milage')
            int milage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult realEstate(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'listingtype')
            String listingtype,
        @JsonKey(name: 'propertytype')
            String propertytype,
        @JsonKey(name: 'numbedroom')
            int numbedroom,
        @JsonKey(name: 'numbathroom')
            int numbathroom,
        @JsonKey(name: 'sharingallowed')
            bool sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'floorNumber')
            int floorNumber,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'companyicon')
            String companyicon,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(LimitedPetData value),
    @required TResult package(LimitedPackageData value),
    @required TResult product(LimitedProductData value),
    @required TResult vehicle(LimitedVehicleData value),
    @required TResult realEstate(LimitedRealEstateData value),
    @required TResult job(LimitedJobData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(LimitedPetData value),
    TResult package(LimitedPackageData value),
    TResult product(LimitedProductData value),
    TResult vehicle(LimitedVehicleData value),
    TResult realEstate(LimitedRealEstateData value),
    TResult job(LimitedJobData value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $LimitedDataCopyWith<$Res> {
  factory $LimitedDataCopyWith(
          LimitedData value, $Res Function(LimitedData) then) =
      _$LimitedDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$LimitedDataCopyWithImpl<$Res> implements $LimitedDataCopyWith<$Res> {
  _$LimitedDataCopyWithImpl(this._value, this._then);

  final LimitedData _value;
  // ignore: unused_field
  final $Res Function(LimitedData) _then;
}

/// @nodoc
abstract class $LimitedPetDataCopyWith<$Res> {
  factory $LimitedPetDataCopyWith(
          LimitedPetData value, $Res Function(LimitedPetData) then) =
      _$LimitedPetDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'petclass')
          String petclass,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'breed')
          String breed,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'animalclass')
          String animalclass,
      @JsonKey(name: 'age')
          int age,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid});

  $AddressmodelCopyWith<$Res> get addressarea;
}

/// @nodoc
class _$LimitedPetDataCopyWithImpl<$Res> extends _$LimitedDataCopyWithImpl<$Res>
    implements $LimitedPetDataCopyWith<$Res> {
  _$LimitedPetDataCopyWithImpl(
      LimitedPetData _value, $Res Function(LimitedPetData) _then)
      : super(_value, (v) => _then(v as LimitedPetData));

  @override
  LimitedPetData get _value => super._value as LimitedPetData;

  @override
  $Res call({
    Object petclass = freezed,
    Object name = freezed,
    Object breed = freezed,
    Object gender = freezed,
    Object animalclass = freezed,
    Object age = freezed,
    Object tileimage = freezed,
    Object price = freezed,
    Object postedon = freezed,
    Object addressarea = freezed,
    Object serviceproviderid = freezed,
  }) {
    return _then(LimitedPetData(
      petclass: petclass == freezed ? _value.petclass : petclass as String,
      name: name == freezed ? _value.name : name as String,
      breed: breed == freezed ? _value.breed : breed as String,
      gender: gender == freezed ? _value.gender : gender as String,
      animalclass:
          animalclass == freezed ? _value.animalclass : animalclass as String,
      age: age == freezed ? _value.age : age as int,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      price: price == freezed ? _value.price : price as double,
      postedon: postedon == freezed ? _value.postedon : postedon as DateTime,
      addressarea: addressarea == freezed
          ? _value.addressarea
          : addressarea as Addressmodel,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
    ));
  }

  @override
  $AddressmodelCopyWith<$Res> get addressarea {
    if (_value.addressarea == null) {
      return null;
    }
    return $AddressmodelCopyWith<$Res>(_value.addressarea, (value) {
      return _then(_value.copyWith(addressarea: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedPetData implements LimitedPetData {
  const _$LimitedPetData(
      {@JsonKey(name: 'petclass')
          this.petclass,
      @JsonKey(name: 'name')
          this.name,
      @JsonKey(name: 'breed')
          this.breed,
      @JsonKey(name: 'gender')
          this.gender,
      @JsonKey(name: 'animalclass')
          this.animalclass,
      @JsonKey(name: 'age')
          this.age,
      @JsonKey(name: 'tileimage')
          this.tileimage,
      @JsonKey(name: 'price')
          this.price,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.postedon,
      @JsonKey(name: 'addressarea')
          this.addressarea,
      @JsonKey(name: 'serviceproviderid')
          this.serviceproviderid});

  factory _$LimitedPetData.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedPetDataFromJson(json);

  @override
  @JsonKey(name: 'petclass')
  final String petclass;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'breed')
  final String breed;
  @override
  @JsonKey(name: 'gender')
  final String gender;
  @override
  @JsonKey(name: 'animalclass')
  final String animalclass;
  @override
  @JsonKey(name: 'age')
  final int age;
  @override
  @JsonKey(name: 'tileimage')
  final String tileimage;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime postedon;
  @override
  @JsonKey(name: 'addressarea')
  final Addressmodel addressarea;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;

  @override
  String toString() {
    return 'LimitedData.pet(petclass: $petclass, name: $name, breed: $breed, gender: $gender, animalclass: $animalclass, age: $age, tileimage: $tileimage, price: $price, postedon: $postedon, addressarea: $addressarea, serviceproviderid: $serviceproviderid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedPetData &&
            (identical(other.petclass, petclass) ||
                const DeepCollectionEquality()
                    .equals(other.petclass, petclass)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.breed, breed) ||
                const DeepCollectionEquality().equals(other.breed, breed)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.animalclass, animalclass) ||
                const DeepCollectionEquality()
                    .equals(other.animalclass, animalclass)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.postedon, postedon) ||
                const DeepCollectionEquality()
                    .equals(other.postedon, postedon)) &&
            (identical(other.addressarea, addressarea) ||
                const DeepCollectionEquality()
                    .equals(other.addressarea, addressarea)) &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(petclass) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(breed) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(animalclass) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(postedon) ^
      const DeepCollectionEquality().hash(addressarea) ^
      const DeepCollectionEquality().hash(serviceproviderid);

  @JsonKey(ignore: true)
  @override
  $LimitedPetDataCopyWith<LimitedPetData> get copyWith =>
      _$LimitedPetDataCopyWithImpl<LimitedPetData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult pet(
            @JsonKey(name: 'petclass')
                String petclass,
            @JsonKey(name: 'name')
                String name,
            @JsonKey(name: 'breed')
                String breed,
            @JsonKey(name: 'gender')
                String gender,
            @JsonKey(name: 'animalclass')
                String animalclass,
            @JsonKey(name: 'age')
                int age,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult package(
            @JsonKey(name: 'itemid') String itemid,
            @JsonKey(name: 'desc') String desc,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice),
    @required
        TResult product(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'tileimage') String tileimage,
            @JsonKey(name: 'reqqty') bool reqqty,
            @JsonKey(name: 'isvegetarian') bool isvegetarian,
            @JsonKey(name: 'spicetype') int spicetype,
            @JsonKey(name: 'ispackage') bool ispackage,
            @JsonKey(name: 'unitmeasure') String unitmeasure,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice,
            @JsonKey(name: 'varianttype') String varianttype,
            @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
            @JsonKey(name: 'contenttype') String contenttype),
    @required
        TResult vehicle(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'vehicletype')
                String vehicletype,
            @JsonKey(name: 'make')
                String make,
            @JsonKey(name: 'model')
                String model,
            @JsonKey(name: 'yearmade')
                int yearmade,
            @JsonKey(name: 'milage')
                int milage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult realEstate(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'listingtype')
                String listingtype,
            @JsonKey(name: 'propertytype')
                String propertytype,
            @JsonKey(name: 'numbedroom')
                int numbedroom,
            @JsonKey(name: 'numbathroom')
                int numbathroom,
            @JsonKey(name: 'sharingallowed')
                bool sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'floorNumber')
                int floorNumber,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'companyicon')
                String companyicon,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return pet(petclass, name, breed, gender, animalclass, age, tileimage,
        price, postedon, addressarea, serviceproviderid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(
        @JsonKey(name: 'petclass')
            String petclass,
        @JsonKey(name: 'name')
            String name,
        @JsonKey(name: 'breed')
            String breed,
        @JsonKey(name: 'gender')
            String gender,
        @JsonKey(name: 'animalclass')
            String animalclass,
        @JsonKey(name: 'age')
            int age,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult package(
        @JsonKey(name: 'itemid') String itemid,
        @JsonKey(name: 'desc') String desc,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice),
    TResult product(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'title') String title,
        @JsonKey(name: 'tileimage') String tileimage,
        @JsonKey(name: 'reqqty') bool reqqty,
        @JsonKey(name: 'isvegetarian') bool isvegetarian,
        @JsonKey(name: 'spicetype') int spicetype,
        @JsonKey(name: 'ispackage') bool ispackage,
        @JsonKey(name: 'unitmeasure') String unitmeasure,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice,
        @JsonKey(name: 'varianttype') String varianttype,
        @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
        @JsonKey(name: 'contenttype') String contenttype),
    TResult vehicle(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'vehicletype')
            String vehicletype,
        @JsonKey(name: 'make')
            String make,
        @JsonKey(name: 'model')
            String model,
        @JsonKey(name: 'yearmade')
            int yearmade,
        @JsonKey(name: 'milage')
            int milage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult realEstate(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'listingtype')
            String listingtype,
        @JsonKey(name: 'propertytype')
            String propertytype,
        @JsonKey(name: 'numbedroom')
            int numbedroom,
        @JsonKey(name: 'numbathroom')
            int numbathroom,
        @JsonKey(name: 'sharingallowed')
            bool sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'floorNumber')
            int floorNumber,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'companyicon')
            String companyicon,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pet != null) {
      return pet(petclass, name, breed, gender, animalclass, age, tileimage,
          price, postedon, addressarea, serviceproviderid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(LimitedPetData value),
    @required TResult package(LimitedPackageData value),
    @required TResult product(LimitedProductData value),
    @required TResult vehicle(LimitedVehicleData value),
    @required TResult realEstate(LimitedRealEstateData value),
    @required TResult job(LimitedJobData value),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return pet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(LimitedPetData value),
    TResult package(LimitedPackageData value),
    TResult product(LimitedProductData value),
    TResult vehicle(LimitedVehicleData value),
    TResult realEstate(LimitedRealEstateData value),
    TResult job(LimitedJobData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pet != null) {
      return pet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LimitedPetDataToJson(this)..['runtimeType'] = 'pet';
  }
}

abstract class LimitedPetData implements LimitedData {
  const factory LimitedPetData(
      {@JsonKey(name: 'petclass')
          String petclass,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'breed')
          String breed,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'animalclass')
          String animalclass,
      @JsonKey(name: 'age')
          int age,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid}) = _$LimitedPetData;

  factory LimitedPetData.fromJson(Map<String, dynamic> json) =
      _$LimitedPetData.fromJson;

  @JsonKey(name: 'petclass')
  String get petclass;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'breed')
  String get breed;
  @JsonKey(name: 'gender')
  String get gender;
  @JsonKey(name: 'animalclass')
  String get animalclass;
  @JsonKey(name: 'age')
  int get age;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(name: 'price')
  double get price;
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get postedon;
  @JsonKey(name: 'addressarea')
  Addressmodel get addressarea;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(ignore: true)
  $LimitedPetDataCopyWith<LimitedPetData> get copyWith;
}

/// @nodoc
abstract class $LimitedPackageDataCopyWith<$Res> {
  factory $LimitedPackageDataCopyWith(
          LimitedPackageData value, $Res Function(LimitedPackageData) then) =
      _$LimitedPackageDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'itemid') String itemid,
      @JsonKey(name: 'desc') String desc,
      @JsonKey(name: 'origprice') double origprice,
      @JsonKey(name: 'discountedprice') double discountedprice});
}

/// @nodoc
class _$LimitedPackageDataCopyWithImpl<$Res>
    extends _$LimitedDataCopyWithImpl<$Res>
    implements $LimitedPackageDataCopyWith<$Res> {
  _$LimitedPackageDataCopyWithImpl(
      LimitedPackageData _value, $Res Function(LimitedPackageData) _then)
      : super(_value, (v) => _then(v as LimitedPackageData));

  @override
  LimitedPackageData get _value => super._value as LimitedPackageData;

  @override
  $Res call({
    Object itemid = freezed,
    Object desc = freezed,
    Object origprice = freezed,
    Object discountedprice = freezed,
  }) {
    return _then(LimitedPackageData(
      itemid: itemid == freezed ? _value.itemid : itemid as String,
      desc: desc == freezed ? _value.desc : desc as String,
      origprice: origprice == freezed ? _value.origprice : origprice as double,
      discountedprice: discountedprice == freezed
          ? _value.discountedprice
          : discountedprice as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedPackageData implements LimitedPackageData {
  const _$LimitedPackageData(
      {@JsonKey(name: 'itemid') this.itemid,
      @JsonKey(name: 'desc') this.desc,
      @JsonKey(name: 'origprice') this.origprice,
      @JsonKey(name: 'discountedprice') this.discountedprice});

  factory _$LimitedPackageData.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedPackageDataFromJson(json);

  @override
  @JsonKey(name: 'itemid')
  final String itemid;
  @override
  @JsonKey(name: 'desc')
  final String desc;
  @override
  @JsonKey(name: 'origprice')
  final double origprice;
  @override
  @JsonKey(name: 'discountedprice')
  final double discountedprice;

  @override
  String toString() {
    return 'LimitedData.package(itemid: $itemid, desc: $desc, origprice: $origprice, discountedprice: $discountedprice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedPackageData &&
            (identical(other.itemid, itemid) ||
                const DeepCollectionEquality().equals(other.itemid, itemid)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.origprice, origprice) ||
                const DeepCollectionEquality()
                    .equals(other.origprice, origprice)) &&
            (identical(other.discountedprice, discountedprice) ||
                const DeepCollectionEquality()
                    .equals(other.discountedprice, discountedprice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemid) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(origprice) ^
      const DeepCollectionEquality().hash(discountedprice);

  @JsonKey(ignore: true)
  @override
  $LimitedPackageDataCopyWith<LimitedPackageData> get copyWith =>
      _$LimitedPackageDataCopyWithImpl<LimitedPackageData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult pet(
            @JsonKey(name: 'petclass')
                String petclass,
            @JsonKey(name: 'name')
                String name,
            @JsonKey(name: 'breed')
                String breed,
            @JsonKey(name: 'gender')
                String gender,
            @JsonKey(name: 'animalclass')
                String animalclass,
            @JsonKey(name: 'age')
                int age,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult package(
            @JsonKey(name: 'itemid') String itemid,
            @JsonKey(name: 'desc') String desc,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice),
    @required
        TResult product(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'tileimage') String tileimage,
            @JsonKey(name: 'reqqty') bool reqqty,
            @JsonKey(name: 'isvegetarian') bool isvegetarian,
            @JsonKey(name: 'spicetype') int spicetype,
            @JsonKey(name: 'ispackage') bool ispackage,
            @JsonKey(name: 'unitmeasure') String unitmeasure,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice,
            @JsonKey(name: 'varianttype') String varianttype,
            @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
            @JsonKey(name: 'contenttype') String contenttype),
    @required
        TResult vehicle(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'vehicletype')
                String vehicletype,
            @JsonKey(name: 'make')
                String make,
            @JsonKey(name: 'model')
                String model,
            @JsonKey(name: 'yearmade')
                int yearmade,
            @JsonKey(name: 'milage')
                int milage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult realEstate(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'listingtype')
                String listingtype,
            @JsonKey(name: 'propertytype')
                String propertytype,
            @JsonKey(name: 'numbedroom')
                int numbedroom,
            @JsonKey(name: 'numbathroom')
                int numbathroom,
            @JsonKey(name: 'sharingallowed')
                bool sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'floorNumber')
                int floorNumber,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'companyicon')
                String companyicon,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return package(itemid, desc, origprice, discountedprice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(
        @JsonKey(name: 'petclass')
            String petclass,
        @JsonKey(name: 'name')
            String name,
        @JsonKey(name: 'breed')
            String breed,
        @JsonKey(name: 'gender')
            String gender,
        @JsonKey(name: 'animalclass')
            String animalclass,
        @JsonKey(name: 'age')
            int age,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult package(
        @JsonKey(name: 'itemid') String itemid,
        @JsonKey(name: 'desc') String desc,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice),
    TResult product(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'title') String title,
        @JsonKey(name: 'tileimage') String tileimage,
        @JsonKey(name: 'reqqty') bool reqqty,
        @JsonKey(name: 'isvegetarian') bool isvegetarian,
        @JsonKey(name: 'spicetype') int spicetype,
        @JsonKey(name: 'ispackage') bool ispackage,
        @JsonKey(name: 'unitmeasure') String unitmeasure,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice,
        @JsonKey(name: 'varianttype') String varianttype,
        @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
        @JsonKey(name: 'contenttype') String contenttype),
    TResult vehicle(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'vehicletype')
            String vehicletype,
        @JsonKey(name: 'make')
            String make,
        @JsonKey(name: 'model')
            String model,
        @JsonKey(name: 'yearmade')
            int yearmade,
        @JsonKey(name: 'milage')
            int milage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult realEstate(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'listingtype')
            String listingtype,
        @JsonKey(name: 'propertytype')
            String propertytype,
        @JsonKey(name: 'numbedroom')
            int numbedroom,
        @JsonKey(name: 'numbathroom')
            int numbathroom,
        @JsonKey(name: 'sharingallowed')
            bool sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'floorNumber')
            int floorNumber,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'companyicon')
            String companyicon,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (package != null) {
      return package(itemid, desc, origprice, discountedprice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(LimitedPetData value),
    @required TResult package(LimitedPackageData value),
    @required TResult product(LimitedProductData value),
    @required TResult vehicle(LimitedVehicleData value),
    @required TResult realEstate(LimitedRealEstateData value),
    @required TResult job(LimitedJobData value),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return package(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(LimitedPetData value),
    TResult package(LimitedPackageData value),
    TResult product(LimitedProductData value),
    TResult vehicle(LimitedVehicleData value),
    TResult realEstate(LimitedRealEstateData value),
    TResult job(LimitedJobData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (package != null) {
      return package(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LimitedPackageDataToJson(this)..['runtimeType'] = 'package';
  }
}

abstract class LimitedPackageData implements LimitedData {
  const factory LimitedPackageData(
          {@JsonKey(name: 'itemid') String itemid,
          @JsonKey(name: 'desc') String desc,
          @JsonKey(name: 'origprice') double origprice,
          @JsonKey(name: 'discountedprice') double discountedprice}) =
      _$LimitedPackageData;

  factory LimitedPackageData.fromJson(Map<String, dynamic> json) =
      _$LimitedPackageData.fromJson;

  @JsonKey(name: 'itemid')
  String get itemid;
  @JsonKey(name: 'desc')
  String get desc;
  @JsonKey(name: 'origprice')
  double get origprice;
  @JsonKey(name: 'discountedprice')
  double get discountedprice;
  @JsonKey(ignore: true)
  $LimitedPackageDataCopyWith<LimitedPackageData> get copyWith;
}

/// @nodoc
abstract class $LimitedProductDataCopyWith<$Res> {
  factory $LimitedProductDataCopyWith(
          LimitedProductData value, $Res Function(LimitedProductData) then) =
      _$LimitedProductDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'reqqty') bool reqqty,
      @JsonKey(name: 'isvegetarian') bool isvegetarian,
      @JsonKey(name: 'spicetype') int spicetype,
      @JsonKey(name: 'ispackage') bool ispackage,
      @JsonKey(name: 'unitmeasure') String unitmeasure,
      @JsonKey(name: 'origprice') double origprice,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'varianttype') String varianttype,
      @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
      @JsonKey(name: 'contenttype') String contenttype});
}

/// @nodoc
class _$LimitedProductDataCopyWithImpl<$Res>
    extends _$LimitedDataCopyWithImpl<$Res>
    implements $LimitedProductDataCopyWith<$Res> {
  _$LimitedProductDataCopyWithImpl(
      LimitedProductData _value, $Res Function(LimitedProductData) _then)
      : super(_value, (v) => _then(v as LimitedProductData));

  @override
  LimitedProductData get _value => super._value as LimitedProductData;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object tileimage = freezed,
    Object reqqty = freezed,
    Object isvegetarian = freezed,
    Object spicetype = freezed,
    Object ispackage = freezed,
    Object unitmeasure = freezed,
    Object origprice = freezed,
    Object discountedprice = freezed,
    Object varianttype = freezed,
    Object packdata = freezed,
    Object contenttype = freezed,
  }) {
    return _then(LimitedProductData(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      reqqty: reqqty == freezed ? _value.reqqty : reqqty as bool,
      isvegetarian:
          isvegetarian == freezed ? _value.isvegetarian : isvegetarian as bool,
      spicetype: spicetype == freezed ? _value.spicetype : spicetype as int,
      ispackage: ispackage == freezed ? _value.ispackage : ispackage as bool,
      unitmeasure:
          unitmeasure == freezed ? _value.unitmeasure : unitmeasure as String,
      origprice: origprice == freezed ? _value.origprice : origprice as double,
      discountedprice: discountedprice == freezed
          ? _value.discountedprice
          : discountedprice as double,
      varianttype:
          varianttype == freezed ? _value.varianttype : varianttype as String,
      packdata: packdata == freezed
          ? _value.packdata
          : packdata as List<LimitedPackageData>,
      contenttype:
          contenttype == freezed ? _value.contenttype : contenttype as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedProductData implements LimitedProductData {
  const _$LimitedProductData(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'tileimage') this.tileimage,
      @JsonKey(name: 'reqqty') this.reqqty,
      @JsonKey(name: 'isvegetarian') this.isvegetarian,
      @JsonKey(name: 'spicetype') this.spicetype,
      @JsonKey(name: 'ispackage') this.ispackage,
      @JsonKey(name: 'unitmeasure') this.unitmeasure,
      @JsonKey(name: 'origprice') this.origprice,
      @JsonKey(name: 'discountedprice') this.discountedprice,
      @JsonKey(name: 'varianttype') this.varianttype,
      @JsonKey(name: 'packdata') this.packdata,
      @JsonKey(name: 'contenttype') this.contenttype});

  factory _$LimitedProductData.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedProductDataFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'tileimage')
  final String tileimage;
  @override
  @JsonKey(name: 'reqqty')
  final bool reqqty;
  @override
  @JsonKey(name: 'isvegetarian')
  final bool isvegetarian;
  @override
  @JsonKey(name: 'spicetype')
  final int spicetype;
  @override
  @JsonKey(name: 'ispackage')
  final bool ispackage;
  @override
  @JsonKey(name: 'unitmeasure')
  final String unitmeasure;
  @override
  @JsonKey(name: 'origprice')
  final double origprice;
  @override
  @JsonKey(name: 'discountedprice')
  final double discountedprice;
  @override
  @JsonKey(name: 'varianttype')
  final String varianttype;
  @override
  @JsonKey(name: 'packdata')
  final List<LimitedPackageData> packdata;
  @override
  @JsonKey(name: 'contenttype')
  final String contenttype;

  @override
  String toString() {
    return 'LimitedData.product(id: $id, title: $title, tileimage: $tileimage, reqqty: $reqqty, isvegetarian: $isvegetarian, spicetype: $spicetype, ispackage: $ispackage, unitmeasure: $unitmeasure, origprice: $origprice, discountedprice: $discountedprice, varianttype: $varianttype, packdata: $packdata, contenttype: $contenttype)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedProductData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.reqqty, reqqty) ||
                const DeepCollectionEquality().equals(other.reqqty, reqqty)) &&
            (identical(other.isvegetarian, isvegetarian) ||
                const DeepCollectionEquality()
                    .equals(other.isvegetarian, isvegetarian)) &&
            (identical(other.spicetype, spicetype) ||
                const DeepCollectionEquality()
                    .equals(other.spicetype, spicetype)) &&
            (identical(other.ispackage, ispackage) ||
                const DeepCollectionEquality()
                    .equals(other.ispackage, ispackage)) &&
            (identical(other.unitmeasure, unitmeasure) ||
                const DeepCollectionEquality()
                    .equals(other.unitmeasure, unitmeasure)) &&
            (identical(other.origprice, origprice) ||
                const DeepCollectionEquality()
                    .equals(other.origprice, origprice)) &&
            (identical(other.discountedprice, discountedprice) ||
                const DeepCollectionEquality()
                    .equals(other.discountedprice, discountedprice)) &&
            (identical(other.varianttype, varianttype) ||
                const DeepCollectionEquality()
                    .equals(other.varianttype, varianttype)) &&
            (identical(other.packdata, packdata) ||
                const DeepCollectionEquality()
                    .equals(other.packdata, packdata)) &&
            (identical(other.contenttype, contenttype) ||
                const DeepCollectionEquality()
                    .equals(other.contenttype, contenttype)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(reqqty) ^
      const DeepCollectionEquality().hash(isvegetarian) ^
      const DeepCollectionEquality().hash(spicetype) ^
      const DeepCollectionEquality().hash(ispackage) ^
      const DeepCollectionEquality().hash(unitmeasure) ^
      const DeepCollectionEquality().hash(origprice) ^
      const DeepCollectionEquality().hash(discountedprice) ^
      const DeepCollectionEquality().hash(varianttype) ^
      const DeepCollectionEquality().hash(packdata) ^
      const DeepCollectionEquality().hash(contenttype);

  @JsonKey(ignore: true)
  @override
  $LimitedProductDataCopyWith<LimitedProductData> get copyWith =>
      _$LimitedProductDataCopyWithImpl<LimitedProductData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult pet(
            @JsonKey(name: 'petclass')
                String petclass,
            @JsonKey(name: 'name')
                String name,
            @JsonKey(name: 'breed')
                String breed,
            @JsonKey(name: 'gender')
                String gender,
            @JsonKey(name: 'animalclass')
                String animalclass,
            @JsonKey(name: 'age')
                int age,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult package(
            @JsonKey(name: 'itemid') String itemid,
            @JsonKey(name: 'desc') String desc,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice),
    @required
        TResult product(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'tileimage') String tileimage,
            @JsonKey(name: 'reqqty') bool reqqty,
            @JsonKey(name: 'isvegetarian') bool isvegetarian,
            @JsonKey(name: 'spicetype') int spicetype,
            @JsonKey(name: 'ispackage') bool ispackage,
            @JsonKey(name: 'unitmeasure') String unitmeasure,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice,
            @JsonKey(name: 'varianttype') String varianttype,
            @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
            @JsonKey(name: 'contenttype') String contenttype),
    @required
        TResult vehicle(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'vehicletype')
                String vehicletype,
            @JsonKey(name: 'make')
                String make,
            @JsonKey(name: 'model')
                String model,
            @JsonKey(name: 'yearmade')
                int yearmade,
            @JsonKey(name: 'milage')
                int milage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult realEstate(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'listingtype')
                String listingtype,
            @JsonKey(name: 'propertytype')
                String propertytype,
            @JsonKey(name: 'numbedroom')
                int numbedroom,
            @JsonKey(name: 'numbathroom')
                int numbathroom,
            @JsonKey(name: 'sharingallowed')
                bool sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'floorNumber')
                int floorNumber,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'companyicon')
                String companyicon,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return product(
        id,
        title,
        tileimage,
        reqqty,
        isvegetarian,
        spicetype,
        ispackage,
        unitmeasure,
        origprice,
        discountedprice,
        varianttype,
        packdata,
        contenttype);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(
        @JsonKey(name: 'petclass')
            String petclass,
        @JsonKey(name: 'name')
            String name,
        @JsonKey(name: 'breed')
            String breed,
        @JsonKey(name: 'gender')
            String gender,
        @JsonKey(name: 'animalclass')
            String animalclass,
        @JsonKey(name: 'age')
            int age,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult package(
        @JsonKey(name: 'itemid') String itemid,
        @JsonKey(name: 'desc') String desc,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice),
    TResult product(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'title') String title,
        @JsonKey(name: 'tileimage') String tileimage,
        @JsonKey(name: 'reqqty') bool reqqty,
        @JsonKey(name: 'isvegetarian') bool isvegetarian,
        @JsonKey(name: 'spicetype') int spicetype,
        @JsonKey(name: 'ispackage') bool ispackage,
        @JsonKey(name: 'unitmeasure') String unitmeasure,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice,
        @JsonKey(name: 'varianttype') String varianttype,
        @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
        @JsonKey(name: 'contenttype') String contenttype),
    TResult vehicle(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'vehicletype')
            String vehicletype,
        @JsonKey(name: 'make')
            String make,
        @JsonKey(name: 'model')
            String model,
        @JsonKey(name: 'yearmade')
            int yearmade,
        @JsonKey(name: 'milage')
            int milage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult realEstate(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'listingtype')
            String listingtype,
        @JsonKey(name: 'propertytype')
            String propertytype,
        @JsonKey(name: 'numbedroom')
            int numbedroom,
        @JsonKey(name: 'numbathroom')
            int numbathroom,
        @JsonKey(name: 'sharingallowed')
            bool sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'floorNumber')
            int floorNumber,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'companyicon')
            String companyicon,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (product != null) {
      return product(
          id,
          title,
          tileimage,
          reqqty,
          isvegetarian,
          spicetype,
          ispackage,
          unitmeasure,
          origprice,
          discountedprice,
          varianttype,
          packdata,
          contenttype);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(LimitedPetData value),
    @required TResult package(LimitedPackageData value),
    @required TResult product(LimitedProductData value),
    @required TResult vehicle(LimitedVehicleData value),
    @required TResult realEstate(LimitedRealEstateData value),
    @required TResult job(LimitedJobData value),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(LimitedPetData value),
    TResult package(LimitedPackageData value),
    TResult product(LimitedProductData value),
    TResult vehicle(LimitedVehicleData value),
    TResult realEstate(LimitedRealEstateData value),
    TResult job(LimitedJobData value),
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
    return _$_$LimitedProductDataToJson(this)..['runtimeType'] = 'product';
  }
}

abstract class LimitedProductData implements LimitedData {
  const factory LimitedProductData(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'reqqty') bool reqqty,
      @JsonKey(name: 'isvegetarian') bool isvegetarian,
      @JsonKey(name: 'spicetype') int spicetype,
      @JsonKey(name: 'ispackage') bool ispackage,
      @JsonKey(name: 'unitmeasure') String unitmeasure,
      @JsonKey(name: 'origprice') double origprice,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'varianttype') String varianttype,
      @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
      @JsonKey(name: 'contenttype') String contenttype}) = _$LimitedProductData;

  factory LimitedProductData.fromJson(Map<String, dynamic> json) =
      _$LimitedProductData.fromJson;

  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(name: 'reqqty')
  bool get reqqty;
  @JsonKey(name: 'isvegetarian')
  bool get isvegetarian;
  @JsonKey(name: 'spicetype')
  int get spicetype;
  @JsonKey(name: 'ispackage')
  bool get ispackage;
  @JsonKey(name: 'unitmeasure')
  String get unitmeasure;
  @JsonKey(name: 'origprice')
  double get origprice;
  @JsonKey(name: 'discountedprice')
  double get discountedprice;
  @JsonKey(name: 'varianttype')
  String get varianttype;
  @JsonKey(name: 'packdata')
  List<LimitedPackageData> get packdata;
  @JsonKey(name: 'contenttype')
  String get contenttype;
  @JsonKey(ignore: true)
  $LimitedProductDataCopyWith<LimitedProductData> get copyWith;
}

/// @nodoc
abstract class $LimitedVehicleDataCopyWith<$Res> {
  factory $LimitedVehicleDataCopyWith(
          LimitedVehicleData value, $Res Function(LimitedVehicleData) then) =
      _$LimitedVehicleDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'vehicletype')
          String vehicletype,
      @JsonKey(name: 'make')
          String make,
      @JsonKey(name: 'model')
          String model,
      @JsonKey(name: 'yearmade')
          int yearmade,
      @JsonKey(name: 'milage')
          int milage,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid});

  $AddressmodelCopyWith<$Res> get addressarea;
}

/// @nodoc
class _$LimitedVehicleDataCopyWithImpl<$Res>
    extends _$LimitedDataCopyWithImpl<$Res>
    implements $LimitedVehicleDataCopyWith<$Res> {
  _$LimitedVehicleDataCopyWithImpl(
      LimitedVehicleData _value, $Res Function(LimitedVehicleData) _then)
      : super(_value, (v) => _then(v as LimitedVehicleData));

  @override
  LimitedVehicleData get _value => super._value as LimitedVehicleData;

  @override
  $Res call({
    Object productid = freezed,
    Object title = freezed,
    Object vehicletype = freezed,
    Object make = freezed,
    Object model = freezed,
    Object yearmade = freezed,
    Object milage = freezed,
    Object price = freezed,
    Object tileimage = freezed,
    Object postedon = freezed,
    Object addressarea = freezed,
    Object serviceproviderid = freezed,
  }) {
    return _then(LimitedVehicleData(
      productid: productid == freezed ? _value.productid : productid as String,
      title: title == freezed ? _value.title : title as String,
      vehicletype:
          vehicletype == freezed ? _value.vehicletype : vehicletype as String,
      make: make == freezed ? _value.make : make as String,
      model: model == freezed ? _value.model : model as String,
      yearmade: yearmade == freezed ? _value.yearmade : yearmade as int,
      milage: milage == freezed ? _value.milage : milage as int,
      price: price == freezed ? _value.price : price as double,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      postedon: postedon == freezed ? _value.postedon : postedon as DateTime,
      addressarea: addressarea == freezed
          ? _value.addressarea
          : addressarea as Addressmodel,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
    ));
  }

  @override
  $AddressmodelCopyWith<$Res> get addressarea {
    if (_value.addressarea == null) {
      return null;
    }
    return $AddressmodelCopyWith<$Res>(_value.addressarea, (value) {
      return _then(_value.copyWith(addressarea: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedVehicleData implements LimitedVehicleData {
  const _$LimitedVehicleData(
      {@JsonKey(name: 'productid')
          this.productid,
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'vehicletype')
          this.vehicletype,
      @JsonKey(name: 'make')
          this.make,
      @JsonKey(name: 'model')
          this.model,
      @JsonKey(name: 'yearmade')
          this.yearmade,
      @JsonKey(name: 'milage')
          this.milage,
      @JsonKey(name: 'price')
          this.price,
      @JsonKey(name: 'tileimage')
          this.tileimage,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.postedon,
      @JsonKey(name: 'addressarea')
          this.addressarea,
      @JsonKey(name: 'serviceproviderid')
          this.serviceproviderid});

  factory _$LimitedVehicleData.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedVehicleDataFromJson(json);

  @override
  @JsonKey(name: 'productid')
  final String productid;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'vehicletype')
  final String vehicletype;
  @override
  @JsonKey(name: 'make')
  final String make;
  @override
  @JsonKey(name: 'model')
  final String model;
  @override
  @JsonKey(name: 'yearmade')
  final int yearmade;
  @override
  @JsonKey(name: 'milage')
  final int milage;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'tileimage')
  final String tileimage;
  @override
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime postedon;
  @override
  @JsonKey(name: 'addressarea')
  final Addressmodel addressarea;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;

  @override
  String toString() {
    return 'LimitedData.vehicle(productid: $productid, title: $title, vehicletype: $vehicletype, make: $make, model: $model, yearmade: $yearmade, milage: $milage, price: $price, tileimage: $tileimage, postedon: $postedon, addressarea: $addressarea, serviceproviderid: $serviceproviderid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedVehicleData &&
            (identical(other.productid, productid) ||
                const DeepCollectionEquality()
                    .equals(other.productid, productid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.vehicletype, vehicletype) ||
                const DeepCollectionEquality()
                    .equals(other.vehicletype, vehicletype)) &&
            (identical(other.make, make) ||
                const DeepCollectionEquality().equals(other.make, make)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.yearmade, yearmade) ||
                const DeepCollectionEquality()
                    .equals(other.yearmade, yearmade)) &&
            (identical(other.milage, milage) ||
                const DeepCollectionEquality().equals(other.milage, milage)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.postedon, postedon) ||
                const DeepCollectionEquality()
                    .equals(other.postedon, postedon)) &&
            (identical(other.addressarea, addressarea) ||
                const DeepCollectionEquality()
                    .equals(other.addressarea, addressarea)) &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(vehicletype) ^
      const DeepCollectionEquality().hash(make) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(yearmade) ^
      const DeepCollectionEquality().hash(milage) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(postedon) ^
      const DeepCollectionEquality().hash(addressarea) ^
      const DeepCollectionEquality().hash(serviceproviderid);

  @JsonKey(ignore: true)
  @override
  $LimitedVehicleDataCopyWith<LimitedVehicleData> get copyWith =>
      _$LimitedVehicleDataCopyWithImpl<LimitedVehicleData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult pet(
            @JsonKey(name: 'petclass')
                String petclass,
            @JsonKey(name: 'name')
                String name,
            @JsonKey(name: 'breed')
                String breed,
            @JsonKey(name: 'gender')
                String gender,
            @JsonKey(name: 'animalclass')
                String animalclass,
            @JsonKey(name: 'age')
                int age,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult package(
            @JsonKey(name: 'itemid') String itemid,
            @JsonKey(name: 'desc') String desc,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice),
    @required
        TResult product(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'tileimage') String tileimage,
            @JsonKey(name: 'reqqty') bool reqqty,
            @JsonKey(name: 'isvegetarian') bool isvegetarian,
            @JsonKey(name: 'spicetype') int spicetype,
            @JsonKey(name: 'ispackage') bool ispackage,
            @JsonKey(name: 'unitmeasure') String unitmeasure,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice,
            @JsonKey(name: 'varianttype') String varianttype,
            @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
            @JsonKey(name: 'contenttype') String contenttype),
    @required
        TResult vehicle(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'vehicletype')
                String vehicletype,
            @JsonKey(name: 'make')
                String make,
            @JsonKey(name: 'model')
                String model,
            @JsonKey(name: 'yearmade')
                int yearmade,
            @JsonKey(name: 'milage')
                int milage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult realEstate(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'listingtype')
                String listingtype,
            @JsonKey(name: 'propertytype')
                String propertytype,
            @JsonKey(name: 'numbedroom')
                int numbedroom,
            @JsonKey(name: 'numbathroom')
                int numbathroom,
            @JsonKey(name: 'sharingallowed')
                bool sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'floorNumber')
                int floorNumber,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'companyicon')
                String companyicon,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return vehicle(productid, title, vehicletype, make, model, yearmade, milage,
        price, tileimage, postedon, addressarea, serviceproviderid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(
        @JsonKey(name: 'petclass')
            String petclass,
        @JsonKey(name: 'name')
            String name,
        @JsonKey(name: 'breed')
            String breed,
        @JsonKey(name: 'gender')
            String gender,
        @JsonKey(name: 'animalclass')
            String animalclass,
        @JsonKey(name: 'age')
            int age,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult package(
        @JsonKey(name: 'itemid') String itemid,
        @JsonKey(name: 'desc') String desc,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice),
    TResult product(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'title') String title,
        @JsonKey(name: 'tileimage') String tileimage,
        @JsonKey(name: 'reqqty') bool reqqty,
        @JsonKey(name: 'isvegetarian') bool isvegetarian,
        @JsonKey(name: 'spicetype') int spicetype,
        @JsonKey(name: 'ispackage') bool ispackage,
        @JsonKey(name: 'unitmeasure') String unitmeasure,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice,
        @JsonKey(name: 'varianttype') String varianttype,
        @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
        @JsonKey(name: 'contenttype') String contenttype),
    TResult vehicle(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'vehicletype')
            String vehicletype,
        @JsonKey(name: 'make')
            String make,
        @JsonKey(name: 'model')
            String model,
        @JsonKey(name: 'yearmade')
            int yearmade,
        @JsonKey(name: 'milage')
            int milage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult realEstate(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'listingtype')
            String listingtype,
        @JsonKey(name: 'propertytype')
            String propertytype,
        @JsonKey(name: 'numbedroom')
            int numbedroom,
        @JsonKey(name: 'numbathroom')
            int numbathroom,
        @JsonKey(name: 'sharingallowed')
            bool sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'floorNumber')
            int floorNumber,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'companyicon')
            String companyicon,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (vehicle != null) {
      return vehicle(productid, title, vehicletype, make, model, yearmade,
          milage, price, tileimage, postedon, addressarea, serviceproviderid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(LimitedPetData value),
    @required TResult package(LimitedPackageData value),
    @required TResult product(LimitedProductData value),
    @required TResult vehicle(LimitedVehicleData value),
    @required TResult realEstate(LimitedRealEstateData value),
    @required TResult job(LimitedJobData value),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return vehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(LimitedPetData value),
    TResult package(LimitedPackageData value),
    TResult product(LimitedProductData value),
    TResult vehicle(LimitedVehicleData value),
    TResult realEstate(LimitedRealEstateData value),
    TResult job(LimitedJobData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (vehicle != null) {
      return vehicle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LimitedVehicleDataToJson(this)..['runtimeType'] = 'vehicle';
  }
}

abstract class LimitedVehicleData implements LimitedData {
  const factory LimitedVehicleData(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'vehicletype')
          String vehicletype,
      @JsonKey(name: 'make')
          String make,
      @JsonKey(name: 'model')
          String model,
      @JsonKey(name: 'yearmade')
          int yearmade,
      @JsonKey(name: 'milage')
          int milage,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid}) = _$LimitedVehicleData;

  factory LimitedVehicleData.fromJson(Map<String, dynamic> json) =
      _$LimitedVehicleData.fromJson;

  @JsonKey(name: 'productid')
  String get productid;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'vehicletype')
  String get vehicletype;
  @JsonKey(name: 'make')
  String get make;
  @JsonKey(name: 'model')
  String get model;
  @JsonKey(name: 'yearmade')
  int get yearmade;
  @JsonKey(name: 'milage')
  int get milage;
  @JsonKey(name: 'price')
  double get price;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get postedon;
  @JsonKey(name: 'addressarea')
  Addressmodel get addressarea;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(ignore: true)
  $LimitedVehicleDataCopyWith<LimitedVehicleData> get copyWith;
}

/// @nodoc
abstract class $LimitedRealEstateDataCopyWith<$Res> {
  factory $LimitedRealEstateDataCopyWith(LimitedRealEstateData value,
          $Res Function(LimitedRealEstateData) then) =
      _$LimitedRealEstateDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'listingtype')
          String listingtype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'numbedroom')
          int numbedroom,
      @JsonKey(name: 'numbathroom')
          int numbathroom,
      @JsonKey(name: 'sharingallowed')
          bool sharingallowed,
      @JsonKey(name: 'sqrfootage')
          int sqrfootage,
      @JsonKey(name: 'floorNumber')
          int floorNumber,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid});

  $AddressmodelCopyWith<$Res> get addressarea;
}

/// @nodoc
class _$LimitedRealEstateDataCopyWithImpl<$Res>
    extends _$LimitedDataCopyWithImpl<$Res>
    implements $LimitedRealEstateDataCopyWith<$Res> {
  _$LimitedRealEstateDataCopyWithImpl(
      LimitedRealEstateData _value, $Res Function(LimitedRealEstateData) _then)
      : super(_value, (v) => _then(v as LimitedRealEstateData));

  @override
  LimitedRealEstateData get _value => super._value as LimitedRealEstateData;

  @override
  $Res call({
    Object productid = freezed,
    Object listingtype = freezed,
    Object propertytype = freezed,
    Object numbedroom = freezed,
    Object numbathroom = freezed,
    Object sharingallowed = freezed,
    Object sqrfootage = freezed,
    Object floorNumber = freezed,
    Object price = freezed,
    Object addressarea = freezed,
    Object postedon = freezed,
    Object tileimage = freezed,
    Object serviceproviderid = freezed,
  }) {
    return _then(LimitedRealEstateData(
      productid: productid == freezed ? _value.productid : productid as String,
      listingtype:
          listingtype == freezed ? _value.listingtype : listingtype as String,
      propertytype: propertytype == freezed
          ? _value.propertytype
          : propertytype as String,
      numbedroom: numbedroom == freezed ? _value.numbedroom : numbedroom as int,
      numbathroom:
          numbathroom == freezed ? _value.numbathroom : numbathroom as int,
      sharingallowed: sharingallowed == freezed
          ? _value.sharingallowed
          : sharingallowed as bool,
      sqrfootage: sqrfootage == freezed ? _value.sqrfootage : sqrfootage as int,
      floorNumber:
          floorNumber == freezed ? _value.floorNumber : floorNumber as int,
      price: price == freezed ? _value.price : price as double,
      addressarea: addressarea == freezed
          ? _value.addressarea
          : addressarea as Addressmodel,
      postedon: postedon == freezed ? _value.postedon : postedon as DateTime,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
    ));
  }

  @override
  $AddressmodelCopyWith<$Res> get addressarea {
    if (_value.addressarea == null) {
      return null;
    }
    return $AddressmodelCopyWith<$Res>(_value.addressarea, (value) {
      return _then(_value.copyWith(addressarea: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedRealEstateData implements LimitedRealEstateData {
  const _$LimitedRealEstateData(
      {@JsonKey(name: 'productid')
          this.productid,
      @JsonKey(name: 'listingtype')
          this.listingtype,
      @JsonKey(name: 'propertytype')
          this.propertytype,
      @JsonKey(name: 'numbedroom')
          this.numbedroom,
      @JsonKey(name: 'numbathroom')
          this.numbathroom,
      @JsonKey(name: 'sharingallowed')
          this.sharingallowed,
      @JsonKey(name: 'sqrfootage')
          this.sqrfootage,
      @JsonKey(name: 'floorNumber')
          this.floorNumber,
      @JsonKey(name: 'price')
          this.price,
      @JsonKey(name: 'addressarea')
          this.addressarea,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.postedon,
      @JsonKey(name: 'tileimage')
          this.tileimage,
      @JsonKey(name: 'serviceproviderid')
          this.serviceproviderid});

  factory _$LimitedRealEstateData.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedRealEstateDataFromJson(json);

  @override
  @JsonKey(name: 'productid')
  final String productid;
  @override
  @JsonKey(name: 'listingtype')
  final String listingtype;
  @override
  @JsonKey(name: 'propertytype')
  final String propertytype;
  @override
  @JsonKey(name: 'numbedroom')
  final int numbedroom;
  @override
  @JsonKey(name: 'numbathroom')
  final int numbathroom;
  @override
  @JsonKey(name: 'sharingallowed')
  final bool sharingallowed;
  @override
  @JsonKey(name: 'sqrfootage')
  final int sqrfootage;
  @override
  @JsonKey(name: 'floorNumber')
  final int floorNumber;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'addressarea')
  final Addressmodel addressarea;
  @override
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime postedon;
  @override
  @JsonKey(name: 'tileimage')
  final String tileimage;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;

  @override
  String toString() {
    return 'LimitedData.realEstate(productid: $productid, listingtype: $listingtype, propertytype: $propertytype, numbedroom: $numbedroom, numbathroom: $numbathroom, sharingallowed: $sharingallowed, sqrfootage: $sqrfootage, floorNumber: $floorNumber, price: $price, addressarea: $addressarea, postedon: $postedon, tileimage: $tileimage, serviceproviderid: $serviceproviderid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedRealEstateData &&
            (identical(other.productid, productid) ||
                const DeepCollectionEquality()
                    .equals(other.productid, productid)) &&
            (identical(other.listingtype, listingtype) ||
                const DeepCollectionEquality()
                    .equals(other.listingtype, listingtype)) &&
            (identical(other.propertytype, propertytype) ||
                const DeepCollectionEquality()
                    .equals(other.propertytype, propertytype)) &&
            (identical(other.numbedroom, numbedroom) ||
                const DeepCollectionEquality()
                    .equals(other.numbedroom, numbedroom)) &&
            (identical(other.numbathroom, numbathroom) ||
                const DeepCollectionEquality()
                    .equals(other.numbathroom, numbathroom)) &&
            (identical(other.sharingallowed, sharingallowed) ||
                const DeepCollectionEquality()
                    .equals(other.sharingallowed, sharingallowed)) &&
            (identical(other.sqrfootage, sqrfootage) ||
                const DeepCollectionEquality()
                    .equals(other.sqrfootage, sqrfootage)) &&
            (identical(other.floorNumber, floorNumber) ||
                const DeepCollectionEquality()
                    .equals(other.floorNumber, floorNumber)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.addressarea, addressarea) ||
                const DeepCollectionEquality()
                    .equals(other.addressarea, addressarea)) &&
            (identical(other.postedon, postedon) ||
                const DeepCollectionEquality()
                    .equals(other.postedon, postedon)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productid) ^
      const DeepCollectionEquality().hash(listingtype) ^
      const DeepCollectionEquality().hash(propertytype) ^
      const DeepCollectionEquality().hash(numbedroom) ^
      const DeepCollectionEquality().hash(numbathroom) ^
      const DeepCollectionEquality().hash(sharingallowed) ^
      const DeepCollectionEquality().hash(sqrfootage) ^
      const DeepCollectionEquality().hash(floorNumber) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(addressarea) ^
      const DeepCollectionEquality().hash(postedon) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(serviceproviderid);

  @JsonKey(ignore: true)
  @override
  $LimitedRealEstateDataCopyWith<LimitedRealEstateData> get copyWith =>
      _$LimitedRealEstateDataCopyWithImpl<LimitedRealEstateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult pet(
            @JsonKey(name: 'petclass')
                String petclass,
            @JsonKey(name: 'name')
                String name,
            @JsonKey(name: 'breed')
                String breed,
            @JsonKey(name: 'gender')
                String gender,
            @JsonKey(name: 'animalclass')
                String animalclass,
            @JsonKey(name: 'age')
                int age,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult package(
            @JsonKey(name: 'itemid') String itemid,
            @JsonKey(name: 'desc') String desc,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice),
    @required
        TResult product(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'tileimage') String tileimage,
            @JsonKey(name: 'reqqty') bool reqqty,
            @JsonKey(name: 'isvegetarian') bool isvegetarian,
            @JsonKey(name: 'spicetype') int spicetype,
            @JsonKey(name: 'ispackage') bool ispackage,
            @JsonKey(name: 'unitmeasure') String unitmeasure,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice,
            @JsonKey(name: 'varianttype') String varianttype,
            @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
            @JsonKey(name: 'contenttype') String contenttype),
    @required
        TResult vehicle(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'vehicletype')
                String vehicletype,
            @JsonKey(name: 'make')
                String make,
            @JsonKey(name: 'model')
                String model,
            @JsonKey(name: 'yearmade')
                int yearmade,
            @JsonKey(name: 'milage')
                int milage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult realEstate(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'listingtype')
                String listingtype,
            @JsonKey(name: 'propertytype')
                String propertytype,
            @JsonKey(name: 'numbedroom')
                int numbedroom,
            @JsonKey(name: 'numbathroom')
                int numbathroom,
            @JsonKey(name: 'sharingallowed')
                bool sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'floorNumber')
                int floorNumber,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'companyicon')
                String companyicon,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return realEstate(
        productid,
        listingtype,
        propertytype,
        numbedroom,
        numbathroom,
        sharingallowed,
        sqrfootage,
        floorNumber,
        price,
        addressarea,
        postedon,
        tileimage,
        serviceproviderid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(
        @JsonKey(name: 'petclass')
            String petclass,
        @JsonKey(name: 'name')
            String name,
        @JsonKey(name: 'breed')
            String breed,
        @JsonKey(name: 'gender')
            String gender,
        @JsonKey(name: 'animalclass')
            String animalclass,
        @JsonKey(name: 'age')
            int age,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult package(
        @JsonKey(name: 'itemid') String itemid,
        @JsonKey(name: 'desc') String desc,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice),
    TResult product(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'title') String title,
        @JsonKey(name: 'tileimage') String tileimage,
        @JsonKey(name: 'reqqty') bool reqqty,
        @JsonKey(name: 'isvegetarian') bool isvegetarian,
        @JsonKey(name: 'spicetype') int spicetype,
        @JsonKey(name: 'ispackage') bool ispackage,
        @JsonKey(name: 'unitmeasure') String unitmeasure,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice,
        @JsonKey(name: 'varianttype') String varianttype,
        @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
        @JsonKey(name: 'contenttype') String contenttype),
    TResult vehicle(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'vehicletype')
            String vehicletype,
        @JsonKey(name: 'make')
            String make,
        @JsonKey(name: 'model')
            String model,
        @JsonKey(name: 'yearmade')
            int yearmade,
        @JsonKey(name: 'milage')
            int milage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult realEstate(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'listingtype')
            String listingtype,
        @JsonKey(name: 'propertytype')
            String propertytype,
        @JsonKey(name: 'numbedroom')
            int numbedroom,
        @JsonKey(name: 'numbathroom')
            int numbathroom,
        @JsonKey(name: 'sharingallowed')
            bool sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'floorNumber')
            int floorNumber,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'companyicon')
            String companyicon,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (realEstate != null) {
      return realEstate(
          productid,
          listingtype,
          propertytype,
          numbedroom,
          numbathroom,
          sharingallowed,
          sqrfootage,
          floorNumber,
          price,
          addressarea,
          postedon,
          tileimage,
          serviceproviderid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(LimitedPetData value),
    @required TResult package(LimitedPackageData value),
    @required TResult product(LimitedProductData value),
    @required TResult vehicle(LimitedVehicleData value),
    @required TResult realEstate(LimitedRealEstateData value),
    @required TResult job(LimitedJobData value),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return realEstate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(LimitedPetData value),
    TResult package(LimitedPackageData value),
    TResult product(LimitedProductData value),
    TResult vehicle(LimitedVehicleData value),
    TResult realEstate(LimitedRealEstateData value),
    TResult job(LimitedJobData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (realEstate != null) {
      return realEstate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LimitedRealEstateDataToJson(this)
      ..['runtimeType'] = 'realEstate';
  }
}

abstract class LimitedRealEstateData implements LimitedData {
  const factory LimitedRealEstateData(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'listingtype')
          String listingtype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'numbedroom')
          int numbedroom,
      @JsonKey(name: 'numbathroom')
          int numbathroom,
      @JsonKey(name: 'sharingallowed')
          bool sharingallowed,
      @JsonKey(name: 'sqrfootage')
          int sqrfootage,
      @JsonKey(name: 'floorNumber')
          int floorNumber,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid}) = _$LimitedRealEstateData;

  factory LimitedRealEstateData.fromJson(Map<String, dynamic> json) =
      _$LimitedRealEstateData.fromJson;

  @JsonKey(name: 'productid')
  String get productid;
  @JsonKey(name: 'listingtype')
  String get listingtype;
  @JsonKey(name: 'propertytype')
  String get propertytype;
  @JsonKey(name: 'numbedroom')
  int get numbedroom;
  @JsonKey(name: 'numbathroom')
  int get numbathroom;
  @JsonKey(name: 'sharingallowed')
  bool get sharingallowed;
  @JsonKey(name: 'sqrfootage')
  int get sqrfootage;
  @JsonKey(name: 'floorNumber')
  int get floorNumber;
  @JsonKey(name: 'price')
  double get price;
  @JsonKey(name: 'addressarea')
  Addressmodel get addressarea;
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get postedon;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(ignore: true)
  $LimitedRealEstateDataCopyWith<LimitedRealEstateData> get copyWith;
}

/// @nodoc
abstract class $LimitedJobDataCopyWith<$Res> {
  factory $LimitedJobDataCopyWith(
          LimitedJobData value, $Res Function(LimitedJobData) then) =
      _$LimitedJobDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'companyname')
          String companyname,
      @JsonKey(name: 'companyicon')
          String companyicon,
      @JsonKey(name: 'salaryrange')
          String salaryrange,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'jobtype')
          String jobtype,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon});

  $AddressmodelCopyWith<$Res> get addressarea;
}

/// @nodoc
class _$LimitedJobDataCopyWithImpl<$Res> extends _$LimitedDataCopyWithImpl<$Res>
    implements $LimitedJobDataCopyWith<$Res> {
  _$LimitedJobDataCopyWithImpl(
      LimitedJobData _value, $Res Function(LimitedJobData) _then)
      : super(_value, (v) => _then(v as LimitedJobData));

  @override
  LimitedJobData get _value => super._value as LimitedJobData;

  @override
  $Res call({
    Object productid = freezed,
    Object title = freezed,
    Object companyname = freezed,
    Object companyicon = freezed,
    Object salaryrange = freezed,
    Object addressarea = freezed,
    Object jobtype = freezed,
    Object postedon = freezed,
  }) {
    return _then(LimitedJobData(
      productid: productid == freezed ? _value.productid : productid as String,
      title: title == freezed ? _value.title : title as String,
      companyname:
          companyname == freezed ? _value.companyname : companyname as String,
      companyicon:
          companyicon == freezed ? _value.companyicon : companyicon as String,
      salaryrange:
          salaryrange == freezed ? _value.salaryrange : salaryrange as String,
      addressarea: addressarea == freezed
          ? _value.addressarea
          : addressarea as Addressmodel,
      jobtype: jobtype == freezed ? _value.jobtype : jobtype as String,
      postedon: postedon == freezed ? _value.postedon : postedon as DateTime,
    ));
  }

  @override
  $AddressmodelCopyWith<$Res> get addressarea {
    if (_value.addressarea == null) {
      return null;
    }
    return $AddressmodelCopyWith<$Res>(_value.addressarea, (value) {
      return _then(_value.copyWith(addressarea: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedJobData implements LimitedJobData {
  const _$LimitedJobData(
      {@JsonKey(name: 'productid')
          this.productid,
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'companyname')
          this.companyname,
      @JsonKey(name: 'companyicon')
          this.companyicon,
      @JsonKey(name: 'salaryrange')
          this.salaryrange,
      @JsonKey(name: 'addressarea')
          this.addressarea,
      @JsonKey(name: 'jobtype')
          this.jobtype,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.postedon});

  factory _$LimitedJobData.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedJobDataFromJson(json);

  @override
  @JsonKey(name: 'productid')
  final String productid;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'companyname')
  final String companyname;
  @override
  @JsonKey(name: 'companyicon')
  final String companyicon;
  @override
  @JsonKey(name: 'salaryrange')
  final String salaryrange;
  @override
  @JsonKey(name: 'addressarea')
  final Addressmodel addressarea;
  @override
  @JsonKey(name: 'jobtype')
  final String jobtype;
  @override
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime postedon;

  @override
  String toString() {
    return 'LimitedData.job(productid: $productid, title: $title, companyname: $companyname, companyicon: $companyicon, salaryrange: $salaryrange, addressarea: $addressarea, jobtype: $jobtype, postedon: $postedon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedJobData &&
            (identical(other.productid, productid) ||
                const DeepCollectionEquality()
                    .equals(other.productid, productid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.companyname, companyname) ||
                const DeepCollectionEquality()
                    .equals(other.companyname, companyname)) &&
            (identical(other.companyicon, companyicon) ||
                const DeepCollectionEquality()
                    .equals(other.companyicon, companyicon)) &&
            (identical(other.salaryrange, salaryrange) ||
                const DeepCollectionEquality()
                    .equals(other.salaryrange, salaryrange)) &&
            (identical(other.addressarea, addressarea) ||
                const DeepCollectionEquality()
                    .equals(other.addressarea, addressarea)) &&
            (identical(other.jobtype, jobtype) ||
                const DeepCollectionEquality()
                    .equals(other.jobtype, jobtype)) &&
            (identical(other.postedon, postedon) ||
                const DeepCollectionEquality()
                    .equals(other.postedon, postedon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(companyname) ^
      const DeepCollectionEquality().hash(companyicon) ^
      const DeepCollectionEquality().hash(salaryrange) ^
      const DeepCollectionEquality().hash(addressarea) ^
      const DeepCollectionEquality().hash(jobtype) ^
      const DeepCollectionEquality().hash(postedon);

  @JsonKey(ignore: true)
  @override
  $LimitedJobDataCopyWith<LimitedJobData> get copyWith =>
      _$LimitedJobDataCopyWithImpl<LimitedJobData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult pet(
            @JsonKey(name: 'petclass')
                String petclass,
            @JsonKey(name: 'name')
                String name,
            @JsonKey(name: 'breed')
                String breed,
            @JsonKey(name: 'gender')
                String gender,
            @JsonKey(name: 'animalclass')
                String animalclass,
            @JsonKey(name: 'age')
                int age,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult package(
            @JsonKey(name: 'itemid') String itemid,
            @JsonKey(name: 'desc') String desc,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice),
    @required
        TResult product(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'tileimage') String tileimage,
            @JsonKey(name: 'reqqty') bool reqqty,
            @JsonKey(name: 'isvegetarian') bool isvegetarian,
            @JsonKey(name: 'spicetype') int spicetype,
            @JsonKey(name: 'ispackage') bool ispackage,
            @JsonKey(name: 'unitmeasure') String unitmeasure,
            @JsonKey(name: 'origprice') double origprice,
            @JsonKey(name: 'discountedprice') double discountedprice,
            @JsonKey(name: 'varianttype') String varianttype,
            @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
            @JsonKey(name: 'contenttype') String contenttype),
    @required
        TResult vehicle(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'vehicletype')
                String vehicletype,
            @JsonKey(name: 'make')
                String make,
            @JsonKey(name: 'model')
                String model,
            @JsonKey(name: 'yearmade')
                int yearmade,
            @JsonKey(name: 'milage')
                int milage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult realEstate(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'listingtype')
                String listingtype,
            @JsonKey(name: 'propertytype')
                String propertytype,
            @JsonKey(name: 'numbedroom')
                int numbedroom,
            @JsonKey(name: 'numbathroom')
                int numbathroom,
            @JsonKey(name: 'sharingallowed')
                bool sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'floorNumber')
                int floorNumber,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'companyicon')
                String companyicon,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                Addressmodel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return job(productid, title, companyname, companyicon, salaryrange,
        addressarea, jobtype, postedon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(
        @JsonKey(name: 'petclass')
            String petclass,
        @JsonKey(name: 'name')
            String name,
        @JsonKey(name: 'breed')
            String breed,
        @JsonKey(name: 'gender')
            String gender,
        @JsonKey(name: 'animalclass')
            String animalclass,
        @JsonKey(name: 'age')
            int age,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult package(
        @JsonKey(name: 'itemid') String itemid,
        @JsonKey(name: 'desc') String desc,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice),
    TResult product(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'title') String title,
        @JsonKey(name: 'tileimage') String tileimage,
        @JsonKey(name: 'reqqty') bool reqqty,
        @JsonKey(name: 'isvegetarian') bool isvegetarian,
        @JsonKey(name: 'spicetype') int spicetype,
        @JsonKey(name: 'ispackage') bool ispackage,
        @JsonKey(name: 'unitmeasure') String unitmeasure,
        @JsonKey(name: 'origprice') double origprice,
        @JsonKey(name: 'discountedprice') double discountedprice,
        @JsonKey(name: 'varianttype') String varianttype,
        @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
        @JsonKey(name: 'contenttype') String contenttype),
    TResult vehicle(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'vehicletype')
            String vehicletype,
        @JsonKey(name: 'make')
            String make,
        @JsonKey(name: 'model')
            String model,
        @JsonKey(name: 'yearmade')
            int yearmade,
        @JsonKey(name: 'milage')
            int milage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult realEstate(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'listingtype')
            String listingtype,
        @JsonKey(name: 'propertytype')
            String propertytype,
        @JsonKey(name: 'numbedroom')
            int numbedroom,
        @JsonKey(name: 'numbathroom')
            int numbathroom,
        @JsonKey(name: 'sharingallowed')
            bool sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'floorNumber')
            int floorNumber,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'companyicon')
            String companyicon,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            Addressmodel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (job != null) {
      return job(productid, title, companyname, companyicon, salaryrange,
          addressarea, jobtype, postedon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(LimitedPetData value),
    @required TResult package(LimitedPackageData value),
    @required TResult product(LimitedProductData value),
    @required TResult vehicle(LimitedVehicleData value),
    @required TResult realEstate(LimitedRealEstateData value),
    @required TResult job(LimitedJobData value),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return job(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(LimitedPetData value),
    TResult package(LimitedPackageData value),
    TResult product(LimitedProductData value),
    TResult vehicle(LimitedVehicleData value),
    TResult realEstate(LimitedRealEstateData value),
    TResult job(LimitedJobData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (job != null) {
      return job(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LimitedJobDataToJson(this)..['runtimeType'] = 'job';
  }
}

abstract class LimitedJobData implements LimitedData {
  const factory LimitedJobData(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'companyname')
          String companyname,
      @JsonKey(name: 'companyicon')
          String companyicon,
      @JsonKey(name: 'salaryrange')
          String salaryrange,
      @JsonKey(name: 'addressarea')
          Addressmodel addressarea,
      @JsonKey(name: 'jobtype')
          String jobtype,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon}) = _$LimitedJobData;

  factory LimitedJobData.fromJson(Map<String, dynamic> json) =
      _$LimitedJobData.fromJson;

  @JsonKey(name: 'productid')
  String get productid;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'companyname')
  String get companyname;
  @JsonKey(name: 'companyicon')
  String get companyicon;
  @JsonKey(name: 'salaryrange')
  String get salaryrange;
  @JsonKey(name: 'addressarea')
  Addressmodel get addressarea;
  @JsonKey(name: 'jobtype')
  String get jobtype;
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get postedon;
  @JsonKey(ignore: true)
  $LimitedJobDataCopyWith<LimitedJobData> get copyWith;
}

Customerinfo _$CustomerinfoFromJson(Map<String, dynamic> json) {
  return _Customerinfo.fromJson(json);
}

/// @nodoc
class _$CustomerinfoTearOff {
  const _$CustomerinfoTearOff();

// ignore: unused_element
  _Customerinfo call(
      {@JsonKey(name: 'infotype') int infotype,
      @JsonKey(name: 'customerid') String customerid,
      @JsonKey(name: 'customeruserid') String customeruserid,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'maddr') Addressmodel maddr}) {
    return _Customerinfo(
      infotype: infotype,
      customerid: customerid,
      customeruserid: customeruserid,
      name: name,
      maddr: maddr,
    );
  }

// ignore: unused_element
  Customerinfo fromJson(Map<String, Object> json) {
    return Customerinfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Customerinfo = _$CustomerinfoTearOff();

/// @nodoc
mixin _$Customerinfo {
  @JsonKey(name: 'infotype')
  int get infotype;
  @JsonKey(name: 'customerid')
  String get customerid;
  @JsonKey(name: 'customeruserid')
  String get customeruserid;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'maddr')
  Addressmodel get maddr;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CustomerinfoCopyWith<Customerinfo> get copyWith;
}

/// @nodoc
abstract class $CustomerinfoCopyWith<$Res> {
  factory $CustomerinfoCopyWith(
          Customerinfo value, $Res Function(Customerinfo) then) =
      _$CustomerinfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'infotype') int infotype,
      @JsonKey(name: 'customerid') String customerid,
      @JsonKey(name: 'customeruserid') String customeruserid,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'maddr') Addressmodel maddr});

  $AddressmodelCopyWith<$Res> get maddr;
}

/// @nodoc
class _$CustomerinfoCopyWithImpl<$Res> implements $CustomerinfoCopyWith<$Res> {
  _$CustomerinfoCopyWithImpl(this._value, this._then);

  final Customerinfo _value;
  // ignore: unused_field
  final $Res Function(Customerinfo) _then;

  @override
  $Res call({
    Object infotype = freezed,
    Object customerid = freezed,
    Object customeruserid = freezed,
    Object name = freezed,
    Object maddr = freezed,
  }) {
    return _then(_value.copyWith(
      infotype: infotype == freezed ? _value.infotype : infotype as int,
      customerid:
          customerid == freezed ? _value.customerid : customerid as String,
      customeruserid: customeruserid == freezed
          ? _value.customeruserid
          : customeruserid as String,
      name: name == freezed ? _value.name : name as String,
      maddr: maddr == freezed ? _value.maddr : maddr as Addressmodel,
    ));
  }

  @override
  $AddressmodelCopyWith<$Res> get maddr {
    if (_value.maddr == null) {
      return null;
    }
    return $AddressmodelCopyWith<$Res>(_value.maddr, (value) {
      return _then(_value.copyWith(maddr: value));
    });
  }
}

/// @nodoc
abstract class _$CustomerinfoCopyWith<$Res>
    implements $CustomerinfoCopyWith<$Res> {
  factory _$CustomerinfoCopyWith(
          _Customerinfo value, $Res Function(_Customerinfo) then) =
      __$CustomerinfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'infotype') int infotype,
      @JsonKey(name: 'customerid') String customerid,
      @JsonKey(name: 'customeruserid') String customeruserid,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'maddr') Addressmodel maddr});

  @override
  $AddressmodelCopyWith<$Res> get maddr;
}

/// @nodoc
class __$CustomerinfoCopyWithImpl<$Res> extends _$CustomerinfoCopyWithImpl<$Res>
    implements _$CustomerinfoCopyWith<$Res> {
  __$CustomerinfoCopyWithImpl(
      _Customerinfo _value, $Res Function(_Customerinfo) _then)
      : super(_value, (v) => _then(v as _Customerinfo));

  @override
  _Customerinfo get _value => super._value as _Customerinfo;

  @override
  $Res call({
    Object infotype = freezed,
    Object customerid = freezed,
    Object customeruserid = freezed,
    Object name = freezed,
    Object maddr = freezed,
  }) {
    return _then(_Customerinfo(
      infotype: infotype == freezed ? _value.infotype : infotype as int,
      customerid:
          customerid == freezed ? _value.customerid : customerid as String,
      customeruserid: customeruserid == freezed
          ? _value.customeruserid
          : customeruserid as String,
      name: name == freezed ? _value.name : name as String,
      maddr: maddr == freezed ? _value.maddr : maddr as Addressmodel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Customerinfo implements _Customerinfo {
  _$_Customerinfo(
      {@JsonKey(name: 'infotype') this.infotype,
      @JsonKey(name: 'customerid') this.customerid,
      @JsonKey(name: 'customeruserid') this.customeruserid,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'maddr') this.maddr});

  factory _$_Customerinfo.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomerinfoFromJson(json);

  @override
  @JsonKey(name: 'infotype')
  final int infotype;
  @override
  @JsonKey(name: 'customerid')
  final String customerid;
  @override
  @JsonKey(name: 'customeruserid')
  final String customeruserid;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'maddr')
  final Addressmodel maddr;

  @override
  String toString() {
    return 'Customerinfo(infotype: $infotype, customerid: $customerid, customeruserid: $customeruserid, name: $name, maddr: $maddr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Customerinfo &&
            (identical(other.infotype, infotype) ||
                const DeepCollectionEquality()
                    .equals(other.infotype, infotype)) &&
            (identical(other.customerid, customerid) ||
                const DeepCollectionEquality()
                    .equals(other.customerid, customerid)) &&
            (identical(other.customeruserid, customeruserid) ||
                const DeepCollectionEquality()
                    .equals(other.customeruserid, customeruserid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.maddr, maddr) ||
                const DeepCollectionEquality().equals(other.maddr, maddr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(infotype) ^
      const DeepCollectionEquality().hash(customerid) ^
      const DeepCollectionEquality().hash(customeruserid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(maddr);

  @JsonKey(ignore: true)
  @override
  _$CustomerinfoCopyWith<_Customerinfo> get copyWith =>
      __$CustomerinfoCopyWithImpl<_Customerinfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomerinfoToJson(this);
  }
}

abstract class _Customerinfo implements Customerinfo {
  factory _Customerinfo(
      {@JsonKey(name: 'infotype') int infotype,
      @JsonKey(name: 'customerid') String customerid,
      @JsonKey(name: 'customeruserid') String customeruserid,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'maddr') Addressmodel maddr}) = _$_Customerinfo;

  factory _Customerinfo.fromJson(Map<String, dynamic> json) =
      _$_Customerinfo.fromJson;

  @override
  @JsonKey(name: 'infotype')
  int get infotype;
  @override
  @JsonKey(name: 'customerid')
  String get customerid;
  @override
  @JsonKey(name: 'customeruserid')
  String get customeruserid;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'maddr')
  Addressmodel get maddr;
  @override
  @JsonKey(ignore: true)
  _$CustomerinfoCopyWith<_Customerinfo> get copyWith;
}

Addressmodel _$AddressmodelFromJson(Map<String, dynamic> json) {
  return _Addressmodel.fromJson(json);
}

/// @nodoc
class _$AddressmodelTearOff {
  const _$AddressmodelTearOff();

// ignore: unused_element
  _Addressmodel call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'village') String village,
      @JsonKey(name: 'areaname') String areaname,
      @JsonKey(name: 'addressinfo') String addressinfo,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi}) {
    return _Addressmodel(
      id: id,
      country: country,
      state: state,
      district: district,
      village: village,
      areaname: areaname,
      addressinfo: addressinfo,
      lati: lati,
      longi: longi,
    );
  }

// ignore: unused_element
  Addressmodel fromJson(Map<String, Object> json) {
    return Addressmodel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Addressmodel = _$AddressmodelTearOff();

/// @nodoc
mixin _$Addressmodel {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'country')
  String get country;
  @JsonKey(name: 'state')
  String get state;
  @JsonKey(name: 'district')
  String get district;
  @JsonKey(name: 'village')
  String get village;
  @JsonKey(name: 'areaname')
  String get areaname;
  @JsonKey(name: 'addressinfo')
  String get addressinfo;
  @JsonKey(name: 'lati')
  double get lati;
  @JsonKey(name: 'longi')
  double get longi;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AddressmodelCopyWith<Addressmodel> get copyWith;
}

/// @nodoc
abstract class $AddressmodelCopyWith<$Res> {
  factory $AddressmodelCopyWith(
          Addressmodel value, $Res Function(Addressmodel) then) =
      _$AddressmodelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'village') String village,
      @JsonKey(name: 'areaname') String areaname,
      @JsonKey(name: 'addressinfo') String addressinfo,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi});
}

/// @nodoc
class _$AddressmodelCopyWithImpl<$Res> implements $AddressmodelCopyWith<$Res> {
  _$AddressmodelCopyWithImpl(this._value, this._then);

  final Addressmodel _value;
  // ignore: unused_field
  final $Res Function(Addressmodel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object country = freezed,
    Object state = freezed,
    Object district = freezed,
    Object village = freezed,
    Object areaname = freezed,
    Object addressinfo = freezed,
    Object lati = freezed,
    Object longi = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      country: country == freezed ? _value.country : country as String,
      state: state == freezed ? _value.state : state as String,
      district: district == freezed ? _value.district : district as String,
      village: village == freezed ? _value.village : village as String,
      areaname: areaname == freezed ? _value.areaname : areaname as String,
      addressinfo:
          addressinfo == freezed ? _value.addressinfo : addressinfo as String,
      lati: lati == freezed ? _value.lati : lati as double,
      longi: longi == freezed ? _value.longi : longi as double,
    ));
  }
}

/// @nodoc
abstract class _$AddressmodelCopyWith<$Res>
    implements $AddressmodelCopyWith<$Res> {
  factory _$AddressmodelCopyWith(
          _Addressmodel value, $Res Function(_Addressmodel) then) =
      __$AddressmodelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'village') String village,
      @JsonKey(name: 'areaname') String areaname,
      @JsonKey(name: 'addressinfo') String addressinfo,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi});
}

/// @nodoc
class __$AddressmodelCopyWithImpl<$Res> extends _$AddressmodelCopyWithImpl<$Res>
    implements _$AddressmodelCopyWith<$Res> {
  __$AddressmodelCopyWithImpl(
      _Addressmodel _value, $Res Function(_Addressmodel) _then)
      : super(_value, (v) => _then(v as _Addressmodel));

  @override
  _Addressmodel get _value => super._value as _Addressmodel;

  @override
  $Res call({
    Object id = freezed,
    Object country = freezed,
    Object state = freezed,
    Object district = freezed,
    Object village = freezed,
    Object areaname = freezed,
    Object addressinfo = freezed,
    Object lati = freezed,
    Object longi = freezed,
  }) {
    return _then(_Addressmodel(
      id: id == freezed ? _value.id : id as String,
      country: country == freezed ? _value.country : country as String,
      state: state == freezed ? _value.state : state as String,
      district: district == freezed ? _value.district : district as String,
      village: village == freezed ? _value.village : village as String,
      areaname: areaname == freezed ? _value.areaname : areaname as String,
      addressinfo:
          addressinfo == freezed ? _value.addressinfo : addressinfo as String,
      lati: lati == freezed ? _value.lati : lati as double,
      longi: longi == freezed ? _value.longi : longi as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Addressmodel implements _Addressmodel {
  _$_Addressmodel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'state') this.state,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'village') this.village,
      @JsonKey(name: 'areaname') this.areaname,
      @JsonKey(name: 'addressinfo') this.addressinfo,
      @JsonKey(name: 'lati') this.lati,
      @JsonKey(name: 'longi') this.longi});

  factory _$_Addressmodel.fromJson(Map<String, dynamic> json) =>
      _$_$_AddressmodelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'state')
  final String state;
  @override
  @JsonKey(name: 'district')
  final String district;
  @override
  @JsonKey(name: 'village')
  final String village;
  @override
  @JsonKey(name: 'areaname')
  final String areaname;
  @override
  @JsonKey(name: 'addressinfo')
  final String addressinfo;
  @override
  @JsonKey(name: 'lati')
  final double lati;
  @override
  @JsonKey(name: 'longi')
  final double longi;

  @override
  String toString() {
    return 'Addressmodel(id: $id, country: $country, state: $state, district: $district, village: $village, areaname: $areaname, addressinfo: $addressinfo, lati: $lati, longi: $longi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Addressmodel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.village, village) ||
                const DeepCollectionEquality()
                    .equals(other.village, village)) &&
            (identical(other.areaname, areaname) ||
                const DeepCollectionEquality()
                    .equals(other.areaname, areaname)) &&
            (identical(other.addressinfo, addressinfo) ||
                const DeepCollectionEquality()
                    .equals(other.addressinfo, addressinfo)) &&
            (identical(other.lati, lati) ||
                const DeepCollectionEquality().equals(other.lati, lati)) &&
            (identical(other.longi, longi) ||
                const DeepCollectionEquality().equals(other.longi, longi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(village) ^
      const DeepCollectionEquality().hash(areaname) ^
      const DeepCollectionEquality().hash(addressinfo) ^
      const DeepCollectionEquality().hash(lati) ^
      const DeepCollectionEquality().hash(longi);

  @JsonKey(ignore: true)
  @override
  _$AddressmodelCopyWith<_Addressmodel> get copyWith =>
      __$AddressmodelCopyWithImpl<_Addressmodel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddressmodelToJson(this);
  }
}

abstract class _Addressmodel implements Addressmodel {
  factory _Addressmodel(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'village') String village,
      @JsonKey(name: 'areaname') String areaname,
      @JsonKey(name: 'addressinfo') String addressinfo,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi}) = _$_Addressmodel;

  factory _Addressmodel.fromJson(Map<String, dynamic> json) =
      _$_Addressmodel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'state')
  String get state;
  @override
  @JsonKey(name: 'district')
  String get district;
  @override
  @JsonKey(name: 'village')
  String get village;
  @override
  @JsonKey(name: 'areaname')
  String get areaname;
  @override
  @JsonKey(name: 'addressinfo')
  String get addressinfo;
  @override
  @JsonKey(name: 'lati')
  double get lati;
  @override
  @JsonKey(name: 'longi')
  double get longi;
  @override
  @JsonKey(ignore: true)
  _$AddressmodelCopyWith<_Addressmodel> get copyWith;
}

ProductFilterResultModel _$ProductFilterResultModelFromJson(
    Map<String, dynamic> json) {
  return _ProductFilterResultModel.fromJson(json);
}

/// @nodoc
class _$ProductFilterResultModelTearOff {
  const _$ProductFilterResultModelTearOff();

// ignore: unused_element
  _ProductFilterResultModel call(
      {@JsonKey(name: 'totalcount') int totalcount,
      @JsonKey(name: 'serviceproviderid') String serviceproviderid,
      @JsonKey(name: 'docwithdata1') List<LimitedProductData> docwithdata1,
      @JsonKey(name: 'docwithdata2') List<LimitedJobData> docwithdata2,
      @JsonKey(name: 'docwithdata3') List<LimitedRealEstateData> docwithdata3,
      @JsonKey(name: 'docwithdata4') List<LimitedVehicleData> docwithdata4,
      @JsonKey(name: 'docwithdata5') List<LimitedPetData> docwithdata5,
      @JsonKey(name: 'pidlist') List<String> pidlist,
      @JsonKey(name: 'diminfo') List<DimData> diminfo,
      @JsonKey(name: 'catinfo') List<Categoryinfo> catinfo,
      @JsonKey(name: 'topleveltiletype') String topleveltiletype,
      @JsonKey(name: 'hasmoreresults') bool hasmoreresults}) {
    return _ProductFilterResultModel(
      totalcount: totalcount,
      serviceproviderid: serviceproviderid,
      docwithdata1: docwithdata1,
      docwithdata2: docwithdata2,
      docwithdata3: docwithdata3,
      docwithdata4: docwithdata4,
      docwithdata5: docwithdata5,
      pidlist: pidlist,
      diminfo: diminfo,
      catinfo: catinfo,
      topleveltiletype: topleveltiletype,
      hasmoreresults: hasmoreresults,
    );
  }

// ignore: unused_element
  ProductFilterResultModel fromJson(Map<String, Object> json) {
    return ProductFilterResultModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductFilterResultModel = _$ProductFilterResultModelTearOff();

/// @nodoc
mixin _$ProductFilterResultModel {
  @JsonKey(name: 'totalcount')
  int get totalcount;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'docwithdata1')
  List<LimitedProductData> get docwithdata1;
  @JsonKey(name: 'docwithdata2')
  List<LimitedJobData> get docwithdata2;
  @JsonKey(name: 'docwithdata3')
  List<LimitedRealEstateData> get docwithdata3;
  @JsonKey(name: 'docwithdata4')
  List<LimitedVehicleData> get docwithdata4;
  @JsonKey(name: 'docwithdata5')
  List<LimitedPetData> get docwithdata5;
  @JsonKey(name: 'pidlist')
  List<String> get pidlist;
  @JsonKey(name: 'diminfo')
  List<DimData> get diminfo;
  @JsonKey(name: 'catinfo')
  List<Categoryinfo> get catinfo;
  @JsonKey(name: 'topleveltiletype')
  String get topleveltiletype;
  @JsonKey(name: 'hasmoreresults')
  bool get hasmoreresults;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductFilterResultModelCopyWith<ProductFilterResultModel> get copyWith;
}

/// @nodoc
abstract class $ProductFilterResultModelCopyWith<$Res> {
  factory $ProductFilterResultModelCopyWith(ProductFilterResultModel value,
          $Res Function(ProductFilterResultModel) then) =
      _$ProductFilterResultModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'totalcount') int totalcount,
      @JsonKey(name: 'serviceproviderid') String serviceproviderid,
      @JsonKey(name: 'docwithdata1') List<LimitedProductData> docwithdata1,
      @JsonKey(name: 'docwithdata2') List<LimitedJobData> docwithdata2,
      @JsonKey(name: 'docwithdata3') List<LimitedRealEstateData> docwithdata3,
      @JsonKey(name: 'docwithdata4') List<LimitedVehicleData> docwithdata4,
      @JsonKey(name: 'docwithdata5') List<LimitedPetData> docwithdata5,
      @JsonKey(name: 'pidlist') List<String> pidlist,
      @JsonKey(name: 'diminfo') List<DimData> diminfo,
      @JsonKey(name: 'catinfo') List<Categoryinfo> catinfo,
      @JsonKey(name: 'topleveltiletype') String topleveltiletype,
      @JsonKey(name: 'hasmoreresults') bool hasmoreresults});
}

/// @nodoc
class _$ProductFilterResultModelCopyWithImpl<$Res>
    implements $ProductFilterResultModelCopyWith<$Res> {
  _$ProductFilterResultModelCopyWithImpl(this._value, this._then);

  final ProductFilterResultModel _value;
  // ignore: unused_field
  final $Res Function(ProductFilterResultModel) _then;

  @override
  $Res call({
    Object totalcount = freezed,
    Object serviceproviderid = freezed,
    Object docwithdata1 = freezed,
    Object docwithdata2 = freezed,
    Object docwithdata3 = freezed,
    Object docwithdata4 = freezed,
    Object docwithdata5 = freezed,
    Object pidlist = freezed,
    Object diminfo = freezed,
    Object catinfo = freezed,
    Object topleveltiletype = freezed,
    Object hasmoreresults = freezed,
  }) {
    return _then(_value.copyWith(
      totalcount: totalcount == freezed ? _value.totalcount : totalcount as int,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      docwithdata1: docwithdata1 == freezed
          ? _value.docwithdata1
          : docwithdata1 as List<LimitedProductData>,
      docwithdata2: docwithdata2 == freezed
          ? _value.docwithdata2
          : docwithdata2 as List<LimitedJobData>,
      docwithdata3: docwithdata3 == freezed
          ? _value.docwithdata3
          : docwithdata3 as List<LimitedRealEstateData>,
      docwithdata4: docwithdata4 == freezed
          ? _value.docwithdata4
          : docwithdata4 as List<LimitedVehicleData>,
      docwithdata5: docwithdata5 == freezed
          ? _value.docwithdata5
          : docwithdata5 as List<LimitedPetData>,
      pidlist: pidlist == freezed ? _value.pidlist : pidlist as List<String>,
      diminfo: diminfo == freezed ? _value.diminfo : diminfo as List<DimData>,
      catinfo:
          catinfo == freezed ? _value.catinfo : catinfo as List<Categoryinfo>,
      topleveltiletype: topleveltiletype == freezed
          ? _value.topleveltiletype
          : topleveltiletype as String,
      hasmoreresults: hasmoreresults == freezed
          ? _value.hasmoreresults
          : hasmoreresults as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProductFilterResultModelCopyWith<$Res>
    implements $ProductFilterResultModelCopyWith<$Res> {
  factory _$ProductFilterResultModelCopyWith(_ProductFilterResultModel value,
          $Res Function(_ProductFilterResultModel) then) =
      __$ProductFilterResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'totalcount') int totalcount,
      @JsonKey(name: 'serviceproviderid') String serviceproviderid,
      @JsonKey(name: 'docwithdata1') List<LimitedProductData> docwithdata1,
      @JsonKey(name: 'docwithdata2') List<LimitedJobData> docwithdata2,
      @JsonKey(name: 'docwithdata3') List<LimitedRealEstateData> docwithdata3,
      @JsonKey(name: 'docwithdata4') List<LimitedVehicleData> docwithdata4,
      @JsonKey(name: 'docwithdata5') List<LimitedPetData> docwithdata5,
      @JsonKey(name: 'pidlist') List<String> pidlist,
      @JsonKey(name: 'diminfo') List<DimData> diminfo,
      @JsonKey(name: 'catinfo') List<Categoryinfo> catinfo,
      @JsonKey(name: 'topleveltiletype') String topleveltiletype,
      @JsonKey(name: 'hasmoreresults') bool hasmoreresults});
}

/// @nodoc
class __$ProductFilterResultModelCopyWithImpl<$Res>
    extends _$ProductFilterResultModelCopyWithImpl<$Res>
    implements _$ProductFilterResultModelCopyWith<$Res> {
  __$ProductFilterResultModelCopyWithImpl(_ProductFilterResultModel _value,
      $Res Function(_ProductFilterResultModel) _then)
      : super(_value, (v) => _then(v as _ProductFilterResultModel));

  @override
  _ProductFilterResultModel get _value =>
      super._value as _ProductFilterResultModel;

  @override
  $Res call({
    Object totalcount = freezed,
    Object serviceproviderid = freezed,
    Object docwithdata1 = freezed,
    Object docwithdata2 = freezed,
    Object docwithdata3 = freezed,
    Object docwithdata4 = freezed,
    Object docwithdata5 = freezed,
    Object pidlist = freezed,
    Object diminfo = freezed,
    Object catinfo = freezed,
    Object topleveltiletype = freezed,
    Object hasmoreresults = freezed,
  }) {
    return _then(_ProductFilterResultModel(
      totalcount: totalcount == freezed ? _value.totalcount : totalcount as int,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      docwithdata1: docwithdata1 == freezed
          ? _value.docwithdata1
          : docwithdata1 as List<LimitedProductData>,
      docwithdata2: docwithdata2 == freezed
          ? _value.docwithdata2
          : docwithdata2 as List<LimitedJobData>,
      docwithdata3: docwithdata3 == freezed
          ? _value.docwithdata3
          : docwithdata3 as List<LimitedRealEstateData>,
      docwithdata4: docwithdata4 == freezed
          ? _value.docwithdata4
          : docwithdata4 as List<LimitedVehicleData>,
      docwithdata5: docwithdata5 == freezed
          ? _value.docwithdata5
          : docwithdata5 as List<LimitedPetData>,
      pidlist: pidlist == freezed ? _value.pidlist : pidlist as List<String>,
      diminfo: diminfo == freezed ? _value.diminfo : diminfo as List<DimData>,
      catinfo:
          catinfo == freezed ? _value.catinfo : catinfo as List<Categoryinfo>,
      topleveltiletype: topleveltiletype == freezed
          ? _value.topleveltiletype
          : topleveltiletype as String,
      hasmoreresults: hasmoreresults == freezed
          ? _value.hasmoreresults
          : hasmoreresults as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductFilterResultModel implements _ProductFilterResultModel {
  _$_ProductFilterResultModel(
      {@JsonKey(name: 'totalcount') this.totalcount,
      @JsonKey(name: 'serviceproviderid') this.serviceproviderid,
      @JsonKey(name: 'docwithdata1') this.docwithdata1,
      @JsonKey(name: 'docwithdata2') this.docwithdata2,
      @JsonKey(name: 'docwithdata3') this.docwithdata3,
      @JsonKey(name: 'docwithdata4') this.docwithdata4,
      @JsonKey(name: 'docwithdata5') this.docwithdata5,
      @JsonKey(name: 'pidlist') this.pidlist,
      @JsonKey(name: 'diminfo') this.diminfo,
      @JsonKey(name: 'catinfo') this.catinfo,
      @JsonKey(name: 'topleveltiletype') this.topleveltiletype,
      @JsonKey(name: 'hasmoreresults') this.hasmoreresults});

  factory _$_ProductFilterResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductFilterResultModelFromJson(json);

  @override
  @JsonKey(name: 'totalcount')
  final int totalcount;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'docwithdata1')
  final List<LimitedProductData> docwithdata1;
  @override
  @JsonKey(name: 'docwithdata2')
  final List<LimitedJobData> docwithdata2;
  @override
  @JsonKey(name: 'docwithdata3')
  final List<LimitedRealEstateData> docwithdata3;
  @override
  @JsonKey(name: 'docwithdata4')
  final List<LimitedVehicleData> docwithdata4;
  @override
  @JsonKey(name: 'docwithdata5')
  final List<LimitedPetData> docwithdata5;
  @override
  @JsonKey(name: 'pidlist')
  final List<String> pidlist;
  @override
  @JsonKey(name: 'diminfo')
  final List<DimData> diminfo;
  @override
  @JsonKey(name: 'catinfo')
  final List<Categoryinfo> catinfo;
  @override
  @JsonKey(name: 'topleveltiletype')
  final String topleveltiletype;
  @override
  @JsonKey(name: 'hasmoreresults')
  final bool hasmoreresults;

  @override
  String toString() {
    return 'ProductFilterResultModel(totalcount: $totalcount, serviceproviderid: $serviceproviderid, docwithdata1: $docwithdata1, docwithdata2: $docwithdata2, docwithdata3: $docwithdata3, docwithdata4: $docwithdata4, docwithdata5: $docwithdata5, pidlist: $pidlist, diminfo: $diminfo, catinfo: $catinfo, topleveltiletype: $topleveltiletype, hasmoreresults: $hasmoreresults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductFilterResultModel &&
            (identical(other.totalcount, totalcount) ||
                const DeepCollectionEquality()
                    .equals(other.totalcount, totalcount)) &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)) &&
            (identical(other.docwithdata1, docwithdata1) ||
                const DeepCollectionEquality()
                    .equals(other.docwithdata1, docwithdata1)) &&
            (identical(other.docwithdata2, docwithdata2) ||
                const DeepCollectionEquality()
                    .equals(other.docwithdata2, docwithdata2)) &&
            (identical(other.docwithdata3, docwithdata3) ||
                const DeepCollectionEquality()
                    .equals(other.docwithdata3, docwithdata3)) &&
            (identical(other.docwithdata4, docwithdata4) ||
                const DeepCollectionEquality()
                    .equals(other.docwithdata4, docwithdata4)) &&
            (identical(other.docwithdata5, docwithdata5) ||
                const DeepCollectionEquality()
                    .equals(other.docwithdata5, docwithdata5)) &&
            (identical(other.pidlist, pidlist) ||
                const DeepCollectionEquality()
                    .equals(other.pidlist, pidlist)) &&
            (identical(other.diminfo, diminfo) ||
                const DeepCollectionEquality()
                    .equals(other.diminfo, diminfo)) &&
            (identical(other.catinfo, catinfo) ||
                const DeepCollectionEquality()
                    .equals(other.catinfo, catinfo)) &&
            (identical(other.topleveltiletype, topleveltiletype) ||
                const DeepCollectionEquality()
                    .equals(other.topleveltiletype, topleveltiletype)) &&
            (identical(other.hasmoreresults, hasmoreresults) ||
                const DeepCollectionEquality()
                    .equals(other.hasmoreresults, hasmoreresults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalcount) ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(docwithdata1) ^
      const DeepCollectionEquality().hash(docwithdata2) ^
      const DeepCollectionEquality().hash(docwithdata3) ^
      const DeepCollectionEquality().hash(docwithdata4) ^
      const DeepCollectionEquality().hash(docwithdata5) ^
      const DeepCollectionEquality().hash(pidlist) ^
      const DeepCollectionEquality().hash(diminfo) ^
      const DeepCollectionEquality().hash(catinfo) ^
      const DeepCollectionEquality().hash(topleveltiletype) ^
      const DeepCollectionEquality().hash(hasmoreresults);

  @JsonKey(ignore: true)
  @override
  _$ProductFilterResultModelCopyWith<_ProductFilterResultModel> get copyWith =>
      __$ProductFilterResultModelCopyWithImpl<_ProductFilterResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductFilterResultModelToJson(this);
  }
}

abstract class _ProductFilterResultModel implements ProductFilterResultModel {
  factory _ProductFilterResultModel(
      {@JsonKey(name: 'totalcount')
          int totalcount,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'docwithdata1')
          List<LimitedProductData> docwithdata1,
      @JsonKey(name: 'docwithdata2')
          List<LimitedJobData> docwithdata2,
      @JsonKey(name: 'docwithdata3')
          List<LimitedRealEstateData> docwithdata3,
      @JsonKey(name: 'docwithdata4')
          List<LimitedVehicleData> docwithdata4,
      @JsonKey(name: 'docwithdata5')
          List<LimitedPetData> docwithdata5,
      @JsonKey(name: 'pidlist')
          List<String> pidlist,
      @JsonKey(name: 'diminfo')
          List<DimData> diminfo,
      @JsonKey(name: 'catinfo')
          List<Categoryinfo> catinfo,
      @JsonKey(name: 'topleveltiletype')
          String topleveltiletype,
      @JsonKey(name: 'hasmoreresults')
          bool hasmoreresults}) = _$_ProductFilterResultModel;

  factory _ProductFilterResultModel.fromJson(Map<String, dynamic> json) =
      _$_ProductFilterResultModel.fromJson;

  @override
  @JsonKey(name: 'totalcount')
  int get totalcount;
  @override
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @override
  @JsonKey(name: 'docwithdata1')
  List<LimitedProductData> get docwithdata1;
  @override
  @JsonKey(name: 'docwithdata2')
  List<LimitedJobData> get docwithdata2;
  @override
  @JsonKey(name: 'docwithdata3')
  List<LimitedRealEstateData> get docwithdata3;
  @override
  @JsonKey(name: 'docwithdata4')
  List<LimitedVehicleData> get docwithdata4;
  @override
  @JsonKey(name: 'docwithdata5')
  List<LimitedPetData> get docwithdata5;
  @override
  @JsonKey(name: 'pidlist')
  List<String> get pidlist;
  @override
  @JsonKey(name: 'diminfo')
  List<DimData> get diminfo;
  @override
  @JsonKey(name: 'catinfo')
  List<Categoryinfo> get catinfo;
  @override
  @JsonKey(name: 'topleveltiletype')
  String get topleveltiletype;
  @override
  @JsonKey(name: 'hasmoreresults')
  bool get hasmoreresults;
  @override
  @JsonKey(ignore: true)
  _$ProductFilterResultModelCopyWith<_ProductFilterResultModel> get copyWith;
}

SpatialData _$SpatialDataFromJson(Map<String, dynamic> json) {
  return _SpatialData.fromJson(json);
}

/// @nodoc
class _$SpatialDataTearOff {
  const _$SpatialDataTearOff();

// ignore: unused_element
  _SpatialData call(
      {@JsonKey(name: 'locationname') List<AreaInfo> locationname,
      @JsonKey(name: 'curstatename') String curStatename,
      @JsonKey(name: 'statename') String statename,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi,
      @JsonKey(name: 'radius') int radius,
      @JsonKey(name: 'type') int type}) {
    return _SpatialData(
      locationname: locationname,
      curStatename: curStatename,
      statename: statename,
      lati: lati,
      longi: longi,
      radius: radius,
      type: type,
    );
  }

// ignore: unused_element
  SpatialData fromJson(Map<String, Object> json) {
    return SpatialData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SpatialData = _$SpatialDataTearOff();

/// @nodoc
mixin _$SpatialData {
  @JsonKey(name: 'locationname')
  List<AreaInfo> get locationname;
  @JsonKey(name: 'curstatename')
  String get curStatename;
  @JsonKey(name: 'statename')
  String get statename;
  @JsonKey(name: 'lati')
  double get lati;
  @JsonKey(name: 'longi')
  double get longi;
  @JsonKey(name: 'radius')
  int get radius;
  @JsonKey(name: 'type')
  int get type;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SpatialDataCopyWith<SpatialData> get copyWith;
}

/// @nodoc
abstract class $SpatialDataCopyWith<$Res> {
  factory $SpatialDataCopyWith(
          SpatialData value, $Res Function(SpatialData) then) =
      _$SpatialDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'locationname') List<AreaInfo> locationname,
      @JsonKey(name: 'curstatename') String curStatename,
      @JsonKey(name: 'statename') String statename,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi,
      @JsonKey(name: 'radius') int radius,
      @JsonKey(name: 'type') int type});
}

/// @nodoc
class _$SpatialDataCopyWithImpl<$Res> implements $SpatialDataCopyWith<$Res> {
  _$SpatialDataCopyWithImpl(this._value, this._then);

  final SpatialData _value;
  // ignore: unused_field
  final $Res Function(SpatialData) _then;

  @override
  $Res call({
    Object locationname = freezed,
    Object curStatename = freezed,
    Object statename = freezed,
    Object lati = freezed,
    Object longi = freezed,
    Object radius = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      locationname: locationname == freezed
          ? _value.locationname
          : locationname as List<AreaInfo>,
      curStatename: curStatename == freezed
          ? _value.curStatename
          : curStatename as String,
      statename: statename == freezed ? _value.statename : statename as String,
      lati: lati == freezed ? _value.lati : lati as double,
      longi: longi == freezed ? _value.longi : longi as double,
      radius: radius == freezed ? _value.radius : radius as int,
      type: type == freezed ? _value.type : type as int,
    ));
  }
}

/// @nodoc
abstract class _$SpatialDataCopyWith<$Res>
    implements $SpatialDataCopyWith<$Res> {
  factory _$SpatialDataCopyWith(
          _SpatialData value, $Res Function(_SpatialData) then) =
      __$SpatialDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'locationname') List<AreaInfo> locationname,
      @JsonKey(name: 'curstatename') String curStatename,
      @JsonKey(name: 'statename') String statename,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi,
      @JsonKey(name: 'radius') int radius,
      @JsonKey(name: 'type') int type});
}

/// @nodoc
class __$SpatialDataCopyWithImpl<$Res> extends _$SpatialDataCopyWithImpl<$Res>
    implements _$SpatialDataCopyWith<$Res> {
  __$SpatialDataCopyWithImpl(
      _SpatialData _value, $Res Function(_SpatialData) _then)
      : super(_value, (v) => _then(v as _SpatialData));

  @override
  _SpatialData get _value => super._value as _SpatialData;

  @override
  $Res call({
    Object locationname = freezed,
    Object curStatename = freezed,
    Object statename = freezed,
    Object lati = freezed,
    Object longi = freezed,
    Object radius = freezed,
    Object type = freezed,
  }) {
    return _then(_SpatialData(
      locationname: locationname == freezed
          ? _value.locationname
          : locationname as List<AreaInfo>,
      curStatename: curStatename == freezed
          ? _value.curStatename
          : curStatename as String,
      statename: statename == freezed ? _value.statename : statename as String,
      lati: lati == freezed ? _value.lati : lati as double,
      longi: longi == freezed ? _value.longi : longi as double,
      radius: radius == freezed ? _value.radius : radius as int,
      type: type == freezed ? _value.type : type as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SpatialData implements _SpatialData {
  _$_SpatialData(
      {@JsonKey(name: 'locationname') this.locationname,
      @JsonKey(name: 'curstatename') this.curStatename,
      @JsonKey(name: 'statename') this.statename,
      @JsonKey(name: 'lati') this.lati,
      @JsonKey(name: 'longi') this.longi,
      @JsonKey(name: 'radius') this.radius,
      @JsonKey(name: 'type') this.type});

  factory _$_SpatialData.fromJson(Map<String, dynamic> json) =>
      _$_$_SpatialDataFromJson(json);

  @override
  @JsonKey(name: 'locationname')
  final List<AreaInfo> locationname;
  @override
  @JsonKey(name: 'curstatename')
  final String curStatename;
  @override
  @JsonKey(name: 'statename')
  final String statename;
  @override
  @JsonKey(name: 'lati')
  final double lati;
  @override
  @JsonKey(name: 'longi')
  final double longi;
  @override
  @JsonKey(name: 'radius')
  final int radius;
  @override
  @JsonKey(name: 'type')
  final int type;

  @override
  String toString() {
    return 'SpatialData(locationname: $locationname, curStatename: $curStatename, statename: $statename, lati: $lati, longi: $longi, radius: $radius, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpatialData &&
            (identical(other.locationname, locationname) ||
                const DeepCollectionEquality()
                    .equals(other.locationname, locationname)) &&
            (identical(other.curStatename, curStatename) ||
                const DeepCollectionEquality()
                    .equals(other.curStatename, curStatename)) &&
            (identical(other.statename, statename) ||
                const DeepCollectionEquality()
                    .equals(other.statename, statename)) &&
            (identical(other.lati, lati) ||
                const DeepCollectionEquality().equals(other.lati, lati)) &&
            (identical(other.longi, longi) ||
                const DeepCollectionEquality().equals(other.longi, longi)) &&
            (identical(other.radius, radius) ||
                const DeepCollectionEquality().equals(other.radius, radius)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationname) ^
      const DeepCollectionEquality().hash(curStatename) ^
      const DeepCollectionEquality().hash(statename) ^
      const DeepCollectionEquality().hash(lati) ^
      const DeepCollectionEquality().hash(longi) ^
      const DeepCollectionEquality().hash(radius) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$SpatialDataCopyWith<_SpatialData> get copyWith =>
      __$SpatialDataCopyWithImpl<_SpatialData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SpatialDataToJson(this);
  }
}

abstract class _SpatialData implements SpatialData {
  factory _SpatialData(
      {@JsonKey(name: 'locationname') List<AreaInfo> locationname,
      @JsonKey(name: 'curstatename') String curStatename,
      @JsonKey(name: 'statename') String statename,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi,
      @JsonKey(name: 'radius') int radius,
      @JsonKey(name: 'type') int type}) = _$_SpatialData;

  factory _SpatialData.fromJson(Map<String, dynamic> json) =
      _$_SpatialData.fromJson;

  @override
  @JsonKey(name: 'locationname')
  List<AreaInfo> get locationname;
  @override
  @JsonKey(name: 'curstatename')
  String get curStatename;
  @override
  @JsonKey(name: 'statename')
  String get statename;
  @override
  @JsonKey(name: 'lati')
  double get lati;
  @override
  @JsonKey(name: 'longi')
  double get longi;
  @override
  @JsonKey(name: 'radius')
  int get radius;
  @override
  @JsonKey(name: 'type')
  int get type;
  @override
  @JsonKey(ignore: true)
  _$SpatialDataCopyWith<_SpatialData> get copyWith;
}

ServiceFilterParameter _$ServiceFilterParameterFromJson(
    Map<String, dynamic> json) {
  return _ServiceFilterParameter.fromJson(json);
}

/// @nodoc
class _$ServiceFilterParameterTearOff {
  const _$ServiceFilterParameterTearOff();

// ignore: unused_element
  _ServiceFilterParameter call(
      {@JsonKey(name: 'serviceofferedselectedvalues')
          ProductSearchInformationConfig serviceofferedselectedvalues,
      @JsonKey(name: 'textsearch')
          String textsearch,
      @JsonKey(name: 'offset')
          int offset}) {
    return _ServiceFilterParameter(
      serviceofferedselectedvalues: serviceofferedselectedvalues,
      textsearch: textsearch,
      offset: offset,
    );
  }

// ignore: unused_element
  ServiceFilterParameter fromJson(Map<String, Object> json) {
    return ServiceFilterParameter.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ServiceFilterParameter = _$ServiceFilterParameterTearOff();

/// @nodoc
mixin _$ServiceFilterParameter {
  @JsonKey(name: 'serviceofferedselectedvalues')
  ProductSearchInformationConfig get serviceofferedselectedvalues;
  @JsonKey(name: 'textsearch')
  String get textsearch;
  @JsonKey(name: 'offset')
  int get offset;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ServiceFilterParameterCopyWith<ServiceFilterParameter> get copyWith;
}

/// @nodoc
abstract class $ServiceFilterParameterCopyWith<$Res> {
  factory $ServiceFilterParameterCopyWith(ServiceFilterParameter value,
          $Res Function(ServiceFilterParameter) then) =
      _$ServiceFilterParameterCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'serviceofferedselectedvalues')
          ProductSearchInformationConfig serviceofferedselectedvalues,
      @JsonKey(name: 'textsearch')
          String textsearch,
      @JsonKey(name: 'offset')
          int offset});

  $ProductSearchInformationConfigCopyWith<$Res>
      get serviceofferedselectedvalues;
}

/// @nodoc
class _$ServiceFilterParameterCopyWithImpl<$Res>
    implements $ServiceFilterParameterCopyWith<$Res> {
  _$ServiceFilterParameterCopyWithImpl(this._value, this._then);

  final ServiceFilterParameter _value;
  // ignore: unused_field
  final $Res Function(ServiceFilterParameter) _then;

  @override
  $Res call({
    Object serviceofferedselectedvalues = freezed,
    Object textsearch = freezed,
    Object offset = freezed,
  }) {
    return _then(_value.copyWith(
      serviceofferedselectedvalues: serviceofferedselectedvalues == freezed
          ? _value.serviceofferedselectedvalues
          : serviceofferedselectedvalues as ProductSearchInformationConfig,
      textsearch:
          textsearch == freezed ? _value.textsearch : textsearch as String,
      offset: offset == freezed ? _value.offset : offset as int,
    ));
  }

  @override
  $ProductSearchInformationConfigCopyWith<$Res>
      get serviceofferedselectedvalues {
    if (_value.serviceofferedselectedvalues == null) {
      return null;
    }
    return $ProductSearchInformationConfigCopyWith<$Res>(
        _value.serviceofferedselectedvalues, (value) {
      return _then(_value.copyWith(serviceofferedselectedvalues: value));
    });
  }
}

/// @nodoc
abstract class _$ServiceFilterParameterCopyWith<$Res>
    implements $ServiceFilterParameterCopyWith<$Res> {
  factory _$ServiceFilterParameterCopyWith(_ServiceFilterParameter value,
          $Res Function(_ServiceFilterParameter) then) =
      __$ServiceFilterParameterCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'serviceofferedselectedvalues')
          ProductSearchInformationConfig serviceofferedselectedvalues,
      @JsonKey(name: 'textsearch')
          String textsearch,
      @JsonKey(name: 'offset')
          int offset});

  @override
  $ProductSearchInformationConfigCopyWith<$Res>
      get serviceofferedselectedvalues;
}

/// @nodoc
class __$ServiceFilterParameterCopyWithImpl<$Res>
    extends _$ServiceFilterParameterCopyWithImpl<$Res>
    implements _$ServiceFilterParameterCopyWith<$Res> {
  __$ServiceFilterParameterCopyWithImpl(_ServiceFilterParameter _value,
      $Res Function(_ServiceFilterParameter) _then)
      : super(_value, (v) => _then(v as _ServiceFilterParameter));

  @override
  _ServiceFilterParameter get _value => super._value as _ServiceFilterParameter;

  @override
  $Res call({
    Object serviceofferedselectedvalues = freezed,
    Object textsearch = freezed,
    Object offset = freezed,
  }) {
    return _then(_ServiceFilterParameter(
      serviceofferedselectedvalues: serviceofferedselectedvalues == freezed
          ? _value.serviceofferedselectedvalues
          : serviceofferedselectedvalues as ProductSearchInformationConfig,
      textsearch:
          textsearch == freezed ? _value.textsearch : textsearch as String,
      offset: offset == freezed ? _value.offset : offset as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ServiceFilterParameter implements _ServiceFilterParameter {
  _$_ServiceFilterParameter(
      {@JsonKey(name: 'serviceofferedselectedvalues')
          this.serviceofferedselectedvalues,
      @JsonKey(name: 'textsearch')
          this.textsearch,
      @JsonKey(name: 'offset')
          this.offset});

  factory _$_ServiceFilterParameter.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceFilterParameterFromJson(json);

  @override
  @JsonKey(name: 'serviceofferedselectedvalues')
  final ProductSearchInformationConfig serviceofferedselectedvalues;
  @override
  @JsonKey(name: 'textsearch')
  final String textsearch;
  @override
  @JsonKey(name: 'offset')
  final int offset;

  @override
  String toString() {
    return 'ServiceFilterParameter(serviceofferedselectedvalues: $serviceofferedselectedvalues, textsearch: $textsearch, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceFilterParameter &&
            (identical(other.serviceofferedselectedvalues,
                    serviceofferedselectedvalues) ||
                const DeepCollectionEquality().equals(
                    other.serviceofferedselectedvalues,
                    serviceofferedselectedvalues)) &&
            (identical(other.textsearch, textsearch) ||
                const DeepCollectionEquality()
                    .equals(other.textsearch, textsearch)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serviceofferedselectedvalues) ^
      const DeepCollectionEquality().hash(textsearch) ^
      const DeepCollectionEquality().hash(offset);

  @JsonKey(ignore: true)
  @override
  _$ServiceFilterParameterCopyWith<_ServiceFilterParameter> get copyWith =>
      __$ServiceFilterParameterCopyWithImpl<_ServiceFilterParameter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceFilterParameterToJson(this);
  }
}

abstract class _ServiceFilterParameter implements ServiceFilterParameter {
  factory _ServiceFilterParameter(
      {@JsonKey(name: 'serviceofferedselectedvalues')
          ProductSearchInformationConfig serviceofferedselectedvalues,
      @JsonKey(name: 'textsearch')
          String textsearch,
      @JsonKey(name: 'offset')
          int offset}) = _$_ServiceFilterParameter;

  factory _ServiceFilterParameter.fromJson(Map<String, dynamic> json) =
      _$_ServiceFilterParameter.fromJson;

  @override
  @JsonKey(name: 'serviceofferedselectedvalues')
  ProductSearchInformationConfig get serviceofferedselectedvalues;
  @override
  @JsonKey(name: 'textsearch')
  String get textsearch;
  @override
  @JsonKey(name: 'offset')
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$ServiceFilterParameterCopyWith<_ServiceFilterParameter> get copyWith;
}

ExplorePageAd _$ExplorePageAdFromJson(Map<String, dynamic> json) {
  return _ExplorePageAd.fromJson(json);
}

/// @nodoc
class _$ExplorePageAdTearOff {
  const _$ExplorePageAdTearOff();

// ignore: unused_element
  _ExplorePageAd call(
      {@JsonKey(name: 'imagepath') String imagepath,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'lm') LimitedServiceModel lm,
      @JsonKey(name: 'lpd') LimitedProductData lpd}) {
    return _ExplorePageAd(
      imagepath: imagepath,
      message: message,
      lm: lm,
      lpd: lpd,
    );
  }

// ignore: unused_element
  ExplorePageAd fromJson(Map<String, Object> json) {
    return ExplorePageAd.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ExplorePageAd = _$ExplorePageAdTearOff();

/// @nodoc
mixin _$ExplorePageAd {
  @JsonKey(name: 'imagepath')
  String get imagepath;
  @JsonKey(name: 'message')
  String get message;
  @JsonKey(name: 'lm')
  LimitedServiceModel get lm;
  @JsonKey(name: 'lpd')
  LimitedProductData get lpd;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ExplorePageAdCopyWith<ExplorePageAd> get copyWith;
}

/// @nodoc
abstract class $ExplorePageAdCopyWith<$Res> {
  factory $ExplorePageAdCopyWith(
          ExplorePageAd value, $Res Function(ExplorePageAd) then) =
      _$ExplorePageAdCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'imagepath') String imagepath,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'lm') LimitedServiceModel lm,
      @JsonKey(name: 'lpd') LimitedProductData lpd});

  $LimitedServiceModelCopyWith<$Res> get lm;
}

/// @nodoc
class _$ExplorePageAdCopyWithImpl<$Res>
    implements $ExplorePageAdCopyWith<$Res> {
  _$ExplorePageAdCopyWithImpl(this._value, this._then);

  final ExplorePageAd _value;
  // ignore: unused_field
  final $Res Function(ExplorePageAd) _then;

  @override
  $Res call({
    Object imagepath = freezed,
    Object message = freezed,
    Object lm = freezed,
    Object lpd = freezed,
  }) {
    return _then(_value.copyWith(
      imagepath: imagepath == freezed ? _value.imagepath : imagepath as String,
      message: message == freezed ? _value.message : message as String,
      lm: lm == freezed ? _value.lm : lm as LimitedServiceModel,
      lpd: lpd == freezed ? _value.lpd : lpd as LimitedProductData,
    ));
  }

  @override
  $LimitedServiceModelCopyWith<$Res> get lm {
    if (_value.lm == null) {
      return null;
    }
    return $LimitedServiceModelCopyWith<$Res>(_value.lm, (value) {
      return _then(_value.copyWith(lm: value));
    });
  }
}

/// @nodoc
abstract class _$ExplorePageAdCopyWith<$Res>
    implements $ExplorePageAdCopyWith<$Res> {
  factory _$ExplorePageAdCopyWith(
          _ExplorePageAd value, $Res Function(_ExplorePageAd) then) =
      __$ExplorePageAdCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'imagepath') String imagepath,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'lm') LimitedServiceModel lm,
      @JsonKey(name: 'lpd') LimitedProductData lpd});

  @override
  $LimitedServiceModelCopyWith<$Res> get lm;
}

/// @nodoc
class __$ExplorePageAdCopyWithImpl<$Res>
    extends _$ExplorePageAdCopyWithImpl<$Res>
    implements _$ExplorePageAdCopyWith<$Res> {
  __$ExplorePageAdCopyWithImpl(
      _ExplorePageAd _value, $Res Function(_ExplorePageAd) _then)
      : super(_value, (v) => _then(v as _ExplorePageAd));

  @override
  _ExplorePageAd get _value => super._value as _ExplorePageAd;

  @override
  $Res call({
    Object imagepath = freezed,
    Object message = freezed,
    Object lm = freezed,
    Object lpd = freezed,
  }) {
    return _then(_ExplorePageAd(
      imagepath: imagepath == freezed ? _value.imagepath : imagepath as String,
      message: message == freezed ? _value.message : message as String,
      lm: lm == freezed ? _value.lm : lm as LimitedServiceModel,
      lpd: lpd == freezed ? _value.lpd : lpd as LimitedProductData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ExplorePageAd implements _ExplorePageAd {
  _$_ExplorePageAd(
      {@JsonKey(name: 'imagepath') this.imagepath,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'lm') this.lm,
      @JsonKey(name: 'lpd') this.lpd});

  factory _$_ExplorePageAd.fromJson(Map<String, dynamic> json) =>
      _$_$_ExplorePageAdFromJson(json);

  @override
  @JsonKey(name: 'imagepath')
  final String imagepath;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'lm')
  final LimitedServiceModel lm;
  @override
  @JsonKey(name: 'lpd')
  final LimitedProductData lpd;

  @override
  String toString() {
    return 'ExplorePageAd(imagepath: $imagepath, message: $message, lm: $lm, lpd: $lpd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExplorePageAd &&
            (identical(other.imagepath, imagepath) ||
                const DeepCollectionEquality()
                    .equals(other.imagepath, imagepath)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.lm, lm) ||
                const DeepCollectionEquality().equals(other.lm, lm)) &&
            (identical(other.lpd, lpd) ||
                const DeepCollectionEquality().equals(other.lpd, lpd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imagepath) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(lm) ^
      const DeepCollectionEquality().hash(lpd);

  @JsonKey(ignore: true)
  @override
  _$ExplorePageAdCopyWith<_ExplorePageAd> get copyWith =>
      __$ExplorePageAdCopyWithImpl<_ExplorePageAd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExplorePageAdToJson(this);
  }
}

abstract class _ExplorePageAd implements ExplorePageAd {
  factory _ExplorePageAd(
      {@JsonKey(name: 'imagepath') String imagepath,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'lm') LimitedServiceModel lm,
      @JsonKey(name: 'lpd') LimitedProductData lpd}) = _$_ExplorePageAd;

  factory _ExplorePageAd.fromJson(Map<String, dynamic> json) =
      _$_ExplorePageAd.fromJson;

  @override
  @JsonKey(name: 'imagepath')
  String get imagepath;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'lm')
  LimitedServiceModel get lm;
  @override
  @JsonKey(name: 'lpd')
  LimitedProductData get lpd;
  @override
  @JsonKey(ignore: true)
  _$ExplorePageAdCopyWith<_ExplorePageAd> get copyWith;
}

ServiceFilterResultData _$ServiceFilterResultDataFromJson(
    Map<String, dynamic> json) {
  return _ServiceFilterResultData.fromJson(json);
}

/// @nodoc
class _$ServiceFilterResultDataTearOff {
  const _$ServiceFilterResultDataTearOff();

// ignore: unused_element
  _ServiceFilterResultData call(
      {@JsonKey(name: 'smlist') List<LimitedServiceModel> smlist,
      @JsonKey(name: 'smidlist') List<String> smidlist,
      @JsonKey(name: 'totcount') int totcount,
      @JsonKey(name: 'curads') List<ExplorePageAd> curads}) {
    return _ServiceFilterResultData(
      smlist: smlist,
      smidlist: smidlist,
      totcount: totcount,
      curads: curads,
    );
  }

// ignore: unused_element
  ServiceFilterResultData fromJson(Map<String, Object> json) {
    return ServiceFilterResultData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ServiceFilterResultData = _$ServiceFilterResultDataTearOff();

/// @nodoc
mixin _$ServiceFilterResultData {
  @JsonKey(name: 'smlist')
  List<LimitedServiceModel> get smlist;
  @JsonKey(name: 'smidlist')
  List<String> get smidlist;
  @JsonKey(name: 'totcount')
  int get totcount;
  @JsonKey(name: 'curads')
  List<ExplorePageAd> get curads;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ServiceFilterResultDataCopyWith<ServiceFilterResultData> get copyWith;
}

/// @nodoc
abstract class $ServiceFilterResultDataCopyWith<$Res> {
  factory $ServiceFilterResultDataCopyWith(ServiceFilterResultData value,
          $Res Function(ServiceFilterResultData) then) =
      _$ServiceFilterResultDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'smlist') List<LimitedServiceModel> smlist,
      @JsonKey(name: 'smidlist') List<String> smidlist,
      @JsonKey(name: 'totcount') int totcount,
      @JsonKey(name: 'curads') List<ExplorePageAd> curads});
}

/// @nodoc
class _$ServiceFilterResultDataCopyWithImpl<$Res>
    implements $ServiceFilterResultDataCopyWith<$Res> {
  _$ServiceFilterResultDataCopyWithImpl(this._value, this._then);

  final ServiceFilterResultData _value;
  // ignore: unused_field
  final $Res Function(ServiceFilterResultData) _then;

  @override
  $Res call({
    Object smlist = freezed,
    Object smidlist = freezed,
    Object totcount = freezed,
    Object curads = freezed,
  }) {
    return _then(_value.copyWith(
      smlist: smlist == freezed
          ? _value.smlist
          : smlist as List<LimitedServiceModel>,
      smidlist:
          smidlist == freezed ? _value.smidlist : smidlist as List<String>,
      totcount: totcount == freezed ? _value.totcount : totcount as int,
      curads: curads == freezed ? _value.curads : curads as List<ExplorePageAd>,
    ));
  }
}

/// @nodoc
abstract class _$ServiceFilterResultDataCopyWith<$Res>
    implements $ServiceFilterResultDataCopyWith<$Res> {
  factory _$ServiceFilterResultDataCopyWith(_ServiceFilterResultData value,
          $Res Function(_ServiceFilterResultData) then) =
      __$ServiceFilterResultDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'smlist') List<LimitedServiceModel> smlist,
      @JsonKey(name: 'smidlist') List<String> smidlist,
      @JsonKey(name: 'totcount') int totcount,
      @JsonKey(name: 'curads') List<ExplorePageAd> curads});
}

/// @nodoc
class __$ServiceFilterResultDataCopyWithImpl<$Res>
    extends _$ServiceFilterResultDataCopyWithImpl<$Res>
    implements _$ServiceFilterResultDataCopyWith<$Res> {
  __$ServiceFilterResultDataCopyWithImpl(_ServiceFilterResultData _value,
      $Res Function(_ServiceFilterResultData) _then)
      : super(_value, (v) => _then(v as _ServiceFilterResultData));

  @override
  _ServiceFilterResultData get _value =>
      super._value as _ServiceFilterResultData;

  @override
  $Res call({
    Object smlist = freezed,
    Object smidlist = freezed,
    Object totcount = freezed,
    Object curads = freezed,
  }) {
    return _then(_ServiceFilterResultData(
      smlist: smlist == freezed
          ? _value.smlist
          : smlist as List<LimitedServiceModel>,
      smidlist:
          smidlist == freezed ? _value.smidlist : smidlist as List<String>,
      totcount: totcount == freezed ? _value.totcount : totcount as int,
      curads: curads == freezed ? _value.curads : curads as List<ExplorePageAd>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ServiceFilterResultData implements _ServiceFilterResultData {
  _$_ServiceFilterResultData(
      {@JsonKey(name: 'smlist') this.smlist,
      @JsonKey(name: 'smidlist') this.smidlist,
      @JsonKey(name: 'totcount') this.totcount,
      @JsonKey(name: 'curads') this.curads});

  factory _$_ServiceFilterResultData.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceFilterResultDataFromJson(json);

  @override
  @JsonKey(name: 'smlist')
  final List<LimitedServiceModel> smlist;
  @override
  @JsonKey(name: 'smidlist')
  final List<String> smidlist;
  @override
  @JsonKey(name: 'totcount')
  final int totcount;
  @override
  @JsonKey(name: 'curads')
  final List<ExplorePageAd> curads;

  @override
  String toString() {
    return 'ServiceFilterResultData(smlist: $smlist, smidlist: $smidlist, totcount: $totcount, curads: $curads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceFilterResultData &&
            (identical(other.smlist, smlist) ||
                const DeepCollectionEquality().equals(other.smlist, smlist)) &&
            (identical(other.smidlist, smidlist) ||
                const DeepCollectionEquality()
                    .equals(other.smidlist, smidlist)) &&
            (identical(other.totcount, totcount) ||
                const DeepCollectionEquality()
                    .equals(other.totcount, totcount)) &&
            (identical(other.curads, curads) ||
                const DeepCollectionEquality().equals(other.curads, curads)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(smlist) ^
      const DeepCollectionEquality().hash(smidlist) ^
      const DeepCollectionEquality().hash(totcount) ^
      const DeepCollectionEquality().hash(curads);

  @JsonKey(ignore: true)
  @override
  _$ServiceFilterResultDataCopyWith<_ServiceFilterResultData> get copyWith =>
      __$ServiceFilterResultDataCopyWithImpl<_ServiceFilterResultData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceFilterResultDataToJson(this);
  }
}

abstract class _ServiceFilterResultData implements ServiceFilterResultData {
  factory _ServiceFilterResultData(
          {@JsonKey(name: 'smlist') List<LimitedServiceModel> smlist,
          @JsonKey(name: 'smidlist') List<String> smidlist,
          @JsonKey(name: 'totcount') int totcount,
          @JsonKey(name: 'curads') List<ExplorePageAd> curads}) =
      _$_ServiceFilterResultData;

  factory _ServiceFilterResultData.fromJson(Map<String, dynamic> json) =
      _$_ServiceFilterResultData.fromJson;

  @override
  @JsonKey(name: 'smlist')
  List<LimitedServiceModel> get smlist;
  @override
  @JsonKey(name: 'smidlist')
  List<String> get smidlist;
  @override
  @JsonKey(name: 'totcount')
  int get totcount;
  @override
  @JsonKey(name: 'curads')
  List<ExplorePageAd> get curads;
  @override
  @JsonKey(ignore: true)
  _$ServiceFilterResultDataCopyWith<_ServiceFilterResultData> get copyWith;
}

LimitedServiceModel _$LimitedServiceModelFromJson(Map<String, dynamic> json) {
  return _LimitedServiceModel.fromJson(json);
}

/// @nodoc
class _$LimitedServiceModelTearOff {
  const _$LimitedServiceModelTearOff();

// ignore: unused_element
  _LimitedServiceModel call(
      {@JsonKey(name: 'phone') List<String> phone,
      @JsonKey(name: 'servicetype') List<String> servicetype,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'photo1') String photo1,
      @JsonKey(name: 'servicename') String serviceName,
      @JsonKey(name: 'timeinfo') String timeinfo,
      @JsonKey(name: 'serviceid') String serviceID,
      @JsonKey(name: 'ratingcount') int ratingcount,
      @JsonKey(name: 'totalratings') int totalratings,
      @JsonKey(name: 'hasapt') bool hasapt,
      @JsonKey(name: 'hasadhoctrips') bool hasadhoctrips,
      @JsonKey(name: 'hasecom') bool hasecom,
      @JsonKey(name: 'hasproductcatalog') bool hasproductcatalog,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi}) {
    return _LimitedServiceModel(
      phone: phone,
      servicetype: servicetype,
      address: address,
      email: email,
      photo1: photo1,
      serviceName: serviceName,
      timeinfo: timeinfo,
      serviceID: serviceID,
      ratingcount: ratingcount,
      totalratings: totalratings,
      hasapt: hasapt,
      hasadhoctrips: hasadhoctrips,
      hasecom: hasecom,
      hasproductcatalog: hasproductcatalog,
      lati: lati,
      longi: longi,
    );
  }

// ignore: unused_element
  LimitedServiceModel fromJson(Map<String, Object> json) {
    return LimitedServiceModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LimitedServiceModel = _$LimitedServiceModelTearOff();

/// @nodoc
mixin _$LimitedServiceModel {
  @JsonKey(name: 'phone')
  List<String> get phone;
  @JsonKey(name: 'servicetype')
  List<String> get servicetype;
  @JsonKey(name: 'address')
  String get address;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'photo1')
  String get photo1;
  @JsonKey(name: 'servicename')
  String get serviceName;
  @JsonKey(name: 'timeinfo')
  String get timeinfo;
  @JsonKey(name: 'serviceid')
  String get serviceID;
  @JsonKey(name: 'ratingcount')
  int get ratingcount;
  @JsonKey(name: 'totalratings')
  int get totalratings;
  @JsonKey(name: 'hasapt')
  bool get hasapt;
  @JsonKey(name: 'hasadhoctrips')
  bool get hasadhoctrips;
  @JsonKey(name: 'hasecom')
  bool get hasecom;
  @JsonKey(name: 'hasproductcatalog')
  bool get hasproductcatalog;
  @JsonKey(name: 'lati')
  double get lati;
  @JsonKey(name: 'longi')
  double get longi;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LimitedServiceModelCopyWith<LimitedServiceModel> get copyWith;
}

/// @nodoc
abstract class $LimitedServiceModelCopyWith<$Res> {
  factory $LimitedServiceModelCopyWith(
          LimitedServiceModel value, $Res Function(LimitedServiceModel) then) =
      _$LimitedServiceModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'phone') List<String> phone,
      @JsonKey(name: 'servicetype') List<String> servicetype,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'photo1') String photo1,
      @JsonKey(name: 'servicename') String serviceName,
      @JsonKey(name: 'timeinfo') String timeinfo,
      @JsonKey(name: 'serviceid') String serviceID,
      @JsonKey(name: 'ratingcount') int ratingcount,
      @JsonKey(name: 'totalratings') int totalratings,
      @JsonKey(name: 'hasapt') bool hasapt,
      @JsonKey(name: 'hasadhoctrips') bool hasadhoctrips,
      @JsonKey(name: 'hasecom') bool hasecom,
      @JsonKey(name: 'hasproductcatalog') bool hasproductcatalog,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi});
}

/// @nodoc
class _$LimitedServiceModelCopyWithImpl<$Res>
    implements $LimitedServiceModelCopyWith<$Res> {
  _$LimitedServiceModelCopyWithImpl(this._value, this._then);

  final LimitedServiceModel _value;
  // ignore: unused_field
  final $Res Function(LimitedServiceModel) _then;

  @override
  $Res call({
    Object phone = freezed,
    Object servicetype = freezed,
    Object address = freezed,
    Object email = freezed,
    Object photo1 = freezed,
    Object serviceName = freezed,
    Object timeinfo = freezed,
    Object serviceID = freezed,
    Object ratingcount = freezed,
    Object totalratings = freezed,
    Object hasapt = freezed,
    Object hasadhoctrips = freezed,
    Object hasecom = freezed,
    Object hasproductcatalog = freezed,
    Object lati = freezed,
    Object longi = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed ? _value.phone : phone as List<String>,
      servicetype: servicetype == freezed
          ? _value.servicetype
          : servicetype as List<String>,
      address: address == freezed ? _value.address : address as String,
      email: email == freezed ? _value.email : email as String,
      photo1: photo1 == freezed ? _value.photo1 : photo1 as String,
      serviceName:
          serviceName == freezed ? _value.serviceName : serviceName as String,
      timeinfo: timeinfo == freezed ? _value.timeinfo : timeinfo as String,
      serviceID: serviceID == freezed ? _value.serviceID : serviceID as String,
      ratingcount:
          ratingcount == freezed ? _value.ratingcount : ratingcount as int,
      totalratings:
          totalratings == freezed ? _value.totalratings : totalratings as int,
      hasapt: hasapt == freezed ? _value.hasapt : hasapt as bool,
      hasadhoctrips: hasadhoctrips == freezed
          ? _value.hasadhoctrips
          : hasadhoctrips as bool,
      hasecom: hasecom == freezed ? _value.hasecom : hasecom as bool,
      hasproductcatalog: hasproductcatalog == freezed
          ? _value.hasproductcatalog
          : hasproductcatalog as bool,
      lati: lati == freezed ? _value.lati : lati as double,
      longi: longi == freezed ? _value.longi : longi as double,
    ));
  }
}

/// @nodoc
abstract class _$LimitedServiceModelCopyWith<$Res>
    implements $LimitedServiceModelCopyWith<$Res> {
  factory _$LimitedServiceModelCopyWith(_LimitedServiceModel value,
          $Res Function(_LimitedServiceModel) then) =
      __$LimitedServiceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'phone') List<String> phone,
      @JsonKey(name: 'servicetype') List<String> servicetype,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'photo1') String photo1,
      @JsonKey(name: 'servicename') String serviceName,
      @JsonKey(name: 'timeinfo') String timeinfo,
      @JsonKey(name: 'serviceid') String serviceID,
      @JsonKey(name: 'ratingcount') int ratingcount,
      @JsonKey(name: 'totalratings') int totalratings,
      @JsonKey(name: 'hasapt') bool hasapt,
      @JsonKey(name: 'hasadhoctrips') bool hasadhoctrips,
      @JsonKey(name: 'hasecom') bool hasecom,
      @JsonKey(name: 'hasproductcatalog') bool hasproductcatalog,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi});
}

/// @nodoc
class __$LimitedServiceModelCopyWithImpl<$Res>
    extends _$LimitedServiceModelCopyWithImpl<$Res>
    implements _$LimitedServiceModelCopyWith<$Res> {
  __$LimitedServiceModelCopyWithImpl(
      _LimitedServiceModel _value, $Res Function(_LimitedServiceModel) _then)
      : super(_value, (v) => _then(v as _LimitedServiceModel));

  @override
  _LimitedServiceModel get _value => super._value as _LimitedServiceModel;

  @override
  $Res call({
    Object phone = freezed,
    Object servicetype = freezed,
    Object address = freezed,
    Object email = freezed,
    Object photo1 = freezed,
    Object serviceName = freezed,
    Object timeinfo = freezed,
    Object serviceID = freezed,
    Object ratingcount = freezed,
    Object totalratings = freezed,
    Object hasapt = freezed,
    Object hasadhoctrips = freezed,
    Object hasecom = freezed,
    Object hasproductcatalog = freezed,
    Object lati = freezed,
    Object longi = freezed,
  }) {
    return _then(_LimitedServiceModel(
      phone: phone == freezed ? _value.phone : phone as List<String>,
      servicetype: servicetype == freezed
          ? _value.servicetype
          : servicetype as List<String>,
      address: address == freezed ? _value.address : address as String,
      email: email == freezed ? _value.email : email as String,
      photo1: photo1 == freezed ? _value.photo1 : photo1 as String,
      serviceName:
          serviceName == freezed ? _value.serviceName : serviceName as String,
      timeinfo: timeinfo == freezed ? _value.timeinfo : timeinfo as String,
      serviceID: serviceID == freezed ? _value.serviceID : serviceID as String,
      ratingcount:
          ratingcount == freezed ? _value.ratingcount : ratingcount as int,
      totalratings:
          totalratings == freezed ? _value.totalratings : totalratings as int,
      hasapt: hasapt == freezed ? _value.hasapt : hasapt as bool,
      hasadhoctrips: hasadhoctrips == freezed
          ? _value.hasadhoctrips
          : hasadhoctrips as bool,
      hasecom: hasecom == freezed ? _value.hasecom : hasecom as bool,
      hasproductcatalog: hasproductcatalog == freezed
          ? _value.hasproductcatalog
          : hasproductcatalog as bool,
      lati: lati == freezed ? _value.lati : lati as double,
      longi: longi == freezed ? _value.longi : longi as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LimitedServiceModel implements _LimitedServiceModel {
  _$_LimitedServiceModel(
      {@JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'servicetype') this.servicetype,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'photo1') this.photo1,
      @JsonKey(name: 'servicename') this.serviceName,
      @JsonKey(name: 'timeinfo') this.timeinfo,
      @JsonKey(name: 'serviceid') this.serviceID,
      @JsonKey(name: 'ratingcount') this.ratingcount,
      @JsonKey(name: 'totalratings') this.totalratings,
      @JsonKey(name: 'hasapt') this.hasapt,
      @JsonKey(name: 'hasadhoctrips') this.hasadhoctrips,
      @JsonKey(name: 'hasecom') this.hasecom,
      @JsonKey(name: 'hasproductcatalog') this.hasproductcatalog,
      @JsonKey(name: 'lati') this.lati,
      @JsonKey(name: 'longi') this.longi});

  factory _$_LimitedServiceModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LimitedServiceModelFromJson(json);

  @override
  @JsonKey(name: 'phone')
  final List<String> phone;
  @override
  @JsonKey(name: 'servicetype')
  final List<String> servicetype;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'photo1')
  final String photo1;
  @override
  @JsonKey(name: 'servicename')
  final String serviceName;
  @override
  @JsonKey(name: 'timeinfo')
  final String timeinfo;
  @override
  @JsonKey(name: 'serviceid')
  final String serviceID;
  @override
  @JsonKey(name: 'ratingcount')
  final int ratingcount;
  @override
  @JsonKey(name: 'totalratings')
  final int totalratings;
  @override
  @JsonKey(name: 'hasapt')
  final bool hasapt;
  @override
  @JsonKey(name: 'hasadhoctrips')
  final bool hasadhoctrips;
  @override
  @JsonKey(name: 'hasecom')
  final bool hasecom;
  @override
  @JsonKey(name: 'hasproductcatalog')
  final bool hasproductcatalog;
  @override
  @JsonKey(name: 'lati')
  final double lati;
  @override
  @JsonKey(name: 'longi')
  final double longi;

  @override
  String toString() {
    return 'LimitedServiceModel(phone: $phone, servicetype: $servicetype, address: $address, email: $email, photo1: $photo1, serviceName: $serviceName, timeinfo: $timeinfo, serviceID: $serviceID, ratingcount: $ratingcount, totalratings: $totalratings, hasapt: $hasapt, hasadhoctrips: $hasadhoctrips, hasecom: $hasecom, hasproductcatalog: $hasproductcatalog, lati: $lati, longi: $longi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LimitedServiceModel &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.servicetype, servicetype) ||
                const DeepCollectionEquality()
                    .equals(other.servicetype, servicetype)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photo1, photo1) ||
                const DeepCollectionEquality().equals(other.photo1, photo1)) &&
            (identical(other.serviceName, serviceName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceName, serviceName)) &&
            (identical(other.timeinfo, timeinfo) ||
                const DeepCollectionEquality()
                    .equals(other.timeinfo, timeinfo)) &&
            (identical(other.serviceID, serviceID) ||
                const DeepCollectionEquality()
                    .equals(other.serviceID, serviceID)) &&
            (identical(other.ratingcount, ratingcount) ||
                const DeepCollectionEquality()
                    .equals(other.ratingcount, ratingcount)) &&
            (identical(other.totalratings, totalratings) ||
                const DeepCollectionEquality()
                    .equals(other.totalratings, totalratings)) &&
            (identical(other.hasapt, hasapt) ||
                const DeepCollectionEquality().equals(other.hasapt, hasapt)) &&
            (identical(other.hasadhoctrips, hasadhoctrips) ||
                const DeepCollectionEquality()
                    .equals(other.hasadhoctrips, hasadhoctrips)) &&
            (identical(other.hasecom, hasecom) ||
                const DeepCollectionEquality()
                    .equals(other.hasecom, hasecom)) &&
            (identical(other.hasproductcatalog, hasproductcatalog) ||
                const DeepCollectionEquality()
                    .equals(other.hasproductcatalog, hasproductcatalog)) &&
            (identical(other.lati, lati) ||
                const DeepCollectionEquality().equals(other.lati, lati)) &&
            (identical(other.longi, longi) ||
                const DeepCollectionEquality().equals(other.longi, longi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(servicetype) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photo1) ^
      const DeepCollectionEquality().hash(serviceName) ^
      const DeepCollectionEquality().hash(timeinfo) ^
      const DeepCollectionEquality().hash(serviceID) ^
      const DeepCollectionEquality().hash(ratingcount) ^
      const DeepCollectionEquality().hash(totalratings) ^
      const DeepCollectionEquality().hash(hasapt) ^
      const DeepCollectionEquality().hash(hasadhoctrips) ^
      const DeepCollectionEquality().hash(hasecom) ^
      const DeepCollectionEquality().hash(hasproductcatalog) ^
      const DeepCollectionEquality().hash(lati) ^
      const DeepCollectionEquality().hash(longi);

  @JsonKey(ignore: true)
  @override
  _$LimitedServiceModelCopyWith<_LimitedServiceModel> get copyWith =>
      __$LimitedServiceModelCopyWithImpl<_LimitedServiceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LimitedServiceModelToJson(this);
  }
}

abstract class _LimitedServiceModel implements LimitedServiceModel {
  factory _LimitedServiceModel(
      {@JsonKey(name: 'phone') List<String> phone,
      @JsonKey(name: 'servicetype') List<String> servicetype,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'photo1') String photo1,
      @JsonKey(name: 'servicename') String serviceName,
      @JsonKey(name: 'timeinfo') String timeinfo,
      @JsonKey(name: 'serviceid') String serviceID,
      @JsonKey(name: 'ratingcount') int ratingcount,
      @JsonKey(name: 'totalratings') int totalratings,
      @JsonKey(name: 'hasapt') bool hasapt,
      @JsonKey(name: 'hasadhoctrips') bool hasadhoctrips,
      @JsonKey(name: 'hasecom') bool hasecom,
      @JsonKey(name: 'hasproductcatalog') bool hasproductcatalog,
      @JsonKey(name: 'lati') double lati,
      @JsonKey(name: 'longi') double longi}) = _$_LimitedServiceModel;

  factory _LimitedServiceModel.fromJson(Map<String, dynamic> json) =
      _$_LimitedServiceModel.fromJson;

  @override
  @JsonKey(name: 'phone')
  List<String> get phone;
  @override
  @JsonKey(name: 'servicetype')
  List<String> get servicetype;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'photo1')
  String get photo1;
  @override
  @JsonKey(name: 'servicename')
  String get serviceName;
  @override
  @JsonKey(name: 'timeinfo')
  String get timeinfo;
  @override
  @JsonKey(name: 'serviceid')
  String get serviceID;
  @override
  @JsonKey(name: 'ratingcount')
  int get ratingcount;
  @override
  @JsonKey(name: 'totalratings')
  int get totalratings;
  @override
  @JsonKey(name: 'hasapt')
  bool get hasapt;
  @override
  @JsonKey(name: 'hasadhoctrips')
  bool get hasadhoctrips;
  @override
  @JsonKey(name: 'hasecom')
  bool get hasecom;
  @override
  @JsonKey(name: 'hasproductcatalog')
  bool get hasproductcatalog;
  @override
  @JsonKey(name: 'lati')
  double get lati;
  @override
  @JsonKey(name: 'longi')
  double get longi;
  @override
  @JsonKey(ignore: true)
  _$LimitedServiceModelCopyWith<_LimitedServiceModel> get copyWith;
}

ProductSearchInformationConfig _$ProductSearchInformationConfigFromJson(
    Map<String, dynamic> json) {
  return _ProductSearchInformationConfig.fromJson(json);
}

/// @nodoc
class _$ProductSearchInformationConfigTearOff {
  const _$ProductSearchInformationConfigTearOff();

// ignore: unused_element
  _ProductSearchInformationConfig call(
      {@JsonKey(name: 'lsm') LimitedServiceModel lsm,
      @JsonKey(name: 'servicetype') String servicetype,
      @JsonKey(name: 'grouptype') String grouptype,
      @JsonKey(name: 'isshop') bool isshop,
      @JsonKey(name: 'sp') SpatialData sp,
      @JsonKey(name: 'cust') Customerinfo cust,
      @JsonKey(name: 'entrypoint') int entrypoint,
      @JsonKey(name: 'servicesselected') List<String> servicesselected,
      @JsonKey(name: 'spoffset') int spoffset}) {
    return _ProductSearchInformationConfig(
      lsm: lsm,
      servicetype: servicetype,
      grouptype: grouptype,
      isshop: isshop,
      sp: sp,
      cust: cust,
      entrypoint: entrypoint,
      servicesselected: servicesselected,
      spoffset: spoffset,
    );
  }

// ignore: unused_element
  ProductSearchInformationConfig fromJson(Map<String, Object> json) {
    return ProductSearchInformationConfig.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductSearchInformationConfig =
    _$ProductSearchInformationConfigTearOff();

/// @nodoc
mixin _$ProductSearchInformationConfig {
  @JsonKey(name: 'lsm')
  LimitedServiceModel get lsm;
  @JsonKey(name: 'servicetype')
  String get servicetype;
  @JsonKey(name: 'grouptype')
  String get grouptype;
  @JsonKey(name: 'isshop')
  bool get isshop;
  @JsonKey(name: 'sp')
  SpatialData get sp;
  @JsonKey(name: 'cust')
  Customerinfo get cust;
  @JsonKey(name: 'entrypoint')
  int get entrypoint;
  @JsonKey(name: 'servicesselected')
  List<String> get servicesselected;
  @JsonKey(name: 'spoffset')
  int get spoffset;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductSearchInformationConfigCopyWith<ProductSearchInformationConfig>
      get copyWith;
}

/// @nodoc
abstract class $ProductSearchInformationConfigCopyWith<$Res> {
  factory $ProductSearchInformationConfigCopyWith(
          ProductSearchInformationConfig value,
          $Res Function(ProductSearchInformationConfig) then) =
      _$ProductSearchInformationConfigCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'lsm') LimitedServiceModel lsm,
      @JsonKey(name: 'servicetype') String servicetype,
      @JsonKey(name: 'grouptype') String grouptype,
      @JsonKey(name: 'isshop') bool isshop,
      @JsonKey(name: 'sp') SpatialData sp,
      @JsonKey(name: 'cust') Customerinfo cust,
      @JsonKey(name: 'entrypoint') int entrypoint,
      @JsonKey(name: 'servicesselected') List<String> servicesselected,
      @JsonKey(name: 'spoffset') int spoffset});

  $LimitedServiceModelCopyWith<$Res> get lsm;
  $SpatialDataCopyWith<$Res> get sp;
  $CustomerinfoCopyWith<$Res> get cust;
}

/// @nodoc
class _$ProductSearchInformationConfigCopyWithImpl<$Res>
    implements $ProductSearchInformationConfigCopyWith<$Res> {
  _$ProductSearchInformationConfigCopyWithImpl(this._value, this._then);

  final ProductSearchInformationConfig _value;
  // ignore: unused_field
  final $Res Function(ProductSearchInformationConfig) _then;

  @override
  $Res call({
    Object lsm = freezed,
    Object servicetype = freezed,
    Object grouptype = freezed,
    Object isshop = freezed,
    Object sp = freezed,
    Object cust = freezed,
    Object entrypoint = freezed,
    Object servicesselected = freezed,
    Object spoffset = freezed,
  }) {
    return _then(_value.copyWith(
      lsm: lsm == freezed ? _value.lsm : lsm as LimitedServiceModel,
      servicetype:
          servicetype == freezed ? _value.servicetype : servicetype as String,
      grouptype: grouptype == freezed ? _value.grouptype : grouptype as String,
      isshop: isshop == freezed ? _value.isshop : isshop as bool,
      sp: sp == freezed ? _value.sp : sp as SpatialData,
      cust: cust == freezed ? _value.cust : cust as Customerinfo,
      entrypoint: entrypoint == freezed ? _value.entrypoint : entrypoint as int,
      servicesselected: servicesselected == freezed
          ? _value.servicesselected
          : servicesselected as List<String>,
      spoffset: spoffset == freezed ? _value.spoffset : spoffset as int,
    ));
  }

  @override
  $LimitedServiceModelCopyWith<$Res> get lsm {
    if (_value.lsm == null) {
      return null;
    }
    return $LimitedServiceModelCopyWith<$Res>(_value.lsm, (value) {
      return _then(_value.copyWith(lsm: value));
    });
  }

  @override
  $SpatialDataCopyWith<$Res> get sp {
    if (_value.sp == null) {
      return null;
    }
    return $SpatialDataCopyWith<$Res>(_value.sp, (value) {
      return _then(_value.copyWith(sp: value));
    });
  }

  @override
  $CustomerinfoCopyWith<$Res> get cust {
    if (_value.cust == null) {
      return null;
    }
    return $CustomerinfoCopyWith<$Res>(_value.cust, (value) {
      return _then(_value.copyWith(cust: value));
    });
  }
}

/// @nodoc
abstract class _$ProductSearchInformationConfigCopyWith<$Res>
    implements $ProductSearchInformationConfigCopyWith<$Res> {
  factory _$ProductSearchInformationConfigCopyWith(
          _ProductSearchInformationConfig value,
          $Res Function(_ProductSearchInformationConfig) then) =
      __$ProductSearchInformationConfigCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'lsm') LimitedServiceModel lsm,
      @JsonKey(name: 'servicetype') String servicetype,
      @JsonKey(name: 'grouptype') String grouptype,
      @JsonKey(name: 'isshop') bool isshop,
      @JsonKey(name: 'sp') SpatialData sp,
      @JsonKey(name: 'cust') Customerinfo cust,
      @JsonKey(name: 'entrypoint') int entrypoint,
      @JsonKey(name: 'servicesselected') List<String> servicesselected,
      @JsonKey(name: 'spoffset') int spoffset});

  @override
  $LimitedServiceModelCopyWith<$Res> get lsm;
  @override
  $SpatialDataCopyWith<$Res> get sp;
  @override
  $CustomerinfoCopyWith<$Res> get cust;
}

/// @nodoc
class __$ProductSearchInformationConfigCopyWithImpl<$Res>
    extends _$ProductSearchInformationConfigCopyWithImpl<$Res>
    implements _$ProductSearchInformationConfigCopyWith<$Res> {
  __$ProductSearchInformationConfigCopyWithImpl(
      _ProductSearchInformationConfig _value,
      $Res Function(_ProductSearchInformationConfig) _then)
      : super(_value, (v) => _then(v as _ProductSearchInformationConfig));

  @override
  _ProductSearchInformationConfig get _value =>
      super._value as _ProductSearchInformationConfig;

  @override
  $Res call({
    Object lsm = freezed,
    Object servicetype = freezed,
    Object grouptype = freezed,
    Object isshop = freezed,
    Object sp = freezed,
    Object cust = freezed,
    Object entrypoint = freezed,
    Object servicesselected = freezed,
    Object spoffset = freezed,
  }) {
    return _then(_ProductSearchInformationConfig(
      lsm: lsm == freezed ? _value.lsm : lsm as LimitedServiceModel,
      servicetype:
          servicetype == freezed ? _value.servicetype : servicetype as String,
      grouptype: grouptype == freezed ? _value.grouptype : grouptype as String,
      isshop: isshop == freezed ? _value.isshop : isshop as bool,
      sp: sp == freezed ? _value.sp : sp as SpatialData,
      cust: cust == freezed ? _value.cust : cust as Customerinfo,
      entrypoint: entrypoint == freezed ? _value.entrypoint : entrypoint as int,
      servicesselected: servicesselected == freezed
          ? _value.servicesselected
          : servicesselected as List<String>,
      spoffset: spoffset == freezed ? _value.spoffset : spoffset as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductSearchInformationConfig
    implements _ProductSearchInformationConfig {
  _$_ProductSearchInformationConfig(
      {@JsonKey(name: 'lsm') this.lsm,
      @JsonKey(name: 'servicetype') this.servicetype,
      @JsonKey(name: 'grouptype') this.grouptype,
      @JsonKey(name: 'isshop') this.isshop,
      @JsonKey(name: 'sp') this.sp,
      @JsonKey(name: 'cust') this.cust,
      @JsonKey(name: 'entrypoint') this.entrypoint,
      @JsonKey(name: 'servicesselected') this.servicesselected,
      @JsonKey(name: 'spoffset') this.spoffset});

  factory _$_ProductSearchInformationConfig.fromJson(
          Map<String, dynamic> json) =>
      _$_$_ProductSearchInformationConfigFromJson(json);

  @override
  @JsonKey(name: 'lsm')
  final LimitedServiceModel lsm;
  @override
  @JsonKey(name: 'servicetype')
  final String servicetype;
  @override
  @JsonKey(name: 'grouptype')
  final String grouptype;
  @override
  @JsonKey(name: 'isshop')
  final bool isshop;
  @override
  @JsonKey(name: 'sp')
  final SpatialData sp;
  @override
  @JsonKey(name: 'cust')
  final Customerinfo cust;
  @override
  @JsonKey(name: 'entrypoint')
  final int entrypoint;
  @override
  @JsonKey(name: 'servicesselected')
  final List<String> servicesselected;
  @override
  @JsonKey(name: 'spoffset')
  final int spoffset;

  @override
  String toString() {
    return 'ProductSearchInformationConfig(lsm: $lsm, servicetype: $servicetype, grouptype: $grouptype, isshop: $isshop, sp: $sp, cust: $cust, entrypoint: $entrypoint, servicesselected: $servicesselected, spoffset: $spoffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductSearchInformationConfig &&
            (identical(other.lsm, lsm) ||
                const DeepCollectionEquality().equals(other.lsm, lsm)) &&
            (identical(other.servicetype, servicetype) ||
                const DeepCollectionEquality()
                    .equals(other.servicetype, servicetype)) &&
            (identical(other.grouptype, grouptype) ||
                const DeepCollectionEquality()
                    .equals(other.grouptype, grouptype)) &&
            (identical(other.isshop, isshop) ||
                const DeepCollectionEquality().equals(other.isshop, isshop)) &&
            (identical(other.sp, sp) ||
                const DeepCollectionEquality().equals(other.sp, sp)) &&
            (identical(other.cust, cust) ||
                const DeepCollectionEquality().equals(other.cust, cust)) &&
            (identical(other.entrypoint, entrypoint) ||
                const DeepCollectionEquality()
                    .equals(other.entrypoint, entrypoint)) &&
            (identical(other.servicesselected, servicesselected) ||
                const DeepCollectionEquality()
                    .equals(other.servicesselected, servicesselected)) &&
            (identical(other.spoffset, spoffset) ||
                const DeepCollectionEquality()
                    .equals(other.spoffset, spoffset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lsm) ^
      const DeepCollectionEquality().hash(servicetype) ^
      const DeepCollectionEquality().hash(grouptype) ^
      const DeepCollectionEquality().hash(isshop) ^
      const DeepCollectionEquality().hash(sp) ^
      const DeepCollectionEquality().hash(cust) ^
      const DeepCollectionEquality().hash(entrypoint) ^
      const DeepCollectionEquality().hash(servicesselected) ^
      const DeepCollectionEquality().hash(spoffset);

  @JsonKey(ignore: true)
  @override
  _$ProductSearchInformationConfigCopyWith<_ProductSearchInformationConfig>
      get copyWith => __$ProductSearchInformationConfigCopyWithImpl<
          _ProductSearchInformationConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductSearchInformationConfigToJson(this);
  }
}

abstract class _ProductSearchInformationConfig
    implements ProductSearchInformationConfig {
  factory _ProductSearchInformationConfig(
          {@JsonKey(name: 'lsm') LimitedServiceModel lsm,
          @JsonKey(name: 'servicetype') String servicetype,
          @JsonKey(name: 'grouptype') String grouptype,
          @JsonKey(name: 'isshop') bool isshop,
          @JsonKey(name: 'sp') SpatialData sp,
          @JsonKey(name: 'cust') Customerinfo cust,
          @JsonKey(name: 'entrypoint') int entrypoint,
          @JsonKey(name: 'servicesselected') List<String> servicesselected,
          @JsonKey(name: 'spoffset') int spoffset}) =
      _$_ProductSearchInformationConfig;

  factory _ProductSearchInformationConfig.fromJson(Map<String, dynamic> json) =
      _$_ProductSearchInformationConfig.fromJson;

  @override
  @JsonKey(name: 'lsm')
  LimitedServiceModel get lsm;
  @override
  @JsonKey(name: 'servicetype')
  String get servicetype;
  @override
  @JsonKey(name: 'grouptype')
  String get grouptype;
  @override
  @JsonKey(name: 'isshop')
  bool get isshop;
  @override
  @JsonKey(name: 'sp')
  SpatialData get sp;
  @override
  @JsonKey(name: 'cust')
  Customerinfo get cust;
  @override
  @JsonKey(name: 'entrypoint')
  int get entrypoint;
  @override
  @JsonKey(name: 'servicesselected')
  List<String> get servicesselected;
  @override
  @JsonKey(name: 'spoffset')
  int get spoffset;
  @override
  @JsonKey(ignore: true)
  _$ProductSearchInformationConfigCopyWith<_ProductSearchInformationConfig>
      get copyWith;
}

SPCustomerModel _$SPCustomerModelFromJson(Map<String, dynamic> json) {
  return _SPCustomerModel.fromJson(json);
}

/// @nodoc
class _$SPCustomerModelTearOff {
  const _$SPCustomerModelTearOff();

// ignore: unused_element
  _SPCustomerModel call(
      {@JsonKey(name: 'customerid') String customerId,
      @JsonKey(name: 'userid') String userId,
      @JsonKey(name: 'phonenum') String phoneNum,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'names') List<List<CustomerNameAgeIngo>> names,
      @JsonKey(name: 'addressinfolist') List<Addressmodel> addressInfolist}) {
    return _SPCustomerModel(
      customerId: customerId,
      userId: userId,
      phoneNum: phoneNum,
      email: email,
      names: names,
      addressInfolist: addressInfolist,
    );
  }

// ignore: unused_element
  SPCustomerModel fromJson(Map<String, Object> json) {
    return SPCustomerModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SPCustomerModel = _$SPCustomerModelTearOff();

/// @nodoc
mixin _$SPCustomerModel {
  @JsonKey(name: 'customerid')
  String get customerId;
  @JsonKey(name: 'userid')
  String get userId;
  @JsonKey(name: 'phonenum')
  String get phoneNum;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'names')
  List<List<CustomerNameAgeIngo>> get names;
  @JsonKey(name: 'addressinfolist')
  List<Addressmodel> get addressInfolist;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SPCustomerModelCopyWith<SPCustomerModel> get copyWith;
}

/// @nodoc
abstract class $SPCustomerModelCopyWith<$Res> {
  factory $SPCustomerModelCopyWith(
          SPCustomerModel value, $Res Function(SPCustomerModel) then) =
      _$SPCustomerModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'customerid') String customerId,
      @JsonKey(name: 'userid') String userId,
      @JsonKey(name: 'phonenum') String phoneNum,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'names') List<List<CustomerNameAgeIngo>> names,
      @JsonKey(name: 'addressinfolist') List<Addressmodel> addressInfolist});
}

/// @nodoc
class _$SPCustomerModelCopyWithImpl<$Res>
    implements $SPCustomerModelCopyWith<$Res> {
  _$SPCustomerModelCopyWithImpl(this._value, this._then);

  final SPCustomerModel _value;
  // ignore: unused_field
  final $Res Function(SPCustomerModel) _then;

  @override
  $Res call({
    Object customerId = freezed,
    Object userId = freezed,
    Object phoneNum = freezed,
    Object email = freezed,
    Object names = freezed,
    Object addressInfolist = freezed,
  }) {
    return _then(_value.copyWith(
      customerId:
          customerId == freezed ? _value.customerId : customerId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      phoneNum: phoneNum == freezed ? _value.phoneNum : phoneNum as String,
      email: email == freezed ? _value.email : email as String,
      names: names == freezed
          ? _value.names
          : names as List<List<CustomerNameAgeIngo>>,
      addressInfolist: addressInfolist == freezed
          ? _value.addressInfolist
          : addressInfolist as List<Addressmodel>,
    ));
  }
}

/// @nodoc
abstract class _$SPCustomerModelCopyWith<$Res>
    implements $SPCustomerModelCopyWith<$Res> {
  factory _$SPCustomerModelCopyWith(
          _SPCustomerModel value, $Res Function(_SPCustomerModel) then) =
      __$SPCustomerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'customerid') String customerId,
      @JsonKey(name: 'userid') String userId,
      @JsonKey(name: 'phonenum') String phoneNum,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'names') List<List<CustomerNameAgeIngo>> names,
      @JsonKey(name: 'addressinfolist') List<Addressmodel> addressInfolist});
}

/// @nodoc
class __$SPCustomerModelCopyWithImpl<$Res>
    extends _$SPCustomerModelCopyWithImpl<$Res>
    implements _$SPCustomerModelCopyWith<$Res> {
  __$SPCustomerModelCopyWithImpl(
      _SPCustomerModel _value, $Res Function(_SPCustomerModel) _then)
      : super(_value, (v) => _then(v as _SPCustomerModel));

  @override
  _SPCustomerModel get _value => super._value as _SPCustomerModel;

  @override
  $Res call({
    Object customerId = freezed,
    Object userId = freezed,
    Object phoneNum = freezed,
    Object email = freezed,
    Object names = freezed,
    Object addressInfolist = freezed,
  }) {
    return _then(_SPCustomerModel(
      customerId:
          customerId == freezed ? _value.customerId : customerId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      phoneNum: phoneNum == freezed ? _value.phoneNum : phoneNum as String,
      email: email == freezed ? _value.email : email as String,
      names: names == freezed
          ? _value.names
          : names as List<List<CustomerNameAgeIngo>>,
      addressInfolist: addressInfolist == freezed
          ? _value.addressInfolist
          : addressInfolist as List<Addressmodel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SPCustomerModel implements _SPCustomerModel {
  _$_SPCustomerModel(
      {@JsonKey(name: 'customerid') this.customerId,
      @JsonKey(name: 'userid') this.userId,
      @JsonKey(name: 'phonenum') this.phoneNum,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'names') this.names,
      @JsonKey(name: 'addressinfolist') this.addressInfolist});

  factory _$_SPCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SPCustomerModelFromJson(json);

  @override
  @JsonKey(name: 'customerid')
  final String customerId;
  @override
  @JsonKey(name: 'userid')
  final String userId;
  @override
  @JsonKey(name: 'phonenum')
  final String phoneNum;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'names')
  final List<List<CustomerNameAgeIngo>> names;
  @override
  @JsonKey(name: 'addressinfolist')
  final List<Addressmodel> addressInfolist;

  @override
  String toString() {
    return 'SPCustomerModel(customerId: $customerId, userId: $userId, phoneNum: $phoneNum, email: $email, names: $names, addressInfolist: $addressInfolist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SPCustomerModel &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.phoneNum, phoneNum) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNum, phoneNum)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.names, names) ||
                const DeepCollectionEquality().equals(other.names, names)) &&
            (identical(other.addressInfolist, addressInfolist) ||
                const DeepCollectionEquality()
                    .equals(other.addressInfolist, addressInfolist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(phoneNum) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(names) ^
      const DeepCollectionEquality().hash(addressInfolist);

  @JsonKey(ignore: true)
  @override
  _$SPCustomerModelCopyWith<_SPCustomerModel> get copyWith =>
      __$SPCustomerModelCopyWithImpl<_SPCustomerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SPCustomerModelToJson(this);
  }
}

abstract class _SPCustomerModel implements SPCustomerModel {
  factory _SPCustomerModel(
      {@JsonKey(name: 'customerid')
          String customerId,
      @JsonKey(name: 'userid')
          String userId,
      @JsonKey(name: 'phonenum')
          String phoneNum,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'names')
          List<List<CustomerNameAgeIngo>> names,
      @JsonKey(name: 'addressinfolist')
          List<Addressmodel> addressInfolist}) = _$_SPCustomerModel;

  factory _SPCustomerModel.fromJson(Map<String, dynamic> json) =
      _$_SPCustomerModel.fromJson;

  @override
  @JsonKey(name: 'customerid')
  String get customerId;
  @override
  @JsonKey(name: 'userid')
  String get userId;
  @override
  @JsonKey(name: 'phonenum')
  String get phoneNum;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'names')
  List<List<CustomerNameAgeIngo>> get names;
  @override
  @JsonKey(name: 'addressinfolist')
  List<Addressmodel> get addressInfolist;
  @override
  @JsonKey(ignore: true)
  _$SPCustomerModelCopyWith<_SPCustomerModel> get copyWith;
}

CustomerNameAgeIngo _$CustomerNameAgeIngoFromJson(Map<String, dynamic> json) {
  return _CustomerNameAgeIngo.fromJson(json);
}

/// @nodoc
class _$CustomerNameAgeIngoTearOff {
  const _$CustomerNameAgeIngoTearOff();

// ignore: unused_element
  _CustomerNameAgeIngo call(
      {@JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'dob', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime dob,
      @JsonKey(name: 'gender')
          String gender}) {
    return _CustomerNameAgeIngo(
      name: name,
      dob: dob,
      gender: gender,
    );
  }

// ignore: unused_element
  CustomerNameAgeIngo fromJson(Map<String, Object> json) {
    return CustomerNameAgeIngo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CustomerNameAgeIngo = _$CustomerNameAgeIngoTearOff();

/// @nodoc
mixin _$CustomerNameAgeIngo {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(
      name: 'dob',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get dob;
  @JsonKey(name: 'gender')
  String get gender;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CustomerNameAgeIngoCopyWith<CustomerNameAgeIngo> get copyWith;
}

/// @nodoc
abstract class $CustomerNameAgeIngoCopyWith<$Res> {
  factory $CustomerNameAgeIngoCopyWith(
          CustomerNameAgeIngo value, $Res Function(CustomerNameAgeIngo) then) =
      _$CustomerNameAgeIngoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'dob', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime dob,
      @JsonKey(name: 'gender')
          String gender});
}

/// @nodoc
class _$CustomerNameAgeIngoCopyWithImpl<$Res>
    implements $CustomerNameAgeIngoCopyWith<$Res> {
  _$CustomerNameAgeIngoCopyWithImpl(this._value, this._then);

  final CustomerNameAgeIngo _value;
  // ignore: unused_field
  final $Res Function(CustomerNameAgeIngo) _then;

  @override
  $Res call({
    Object name = freezed,
    Object dob = freezed,
    Object gender = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      dob: dob == freezed ? _value.dob : dob as DateTime,
      gender: gender == freezed ? _value.gender : gender as String,
    ));
  }
}

/// @nodoc
abstract class _$CustomerNameAgeIngoCopyWith<$Res>
    implements $CustomerNameAgeIngoCopyWith<$Res> {
  factory _$CustomerNameAgeIngoCopyWith(_CustomerNameAgeIngo value,
          $Res Function(_CustomerNameAgeIngo) then) =
      __$CustomerNameAgeIngoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'dob', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime dob,
      @JsonKey(name: 'gender')
          String gender});
}

/// @nodoc
class __$CustomerNameAgeIngoCopyWithImpl<$Res>
    extends _$CustomerNameAgeIngoCopyWithImpl<$Res>
    implements _$CustomerNameAgeIngoCopyWith<$Res> {
  __$CustomerNameAgeIngoCopyWithImpl(
      _CustomerNameAgeIngo _value, $Res Function(_CustomerNameAgeIngo) _then)
      : super(_value, (v) => _then(v as _CustomerNameAgeIngo));

  @override
  _CustomerNameAgeIngo get _value => super._value as _CustomerNameAgeIngo;

  @override
  $Res call({
    Object name = freezed,
    Object dob = freezed,
    Object gender = freezed,
  }) {
    return _then(_CustomerNameAgeIngo(
      name: name == freezed ? _value.name : name as String,
      dob: dob == freezed ? _value.dob : dob as DateTime,
      gender: gender == freezed ? _value.gender : gender as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CustomerNameAgeIngo implements _CustomerNameAgeIngo {
  _$_CustomerNameAgeIngo(
      {@JsonKey(name: 'name')
          this.name,
      @JsonKey(name: 'dob', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.dob,
      @JsonKey(name: 'gender')
          this.gender});

  factory _$_CustomerNameAgeIngo.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomerNameAgeIngoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(
      name: 'dob',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime dob;
  @override
  @JsonKey(name: 'gender')
  final String gender;

  @override
  String toString() {
    return 'CustomerNameAgeIngo(name: $name, dob: $dob, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomerNameAgeIngo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.dob, dob) ||
                const DeepCollectionEquality().equals(other.dob, dob)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(dob) ^
      const DeepCollectionEquality().hash(gender);

  @JsonKey(ignore: true)
  @override
  _$CustomerNameAgeIngoCopyWith<_CustomerNameAgeIngo> get copyWith =>
      __$CustomerNameAgeIngoCopyWithImpl<_CustomerNameAgeIngo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomerNameAgeIngoToJson(this);
  }
}

abstract class _CustomerNameAgeIngo implements CustomerNameAgeIngo {
  factory _CustomerNameAgeIngo(
      {@JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'dob', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime dob,
      @JsonKey(name: 'gender')
          String gender}) = _$_CustomerNameAgeIngo;

  factory _CustomerNameAgeIngo.fromJson(Map<String, dynamic> json) =
      _$_CustomerNameAgeIngo.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(
      name: 'dob',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get dob;
  @override
  @JsonKey(name: 'gender')
  String get gender;
  @override
  @JsonKey(ignore: true)
  _$CustomerNameAgeIngoCopyWith<_CustomerNameAgeIngo> get copyWith;
}

ServiceGroup _$ServiceGroupFromJson(Map<String, dynamic> json) {
  return _ServiceGroup.fromJson(json);
}

/// @nodoc
class _$ServiceGroupTearOff {
  const _$ServiceGroupTearOff();

// ignore: unused_element
  _ServiceGroup call(
      {@JsonKey(name: 'sectionname') String sectionname,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'displaylist') String displaylist,
      @JsonKey(name: 'ordernum') int ordernum,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'servicetypelist') List<ServiceType> servicetypelist}) {
    return _ServiceGroup(
      sectionname: sectionname,
      icon: icon,
      displaylist: displaylist,
      ordernum: ordernum,
      type: type,
      servicetypelist: servicetypelist,
    );
  }

// ignore: unused_element
  ServiceGroup fromJson(Map<String, Object> json) {
    return ServiceGroup.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ServiceGroup = _$ServiceGroupTearOff();

/// @nodoc
mixin _$ServiceGroup {
  @JsonKey(name: 'sectionname')
  String get sectionname;
  @JsonKey(name: 'icon')
  String get icon;
  @JsonKey(name: 'displaylist')
  String get displaylist;
  @JsonKey(name: 'ordernum')
  int get ordernum;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'servicetypelist')
  List<ServiceType> get servicetypelist;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ServiceGroupCopyWith<ServiceGroup> get copyWith;
}

/// @nodoc
abstract class $ServiceGroupCopyWith<$Res> {
  factory $ServiceGroupCopyWith(
          ServiceGroup value, $Res Function(ServiceGroup) then) =
      _$ServiceGroupCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sectionname') String sectionname,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'displaylist') String displaylist,
      @JsonKey(name: 'ordernum') int ordernum,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'servicetypelist') List<ServiceType> servicetypelist});
}

/// @nodoc
class _$ServiceGroupCopyWithImpl<$Res> implements $ServiceGroupCopyWith<$Res> {
  _$ServiceGroupCopyWithImpl(this._value, this._then);

  final ServiceGroup _value;
  // ignore: unused_field
  final $Res Function(ServiceGroup) _then;

  @override
  $Res call({
    Object sectionname = freezed,
    Object icon = freezed,
    Object displaylist = freezed,
    Object ordernum = freezed,
    Object type = freezed,
    Object servicetypelist = freezed,
  }) {
    return _then(_value.copyWith(
      sectionname:
          sectionname == freezed ? _value.sectionname : sectionname as String,
      icon: icon == freezed ? _value.icon : icon as String,
      displaylist:
          displaylist == freezed ? _value.displaylist : displaylist as String,
      ordernum: ordernum == freezed ? _value.ordernum : ordernum as int,
      type: type == freezed ? _value.type : type as String,
      servicetypelist: servicetypelist == freezed
          ? _value.servicetypelist
          : servicetypelist as List<ServiceType>,
    ));
  }
}

/// @nodoc
abstract class _$ServiceGroupCopyWith<$Res>
    implements $ServiceGroupCopyWith<$Res> {
  factory _$ServiceGroupCopyWith(
          _ServiceGroup value, $Res Function(_ServiceGroup) then) =
      __$ServiceGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sectionname') String sectionname,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'displaylist') String displaylist,
      @JsonKey(name: 'ordernum') int ordernum,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'servicetypelist') List<ServiceType> servicetypelist});
}

/// @nodoc
class __$ServiceGroupCopyWithImpl<$Res> extends _$ServiceGroupCopyWithImpl<$Res>
    implements _$ServiceGroupCopyWith<$Res> {
  __$ServiceGroupCopyWithImpl(
      _ServiceGroup _value, $Res Function(_ServiceGroup) _then)
      : super(_value, (v) => _then(v as _ServiceGroup));

  @override
  _ServiceGroup get _value => super._value as _ServiceGroup;

  @override
  $Res call({
    Object sectionname = freezed,
    Object icon = freezed,
    Object displaylist = freezed,
    Object ordernum = freezed,
    Object type = freezed,
    Object servicetypelist = freezed,
  }) {
    return _then(_ServiceGroup(
      sectionname:
          sectionname == freezed ? _value.sectionname : sectionname as String,
      icon: icon == freezed ? _value.icon : icon as String,
      displaylist:
          displaylist == freezed ? _value.displaylist : displaylist as String,
      ordernum: ordernum == freezed ? _value.ordernum : ordernum as int,
      type: type == freezed ? _value.type : type as String,
      servicetypelist: servicetypelist == freezed
          ? _value.servicetypelist
          : servicetypelist as List<ServiceType>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ServiceGroup implements _ServiceGroup {
  _$_ServiceGroup(
      {@JsonKey(name: 'sectionname') this.sectionname,
      @JsonKey(name: 'icon') this.icon,
      @JsonKey(name: 'displaylist') this.displaylist,
      @JsonKey(name: 'ordernum') this.ordernum,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'servicetypelist') this.servicetypelist});

  factory _$_ServiceGroup.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceGroupFromJson(json);

  @override
  @JsonKey(name: 'sectionname')
  final String sectionname;
  @override
  @JsonKey(name: 'icon')
  final String icon;
  @override
  @JsonKey(name: 'displaylist')
  final String displaylist;
  @override
  @JsonKey(name: 'ordernum')
  final int ordernum;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'servicetypelist')
  final List<ServiceType> servicetypelist;

  @override
  String toString() {
    return 'ServiceGroup(sectionname: $sectionname, icon: $icon, displaylist: $displaylist, ordernum: $ordernum, type: $type, servicetypelist: $servicetypelist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceGroup &&
            (identical(other.sectionname, sectionname) ||
                const DeepCollectionEquality()
                    .equals(other.sectionname, sectionname)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.displaylist, displaylist) ||
                const DeepCollectionEquality()
                    .equals(other.displaylist, displaylist)) &&
            (identical(other.ordernum, ordernum) ||
                const DeepCollectionEquality()
                    .equals(other.ordernum, ordernum)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.servicetypelist, servicetypelist) ||
                const DeepCollectionEquality()
                    .equals(other.servicetypelist, servicetypelist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sectionname) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(displaylist) ^
      const DeepCollectionEquality().hash(ordernum) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(servicetypelist);

  @JsonKey(ignore: true)
  @override
  _$ServiceGroupCopyWith<_ServiceGroup> get copyWith =>
      __$ServiceGroupCopyWithImpl<_ServiceGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceGroupToJson(this);
  }
}

abstract class _ServiceGroup implements ServiceGroup {
  factory _ServiceGroup(
      {@JsonKey(name: 'sectionname')
          String sectionname,
      @JsonKey(name: 'icon')
          String icon,
      @JsonKey(name: 'displaylist')
          String displaylist,
      @JsonKey(name: 'ordernum')
          int ordernum,
      @JsonKey(name: 'type')
          String type,
      @JsonKey(name: 'servicetypelist')
          List<ServiceType> servicetypelist}) = _$_ServiceGroup;

  factory _ServiceGroup.fromJson(Map<String, dynamic> json) =
      _$_ServiceGroup.fromJson;

  @override
  @JsonKey(name: 'sectionname')
  String get sectionname;
  @override
  @JsonKey(name: 'icon')
  String get icon;
  @override
  @JsonKey(name: 'displaylist')
  String get displaylist;
  @override
  @JsonKey(name: 'ordernum')
  int get ordernum;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'servicetypelist')
  List<ServiceType> get servicetypelist;
  @override
  @JsonKey(ignore: true)
  _$ServiceGroupCopyWith<_ServiceGroup> get copyWith;
}

ServiceType _$ServiceTypeFromJson(Map<String, dynamic> json) {
  return _ServiceType.fromJson(json);
}

/// @nodoc
class _$ServiceTypeTearOff {
  const _$ServiceTypeTearOff();

// ignore: unused_element
  _ServiceType call(
      {@JsonKey(name: 'servicetype') String servicetype,
      @JsonKey(name: 'querystr') String querystr,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'displaylist') String displaylist,
      @JsonKey(name: 'ordernum') int ordernum,
      @JsonKey(name: 'childservicetype') List<ServiceType> childservicetype,
      @JsonKey(name: 'filtertype') String filtertype,
      @JsonKey(name: 'filterdata') ServiceTypeFilterData filterdata}) {
    return _ServiceType(
      servicetype: servicetype,
      querystr: querystr,
      icon: icon,
      displaylist: displaylist,
      ordernum: ordernum,
      childservicetype: childservicetype,
      filtertype: filtertype,
      filterdata: filterdata,
    );
  }

// ignore: unused_element
  ServiceType fromJson(Map<String, Object> json) {
    return ServiceType.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ServiceType = _$ServiceTypeTearOff();

/// @nodoc
mixin _$ServiceType {
  @JsonKey(name: 'servicetype')
  String get servicetype;
  @JsonKey(name: 'querystr')
  String get querystr;
  @JsonKey(name: 'icon')
  String get icon;
  @JsonKey(name: 'displaylist')
  String get displaylist;
  @JsonKey(name: 'ordernum')
  int get ordernum;
  @JsonKey(name: 'childservicetype')
  List<ServiceType> get childservicetype;
  @JsonKey(name: 'filtertype')
  String get filtertype;
  @JsonKey(name: 'filterdata')
  ServiceTypeFilterData get filterdata;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ServiceTypeCopyWith<ServiceType> get copyWith;
}

/// @nodoc
abstract class $ServiceTypeCopyWith<$Res> {
  factory $ServiceTypeCopyWith(
          ServiceType value, $Res Function(ServiceType) then) =
      _$ServiceTypeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'servicetype') String servicetype,
      @JsonKey(name: 'querystr') String querystr,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'displaylist') String displaylist,
      @JsonKey(name: 'ordernum') int ordernum,
      @JsonKey(name: 'childservicetype') List<ServiceType> childservicetype,
      @JsonKey(name: 'filtertype') String filtertype,
      @JsonKey(name: 'filterdata') ServiceTypeFilterData filterdata});

  $ServiceTypeFilterDataCopyWith<$Res> get filterdata;
}

/// @nodoc
class _$ServiceTypeCopyWithImpl<$Res> implements $ServiceTypeCopyWith<$Res> {
  _$ServiceTypeCopyWithImpl(this._value, this._then);

  final ServiceType _value;
  // ignore: unused_field
  final $Res Function(ServiceType) _then;

  @override
  $Res call({
    Object servicetype = freezed,
    Object querystr = freezed,
    Object icon = freezed,
    Object displaylist = freezed,
    Object ordernum = freezed,
    Object childservicetype = freezed,
    Object filtertype = freezed,
    Object filterdata = freezed,
  }) {
    return _then(_value.copyWith(
      servicetype:
          servicetype == freezed ? _value.servicetype : servicetype as String,
      querystr: querystr == freezed ? _value.querystr : querystr as String,
      icon: icon == freezed ? _value.icon : icon as String,
      displaylist:
          displaylist == freezed ? _value.displaylist : displaylist as String,
      ordernum: ordernum == freezed ? _value.ordernum : ordernum as int,
      childservicetype: childservicetype == freezed
          ? _value.childservicetype
          : childservicetype as List<ServiceType>,
      filtertype:
          filtertype == freezed ? _value.filtertype : filtertype as String,
      filterdata: filterdata == freezed
          ? _value.filterdata
          : filterdata as ServiceTypeFilterData,
    ));
  }

  @override
  $ServiceTypeFilterDataCopyWith<$Res> get filterdata {
    if (_value.filterdata == null) {
      return null;
    }
    return $ServiceTypeFilterDataCopyWith<$Res>(_value.filterdata, (value) {
      return _then(_value.copyWith(filterdata: value));
    });
  }
}

/// @nodoc
abstract class _$ServiceTypeCopyWith<$Res>
    implements $ServiceTypeCopyWith<$Res> {
  factory _$ServiceTypeCopyWith(
          _ServiceType value, $Res Function(_ServiceType) then) =
      __$ServiceTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'servicetype') String servicetype,
      @JsonKey(name: 'querystr') String querystr,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'displaylist') String displaylist,
      @JsonKey(name: 'ordernum') int ordernum,
      @JsonKey(name: 'childservicetype') List<ServiceType> childservicetype,
      @JsonKey(name: 'filtertype') String filtertype,
      @JsonKey(name: 'filterdata') ServiceTypeFilterData filterdata});

  @override
  $ServiceTypeFilterDataCopyWith<$Res> get filterdata;
}

/// @nodoc
class __$ServiceTypeCopyWithImpl<$Res> extends _$ServiceTypeCopyWithImpl<$Res>
    implements _$ServiceTypeCopyWith<$Res> {
  __$ServiceTypeCopyWithImpl(
      _ServiceType _value, $Res Function(_ServiceType) _then)
      : super(_value, (v) => _then(v as _ServiceType));

  @override
  _ServiceType get _value => super._value as _ServiceType;

  @override
  $Res call({
    Object servicetype = freezed,
    Object querystr = freezed,
    Object icon = freezed,
    Object displaylist = freezed,
    Object ordernum = freezed,
    Object childservicetype = freezed,
    Object filtertype = freezed,
    Object filterdata = freezed,
  }) {
    return _then(_ServiceType(
      servicetype:
          servicetype == freezed ? _value.servicetype : servicetype as String,
      querystr: querystr == freezed ? _value.querystr : querystr as String,
      icon: icon == freezed ? _value.icon : icon as String,
      displaylist:
          displaylist == freezed ? _value.displaylist : displaylist as String,
      ordernum: ordernum == freezed ? _value.ordernum : ordernum as int,
      childservicetype: childservicetype == freezed
          ? _value.childservicetype
          : childservicetype as List<ServiceType>,
      filtertype:
          filtertype == freezed ? _value.filtertype : filtertype as String,
      filterdata: filterdata == freezed
          ? _value.filterdata
          : filterdata as ServiceTypeFilterData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ServiceType implements _ServiceType {
  _$_ServiceType(
      {@JsonKey(name: 'servicetype') this.servicetype,
      @JsonKey(name: 'querystr') this.querystr,
      @JsonKey(name: 'icon') this.icon,
      @JsonKey(name: 'displaylist') this.displaylist,
      @JsonKey(name: 'ordernum') this.ordernum,
      @JsonKey(name: 'childservicetype') this.childservicetype,
      @JsonKey(name: 'filtertype') this.filtertype,
      @JsonKey(name: 'filterdata') this.filterdata});

  factory _$_ServiceType.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceTypeFromJson(json);

  @override
  @JsonKey(name: 'servicetype')
  final String servicetype;
  @override
  @JsonKey(name: 'querystr')
  final String querystr;
  @override
  @JsonKey(name: 'icon')
  final String icon;
  @override
  @JsonKey(name: 'displaylist')
  final String displaylist;
  @override
  @JsonKey(name: 'ordernum')
  final int ordernum;
  @override
  @JsonKey(name: 'childservicetype')
  final List<ServiceType> childservicetype;
  @override
  @JsonKey(name: 'filtertype')
  final String filtertype;
  @override
  @JsonKey(name: 'filterdata')
  final ServiceTypeFilterData filterdata;

  @override
  String toString() {
    return 'ServiceType(servicetype: $servicetype, querystr: $querystr, icon: $icon, displaylist: $displaylist, ordernum: $ordernum, childservicetype: $childservicetype, filtertype: $filtertype, filterdata: $filterdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceType &&
            (identical(other.servicetype, servicetype) ||
                const DeepCollectionEquality()
                    .equals(other.servicetype, servicetype)) &&
            (identical(other.querystr, querystr) ||
                const DeepCollectionEquality()
                    .equals(other.querystr, querystr)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.displaylist, displaylist) ||
                const DeepCollectionEquality()
                    .equals(other.displaylist, displaylist)) &&
            (identical(other.ordernum, ordernum) ||
                const DeepCollectionEquality()
                    .equals(other.ordernum, ordernum)) &&
            (identical(other.childservicetype, childservicetype) ||
                const DeepCollectionEquality()
                    .equals(other.childservicetype, childservicetype)) &&
            (identical(other.filtertype, filtertype) ||
                const DeepCollectionEquality()
                    .equals(other.filtertype, filtertype)) &&
            (identical(other.filterdata, filterdata) ||
                const DeepCollectionEquality()
                    .equals(other.filterdata, filterdata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(servicetype) ^
      const DeepCollectionEquality().hash(querystr) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(displaylist) ^
      const DeepCollectionEquality().hash(ordernum) ^
      const DeepCollectionEquality().hash(childservicetype) ^
      const DeepCollectionEquality().hash(filtertype) ^
      const DeepCollectionEquality().hash(filterdata);

  @JsonKey(ignore: true)
  @override
  _$ServiceTypeCopyWith<_ServiceType> get copyWith =>
      __$ServiceTypeCopyWithImpl<_ServiceType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceTypeToJson(this);
  }
}

abstract class _ServiceType implements ServiceType {
  factory _ServiceType(
          {@JsonKey(name: 'servicetype') String servicetype,
          @JsonKey(name: 'querystr') String querystr,
          @JsonKey(name: 'icon') String icon,
          @JsonKey(name: 'displaylist') String displaylist,
          @JsonKey(name: 'ordernum') int ordernum,
          @JsonKey(name: 'childservicetype') List<ServiceType> childservicetype,
          @JsonKey(name: 'filtertype') String filtertype,
          @JsonKey(name: 'filterdata') ServiceTypeFilterData filterdata}) =
      _$_ServiceType;

  factory _ServiceType.fromJson(Map<String, dynamic> json) =
      _$_ServiceType.fromJson;

  @override
  @JsonKey(name: 'servicetype')
  String get servicetype;
  @override
  @JsonKey(name: 'querystr')
  String get querystr;
  @override
  @JsonKey(name: 'icon')
  String get icon;
  @override
  @JsonKey(name: 'displaylist')
  String get displaylist;
  @override
  @JsonKey(name: 'ordernum')
  int get ordernum;
  @override
  @JsonKey(name: 'childservicetype')
  List<ServiceType> get childservicetype;
  @override
  @JsonKey(name: 'filtertype')
  String get filtertype;
  @override
  @JsonKey(name: 'filterdata')
  ServiceTypeFilterData get filterdata;
  @override
  @JsonKey(ignore: true)
  _$ServiceTypeCopyWith<_ServiceType> get copyWith;
}

ServiceTypeFilterData _$ServiceTypeFilterDataFromJson(
    Map<String, dynamic> json) {
  return _ServiceTypeFilterData.fromJson(json);
}

/// @nodoc
class _$ServiceTypeFilterDataTearOff {
  const _$ServiceTypeFilterDataTearOff();

// ignore: unused_element
  _ServiceTypeFilterData call(
      {@JsonKey(name: 'filterheading') List<String> filterheading,
      @JsonKey(name: 'depth') int depth,
      @JsonKey(name: 'values') List<ServiceTypeFilterValues> values}) {
    return _ServiceTypeFilterData(
      filterheading: filterheading,
      depth: depth,
      values: values,
    );
  }

// ignore: unused_element
  ServiceTypeFilterData fromJson(Map<String, Object> json) {
    return ServiceTypeFilterData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ServiceTypeFilterData = _$ServiceTypeFilterDataTearOff();

/// @nodoc
mixin _$ServiceTypeFilterData {
  @JsonKey(name: 'filterheading')
  List<String> get filterheading;
  @JsonKey(name: 'depth')
  int get depth;
  @JsonKey(name: 'values')
  List<ServiceTypeFilterValues> get values;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ServiceTypeFilterDataCopyWith<ServiceTypeFilterData> get copyWith;
}

/// @nodoc
abstract class $ServiceTypeFilterDataCopyWith<$Res> {
  factory $ServiceTypeFilterDataCopyWith(ServiceTypeFilterData value,
          $Res Function(ServiceTypeFilterData) then) =
      _$ServiceTypeFilterDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'filterheading') List<String> filterheading,
      @JsonKey(name: 'depth') int depth,
      @JsonKey(name: 'values') List<ServiceTypeFilterValues> values});
}

/// @nodoc
class _$ServiceTypeFilterDataCopyWithImpl<$Res>
    implements $ServiceTypeFilterDataCopyWith<$Res> {
  _$ServiceTypeFilterDataCopyWithImpl(this._value, this._then);

  final ServiceTypeFilterData _value;
  // ignore: unused_field
  final $Res Function(ServiceTypeFilterData) _then;

  @override
  $Res call({
    Object filterheading = freezed,
    Object depth = freezed,
    Object values = freezed,
  }) {
    return _then(_value.copyWith(
      filterheading: filterheading == freezed
          ? _value.filterheading
          : filterheading as List<String>,
      depth: depth == freezed ? _value.depth : depth as int,
      values: values == freezed
          ? _value.values
          : values as List<ServiceTypeFilterValues>,
    ));
  }
}

/// @nodoc
abstract class _$ServiceTypeFilterDataCopyWith<$Res>
    implements $ServiceTypeFilterDataCopyWith<$Res> {
  factory _$ServiceTypeFilterDataCopyWith(_ServiceTypeFilterData value,
          $Res Function(_ServiceTypeFilterData) then) =
      __$ServiceTypeFilterDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'filterheading') List<String> filterheading,
      @JsonKey(name: 'depth') int depth,
      @JsonKey(name: 'values') List<ServiceTypeFilterValues> values});
}

/// @nodoc
class __$ServiceTypeFilterDataCopyWithImpl<$Res>
    extends _$ServiceTypeFilterDataCopyWithImpl<$Res>
    implements _$ServiceTypeFilterDataCopyWith<$Res> {
  __$ServiceTypeFilterDataCopyWithImpl(_ServiceTypeFilterData _value,
      $Res Function(_ServiceTypeFilterData) _then)
      : super(_value, (v) => _then(v as _ServiceTypeFilterData));

  @override
  _ServiceTypeFilterData get _value => super._value as _ServiceTypeFilterData;

  @override
  $Res call({
    Object filterheading = freezed,
    Object depth = freezed,
    Object values = freezed,
  }) {
    return _then(_ServiceTypeFilterData(
      filterheading: filterheading == freezed
          ? _value.filterheading
          : filterheading as List<String>,
      depth: depth == freezed ? _value.depth : depth as int,
      values: values == freezed
          ? _value.values
          : values as List<ServiceTypeFilterValues>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ServiceTypeFilterData implements _ServiceTypeFilterData {
  _$_ServiceTypeFilterData(
      {@JsonKey(name: 'filterheading') this.filterheading,
      @JsonKey(name: 'depth') this.depth,
      @JsonKey(name: 'values') this.values});

  factory _$_ServiceTypeFilterData.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceTypeFilterDataFromJson(json);

  @override
  @JsonKey(name: 'filterheading')
  final List<String> filterheading;
  @override
  @JsonKey(name: 'depth')
  final int depth;
  @override
  @JsonKey(name: 'values')
  final List<ServiceTypeFilterValues> values;

  @override
  String toString() {
    return 'ServiceTypeFilterData(filterheading: $filterheading, depth: $depth, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceTypeFilterData &&
            (identical(other.filterheading, filterheading) ||
                const DeepCollectionEquality()
                    .equals(other.filterheading, filterheading)) &&
            (identical(other.depth, depth) ||
                const DeepCollectionEquality().equals(other.depth, depth)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filterheading) ^
      const DeepCollectionEquality().hash(depth) ^
      const DeepCollectionEquality().hash(values);

  @JsonKey(ignore: true)
  @override
  _$ServiceTypeFilterDataCopyWith<_ServiceTypeFilterData> get copyWith =>
      __$ServiceTypeFilterDataCopyWithImpl<_ServiceTypeFilterData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceTypeFilterDataToJson(this);
  }
}

abstract class _ServiceTypeFilterData implements ServiceTypeFilterData {
  factory _ServiceTypeFilterData(
          {@JsonKey(name: 'filterheading') List<String> filterheading,
          @JsonKey(name: 'depth') int depth,
          @JsonKey(name: 'values') List<ServiceTypeFilterValues> values}) =
      _$_ServiceTypeFilterData;

  factory _ServiceTypeFilterData.fromJson(Map<String, dynamic> json) =
      _$_ServiceTypeFilterData.fromJson;

  @override
  @JsonKey(name: 'filterheading')
  List<String> get filterheading;
  @override
  @JsonKey(name: 'depth')
  int get depth;
  @override
  @JsonKey(name: 'values')
  List<ServiceTypeFilterValues> get values;
  @override
  @JsonKey(ignore: true)
  _$ServiceTypeFilterDataCopyWith<_ServiceTypeFilterData> get copyWith;
}

ServiceTypeFilterValues _$ServiceTypeFilterValuesFromJson(
    Map<String, dynamic> json) {
  return _ServiceTypeFilterValues.fromJson(json);
}

/// @nodoc
class _$ServiceTypeFilterValuesTearOff {
  const _$ServiceTypeFilterValuesTearOff();

// ignore: unused_element
  _ServiceTypeFilterValues call(
      {@JsonKey(name: 'value') String value,
      @JsonKey(name: 'childvalues') List<String> childvalues}) {
    return _ServiceTypeFilterValues(
      value: value,
      childvalues: childvalues,
    );
  }

// ignore: unused_element
  ServiceTypeFilterValues fromJson(Map<String, Object> json) {
    return ServiceTypeFilterValues.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ServiceTypeFilterValues = _$ServiceTypeFilterValuesTearOff();

/// @nodoc
mixin _$ServiceTypeFilterValues {
  @JsonKey(name: 'value')
  String get value;
  @JsonKey(name: 'childvalues')
  List<String> get childvalues;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ServiceTypeFilterValuesCopyWith<ServiceTypeFilterValues> get copyWith;
}

/// @nodoc
abstract class $ServiceTypeFilterValuesCopyWith<$Res> {
  factory $ServiceTypeFilterValuesCopyWith(ServiceTypeFilterValues value,
          $Res Function(ServiceTypeFilterValues) then) =
      _$ServiceTypeFilterValuesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'value') String value,
      @JsonKey(name: 'childvalues') List<String> childvalues});
}

/// @nodoc
class _$ServiceTypeFilterValuesCopyWithImpl<$Res>
    implements $ServiceTypeFilterValuesCopyWith<$Res> {
  _$ServiceTypeFilterValuesCopyWithImpl(this._value, this._then);

  final ServiceTypeFilterValues _value;
  // ignore: unused_field
  final $Res Function(ServiceTypeFilterValues) _then;

  @override
  $Res call({
    Object value = freezed,
    Object childvalues = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
      childvalues: childvalues == freezed
          ? _value.childvalues
          : childvalues as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ServiceTypeFilterValuesCopyWith<$Res>
    implements $ServiceTypeFilterValuesCopyWith<$Res> {
  factory _$ServiceTypeFilterValuesCopyWith(_ServiceTypeFilterValues value,
          $Res Function(_ServiceTypeFilterValues) then) =
      __$ServiceTypeFilterValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'value') String value,
      @JsonKey(name: 'childvalues') List<String> childvalues});
}

/// @nodoc
class __$ServiceTypeFilterValuesCopyWithImpl<$Res>
    extends _$ServiceTypeFilterValuesCopyWithImpl<$Res>
    implements _$ServiceTypeFilterValuesCopyWith<$Res> {
  __$ServiceTypeFilterValuesCopyWithImpl(_ServiceTypeFilterValues _value,
      $Res Function(_ServiceTypeFilterValues) _then)
      : super(_value, (v) => _then(v as _ServiceTypeFilterValues));

  @override
  _ServiceTypeFilterValues get _value =>
      super._value as _ServiceTypeFilterValues;

  @override
  $Res call({
    Object value = freezed,
    Object childvalues = freezed,
  }) {
    return _then(_ServiceTypeFilterValues(
      value: value == freezed ? _value.value : value as String,
      childvalues: childvalues == freezed
          ? _value.childvalues
          : childvalues as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ServiceTypeFilterValues implements _ServiceTypeFilterValues {
  _$_ServiceTypeFilterValues(
      {@JsonKey(name: 'value') this.value,
      @JsonKey(name: 'childvalues') this.childvalues});

  factory _$_ServiceTypeFilterValues.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceTypeFilterValuesFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'childvalues')
  final List<String> childvalues;

  @override
  String toString() {
    return 'ServiceTypeFilterValues(value: $value, childvalues: $childvalues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceTypeFilterValues &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.childvalues, childvalues) ||
                const DeepCollectionEquality()
                    .equals(other.childvalues, childvalues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(childvalues);

  @JsonKey(ignore: true)
  @override
  _$ServiceTypeFilterValuesCopyWith<_ServiceTypeFilterValues> get copyWith =>
      __$ServiceTypeFilterValuesCopyWithImpl<_ServiceTypeFilterValues>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceTypeFilterValuesToJson(this);
  }
}

abstract class _ServiceTypeFilterValues implements ServiceTypeFilterValues {
  factory _ServiceTypeFilterValues(
          {@JsonKey(name: 'value') String value,
          @JsonKey(name: 'childvalues') List<String> childvalues}) =
      _$_ServiceTypeFilterValues;

  factory _ServiceTypeFilterValues.fromJson(Map<String, dynamic> json) =
      _$_ServiceTypeFilterValues.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'childvalues')
  List<String> get childvalues;
  @override
  @JsonKey(ignore: true)
  _$ServiceTypeFilterValuesCopyWith<_ServiceTypeFilterValues> get copyWith;
}

ExplorePageParameters _$ExplorePageParametersFromJson(
    Map<String, dynamic> json) {
  return _ExplorePageParameters.fromJson(json);
}

/// @nodoc
class _$ExplorePageParametersTearOff {
  const _$ExplorePageParametersTearOff();

// ignore: unused_element
  _ExplorePageParameters call(
      {@JsonKey(name: 'adlist') List<ExplorePageAd> adlist,
      @JsonKey(name: 'favsplist') List<LimitedServiceModel> favsplist}) {
    return _ExplorePageParameters(
      adlist: adlist,
      favsplist: favsplist,
    );
  }

// ignore: unused_element
  ExplorePageParameters fromJson(Map<String, Object> json) {
    return ExplorePageParameters.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ExplorePageParameters = _$ExplorePageParametersTearOff();

/// @nodoc
mixin _$ExplorePageParameters {
  @JsonKey(name: 'adlist')
  List<ExplorePageAd> get adlist;
  @JsonKey(name: 'favsplist')
  List<LimitedServiceModel> get favsplist;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ExplorePageParametersCopyWith<ExplorePageParameters> get copyWith;
}

/// @nodoc
abstract class $ExplorePageParametersCopyWith<$Res> {
  factory $ExplorePageParametersCopyWith(ExplorePageParameters value,
          $Res Function(ExplorePageParameters) then) =
      _$ExplorePageParametersCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'adlist') List<ExplorePageAd> adlist,
      @JsonKey(name: 'favsplist') List<LimitedServiceModel> favsplist});
}

/// @nodoc
class _$ExplorePageParametersCopyWithImpl<$Res>
    implements $ExplorePageParametersCopyWith<$Res> {
  _$ExplorePageParametersCopyWithImpl(this._value, this._then);

  final ExplorePageParameters _value;
  // ignore: unused_field
  final $Res Function(ExplorePageParameters) _then;

  @override
  $Res call({
    Object adlist = freezed,
    Object favsplist = freezed,
  }) {
    return _then(_value.copyWith(
      adlist: adlist == freezed ? _value.adlist : adlist as List<ExplorePageAd>,
      favsplist: favsplist == freezed
          ? _value.favsplist
          : favsplist as List<LimitedServiceModel>,
    ));
  }
}

/// @nodoc
abstract class _$ExplorePageParametersCopyWith<$Res>
    implements $ExplorePageParametersCopyWith<$Res> {
  factory _$ExplorePageParametersCopyWith(_ExplorePageParameters value,
          $Res Function(_ExplorePageParameters) then) =
      __$ExplorePageParametersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'adlist') List<ExplorePageAd> adlist,
      @JsonKey(name: 'favsplist') List<LimitedServiceModel> favsplist});
}

/// @nodoc
class __$ExplorePageParametersCopyWithImpl<$Res>
    extends _$ExplorePageParametersCopyWithImpl<$Res>
    implements _$ExplorePageParametersCopyWith<$Res> {
  __$ExplorePageParametersCopyWithImpl(_ExplorePageParameters _value,
      $Res Function(_ExplorePageParameters) _then)
      : super(_value, (v) => _then(v as _ExplorePageParameters));

  @override
  _ExplorePageParameters get _value => super._value as _ExplorePageParameters;

  @override
  $Res call({
    Object adlist = freezed,
    Object favsplist = freezed,
  }) {
    return _then(_ExplorePageParameters(
      adlist: adlist == freezed ? _value.adlist : adlist as List<ExplorePageAd>,
      favsplist: favsplist == freezed
          ? _value.favsplist
          : favsplist as List<LimitedServiceModel>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ExplorePageParameters implements _ExplorePageParameters {
  _$_ExplorePageParameters(
      {@JsonKey(name: 'adlist') this.adlist,
      @JsonKey(name: 'favsplist') this.favsplist});

  factory _$_ExplorePageParameters.fromJson(Map<String, dynamic> json) =>
      _$_$_ExplorePageParametersFromJson(json);

  @override
  @JsonKey(name: 'adlist')
  final List<ExplorePageAd> adlist;
  @override
  @JsonKey(name: 'favsplist')
  final List<LimitedServiceModel> favsplist;

  @override
  String toString() {
    return 'ExplorePageParameters(adlist: $adlist, favsplist: $favsplist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExplorePageParameters &&
            (identical(other.adlist, adlist) ||
                const DeepCollectionEquality().equals(other.adlist, adlist)) &&
            (identical(other.favsplist, favsplist) ||
                const DeepCollectionEquality()
                    .equals(other.favsplist, favsplist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(adlist) ^
      const DeepCollectionEquality().hash(favsplist);

  @JsonKey(ignore: true)
  @override
  _$ExplorePageParametersCopyWith<_ExplorePageParameters> get copyWith =>
      __$ExplorePageParametersCopyWithImpl<_ExplorePageParameters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExplorePageParametersToJson(this);
  }
}

abstract class _ExplorePageParameters implements ExplorePageParameters {
  factory _ExplorePageParameters(
          {@JsonKey(name: 'adlist') List<ExplorePageAd> adlist,
          @JsonKey(name: 'favsplist') List<LimitedServiceModel> favsplist}) =
      _$_ExplorePageParameters;

  factory _ExplorePageParameters.fromJson(Map<String, dynamic> json) =
      _$_ExplorePageParameters.fromJson;

  @override
  @JsonKey(name: 'adlist')
  List<ExplorePageAd> get adlist;
  @override
  @JsonKey(name: 'favsplist')
  List<LimitedServiceModel> get favsplist;
  @override
  @JsonKey(ignore: true)
  _$ExplorePageParametersCopyWith<_ExplorePageParameters> get copyWith;
}
