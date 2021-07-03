// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'complete_product_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CompleteProductData _$CompleteProductDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'realEstate':
      return CompleteRealEstate.fromJson(json);
    case 'job':
      return CompleteJob.fromJson(json);
    case 'pet':
      return CompleteJob.fromJson(json);
    case 'vehicle':
      return CompleteJob.fromJson(json);
    case 'product':
      return CompleteJob.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CompleteProductDataTearOff {
  const _$CompleteProductDataTearOff();

// ignore: unused_element
  CompleteRealEstate realEstate(
      {@required
      @JsonKey(name: 'docid')
          String docId,
      @required
          String dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          String serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          String userId,
      @required
      @JsonKey(name: 'adata')
          JobData data}) {
    return CompleteRealEstate(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
      data: data,
    );
  }

// ignore: unused_element
  CompleteJob job(
      {@required
      @JsonKey(name: 'docid')
          String docId,
      @required
          String dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          String serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          String userId}) {
    return CompleteJob(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
    );
  }

// ignore: unused_element
  CompleteJob pet(
      {@required
      @JsonKey(name: 'docid')
          String docId,
      @required
          String dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          String serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          String userId}) {
    return CompleteJob(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
    );
  }

// ignore: unused_element
  CompleteJob vehicle(
      {@required
      @JsonKey(name: 'docid')
          String docId,
      @required
          String dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          String serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          String userId}) {
    return CompleteJob(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
    );
  }

// ignore: unused_element
  CompleteJob product(
      {@required
      @JsonKey(name: 'docid')
          String docId,
      @required
          String dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          String serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          String userId}) {
    return CompleteJob(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
    );
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
  @JsonKey(name: 'docid')
  String get docId;
  String get dt;
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  String get serviceId;
  @JsonKey(name: 'userid', defaultValue: '')
  String get userId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult realEstate(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                JobData data),
    @required
        TResult job(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult pet(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult realEstate(CompleteRealEstate value),
    @required TResult job(CompleteJob value),
    @required TResult pet(CompleteJob value),
    @required TResult vehicle(CompleteJob value),
    @required TResult product(CompleteJob value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult realEstate(CompleteRealEstate value),
    TResult job(CompleteJob value),
    TResult pet(CompleteJob value),
    TResult vehicle(CompleteJob value),
    TResult product(CompleteJob value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CompleteProductDataCopyWith<CompleteProductData> get copyWith;
}

/// @nodoc
abstract class $CompleteProductDataCopyWith<$Res> {
  factory $CompleteProductDataCopyWith(
          CompleteProductData value, $Res Function(CompleteProductData) then) =
      _$CompleteProductDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'docid') String docId,
      String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
      @JsonKey(name: 'userid', defaultValue: '') String userId});
}

/// @nodoc
class _$CompleteProductDataCopyWithImpl<$Res>
    implements $CompleteProductDataCopyWith<$Res> {
  _$CompleteProductDataCopyWithImpl(this._value, this._then);

  final CompleteProductData _value;
  // ignore: unused_field
  final $Res Function(CompleteProductData) _then;

  @override
  $Res call({
    Object docId = freezed,
    Object dt = freezed,
    Object serviceId = freezed,
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
abstract class $CompleteRealEstateCopyWith<$Res>
    implements $CompleteProductDataCopyWith<$Res> {
  factory $CompleteRealEstateCopyWith(
          CompleteRealEstate value, $Res Function(CompleteRealEstate) then) =
      _$CompleteRealEstateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid') String docId,
      String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
      @JsonKey(name: 'userid', defaultValue: '') String userId,
      @JsonKey(name: 'adata') JobData data});

  $JobDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CompleteRealEstateCopyWithImpl<$Res>
    extends _$CompleteProductDataCopyWithImpl<$Res>
    implements $CompleteRealEstateCopyWith<$Res> {
  _$CompleteRealEstateCopyWithImpl(
      CompleteRealEstate _value, $Res Function(CompleteRealEstate) _then)
      : super(_value, (v) => _then(v as CompleteRealEstate));

  @override
  CompleteRealEstate get _value => super._value as CompleteRealEstate;

  @override
  $Res call({
    Object docId = freezed,
    Object dt = freezed,
    Object serviceId = freezed,
    Object userId = freezed,
    Object data = freezed,
  }) {
    return _then(CompleteRealEstate(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      data: data == freezed ? _value.data : data as JobData,
    ));
  }

  @override
  $JobDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $JobDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteRealEstate implements CompleteRealEstate {
  const _$CompleteRealEstate(
      {@required
      @JsonKey(name: 'docid')
          this.docId,
      @required
          this.dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          this.serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          this.userId,
      @required
      @JsonKey(name: 'adata')
          this.data})
      : assert(docId != null),
        assert(dt != null),
        assert(serviceId != null),
        assert(userId != null),
        assert(data != null);

  factory _$CompleteRealEstate.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteRealEstateFromJson(json);

  @override
  @JsonKey(name: 'docid')
  final String docId;
  @override
  final String dt;
  @override
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  final String serviceId;
  @override
  @JsonKey(name: 'userid', defaultValue: '')
  final String userId;
  @override
  @JsonKey(name: 'adata')
  final JobData data;

  @override
  String toString() {
    return 'CompleteProductData.realEstate(docId: $docId, dt: $dt, serviceId: $serviceId, userId: $userId, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteRealEstate &&
            (identical(other.docId, docId) ||
                const DeepCollectionEquality().equals(other.docId, docId)) &&
            (identical(other.dt, dt) ||
                const DeepCollectionEquality().equals(other.dt, dt)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(docId) ^
      const DeepCollectionEquality().hash(dt) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $CompleteRealEstateCopyWith<CompleteRealEstate> get copyWith =>
      _$CompleteRealEstateCopyWithImpl<CompleteRealEstate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult realEstate(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                JobData data),
    @required
        TResult job(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult pet(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return realEstate(docId, dt, serviceId, userId, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (realEstate != null) {
      return realEstate(docId, dt, serviceId, userId, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult realEstate(CompleteRealEstate value),
    @required TResult job(CompleteJob value),
    @required TResult pet(CompleteJob value),
    @required TResult vehicle(CompleteJob value),
    @required TResult product(CompleteJob value),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return realEstate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult realEstate(CompleteRealEstate value),
    TResult job(CompleteJob value),
    TResult pet(CompleteJob value),
    TResult vehicle(CompleteJob value),
    TResult product(CompleteJob value),
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
    return _$_$CompleteRealEstateToJson(this)..['runtimeType'] = 'realEstate';
  }
}

abstract class CompleteRealEstate implements CompleteProductData {
  const factory CompleteRealEstate(
      {@required
      @JsonKey(name: 'docid')
          String docId,
      @required
          String dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          String serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          String userId,
      @required
      @JsonKey(name: 'adata')
          JobData data}) = _$CompleteRealEstate;

  factory CompleteRealEstate.fromJson(Map<String, dynamic> json) =
      _$CompleteRealEstate.fromJson;

  @override
  @JsonKey(name: 'docid')
  String get docId;
  @override
  String get dt;
  @override
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  String get serviceId;
  @override
  @JsonKey(name: 'userid', defaultValue: '')
  String get userId;
  @JsonKey(name: 'adata')
  JobData get data;
  @override
  @JsonKey(ignore: true)
  $CompleteRealEstateCopyWith<CompleteRealEstate> get copyWith;
}

/// @nodoc
abstract class $CompleteJobCopyWith<$Res>
    implements $CompleteProductDataCopyWith<$Res> {
  factory $CompleteJobCopyWith(
          CompleteJob value, $Res Function(CompleteJob) then) =
      _$CompleteJobCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid') String docId,
      String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
      @JsonKey(name: 'userid', defaultValue: '') String userId});
}

/// @nodoc
class _$CompleteJobCopyWithImpl<$Res>
    extends _$CompleteProductDataCopyWithImpl<$Res>
    implements $CompleteJobCopyWith<$Res> {
  _$CompleteJobCopyWithImpl(
      CompleteJob _value, $Res Function(CompleteJob) _then)
      : super(_value, (v) => _then(v as CompleteJob));

  @override
  CompleteJob get _value => super._value as CompleteJob;

  @override
  $Res call({
    Object docId = freezed,
    Object dt = freezed,
    Object serviceId = freezed,
    Object userId = freezed,
  }) {
    return _then(CompleteJob(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteJob implements CompleteJob {
  const _$CompleteJob(
      {@required
      @JsonKey(name: 'docid')
          this.docId,
      @required
          this.dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          this.serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          this.userId})
      : assert(docId != null),
        assert(dt != null),
        assert(serviceId != null),
        assert(userId != null);

  factory _$CompleteJob.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteJobFromJson(json);

  @override
  @JsonKey(name: 'docid')
  final String docId;
  @override
  final String dt;
  @override
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  final String serviceId;
  @override
  @JsonKey(name: 'userid', defaultValue: '')
  final String userId;

  @override
  String toString() {
    return 'CompleteProductData.job(docId: $docId, dt: $dt, serviceId: $serviceId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteJob &&
            (identical(other.docId, docId) ||
                const DeepCollectionEquality().equals(other.docId, docId)) &&
            (identical(other.dt, dt) ||
                const DeepCollectionEquality().equals(other.dt, dt)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(docId) ^
      const DeepCollectionEquality().hash(dt) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $CompleteJobCopyWith<CompleteJob> get copyWith =>
      _$CompleteJobCopyWithImpl<CompleteJob>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult realEstate(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                JobData data),
    @required
        TResult job(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult pet(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return job(docId, dt, serviceId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (job != null) {
      return job(docId, dt, serviceId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult realEstate(CompleteRealEstate value),
    @required TResult job(CompleteJob value),
    @required TResult pet(CompleteJob value),
    @required TResult vehicle(CompleteJob value),
    @required TResult product(CompleteJob value),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return job(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult realEstate(CompleteRealEstate value),
    TResult job(CompleteJob value),
    TResult pet(CompleteJob value),
    TResult vehicle(CompleteJob value),
    TResult product(CompleteJob value),
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
    return _$_$CompleteJobToJson(this)..['runtimeType'] = 'job';
  }
}

abstract class CompleteJob implements CompleteProductData {
  const factory CompleteJob(
      {@required
      @JsonKey(name: 'docid')
          String docId,
      @required
          String dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          String serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          String userId}) = _$CompleteJob;

  factory CompleteJob.fromJson(Map<String, dynamic> json) =
      _$CompleteJob.fromJson;

  @override
  @JsonKey(name: 'docid')
  String get docId;
  @override
  String get dt;
  @override
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  String get serviceId;
  @override
  @JsonKey(name: 'userid', defaultValue: '')
  String get userId;
  @override
  @JsonKey(ignore: true)
  $CompleteJobCopyWith<CompleteJob> get copyWith;
}

/// @nodoc
abstract class $CompleteJobCopyWith<$Res>
    implements $CompleteProductDataCopyWith<$Res> {
  factory $CompleteJobCopyWith(
          CompleteJob value, $Res Function(CompleteJob) then) =
      _$CompleteJobCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid') String docId,
      String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
      @JsonKey(name: 'userid', defaultValue: '') String userId});
}

/// @nodoc
class _$CompleteJobCopyWithImpl<$Res>
    extends _$CompleteProductDataCopyWithImpl<$Res>
    implements $CompleteJobCopyWith<$Res> {
  _$CompleteJobCopyWithImpl(
      CompleteJob _value, $Res Function(CompleteJob) _then)
      : super(_value, (v) => _then(v as CompleteJob));

  @override
  CompleteJob get _value => super._value as CompleteJob;

  @override
  $Res call({
    Object docId = freezed,
    Object dt = freezed,
    Object serviceId = freezed,
    Object userId = freezed,
  }) {
    return _then(CompleteJob(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteJob implements CompleteJob {
  const _$CompleteJob(
      {@required
      @JsonKey(name: 'docid')
          this.docId,
      @required
          this.dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          this.serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          this.userId})
      : assert(docId != null),
        assert(dt != null),
        assert(serviceId != null),
        assert(userId != null);

  factory _$CompleteJob.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteJobFromJson(json);

  @override
  @JsonKey(name: 'docid')
  final String docId;
  @override
  final String dt;
  @override
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  final String serviceId;
  @override
  @JsonKey(name: 'userid', defaultValue: '')
  final String userId;

  @override
  String toString() {
    return 'CompleteProductData.pet(docId: $docId, dt: $dt, serviceId: $serviceId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteJob &&
            (identical(other.docId, docId) ||
                const DeepCollectionEquality().equals(other.docId, docId)) &&
            (identical(other.dt, dt) ||
                const DeepCollectionEquality().equals(other.dt, dt)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(docId) ^
      const DeepCollectionEquality().hash(dt) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $CompleteJobCopyWith<CompleteJob> get copyWith =>
      _$CompleteJobCopyWithImpl<CompleteJob>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult realEstate(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                JobData data),
    @required
        TResult job(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult pet(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return pet(docId, dt, serviceId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pet != null) {
      return pet(docId, dt, serviceId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult realEstate(CompleteRealEstate value),
    @required TResult job(CompleteJob value),
    @required TResult pet(CompleteJob value),
    @required TResult vehicle(CompleteJob value),
    @required TResult product(CompleteJob value),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return pet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult realEstate(CompleteRealEstate value),
    TResult job(CompleteJob value),
    TResult pet(CompleteJob value),
    TResult vehicle(CompleteJob value),
    TResult product(CompleteJob value),
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
    return _$_$CompleteJobToJson(this)..['runtimeType'] = 'pet';
  }
}

abstract class CompleteJob implements CompleteProductData {
  const factory CompleteJob(
      {@required
      @JsonKey(name: 'docid')
          String docId,
      @required
          String dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          String serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          String userId}) = _$CompleteJob;

  factory CompleteJob.fromJson(Map<String, dynamic> json) =
      _$CompleteJob.fromJson;

  @override
  @JsonKey(name: 'docid')
  String get docId;
  @override
  String get dt;
  @override
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  String get serviceId;
  @override
  @JsonKey(name: 'userid', defaultValue: '')
  String get userId;
  @override
  @JsonKey(ignore: true)
  $CompleteJobCopyWith<CompleteJob> get copyWith;
}

/// @nodoc
abstract class $CompleteJobCopyWith<$Res>
    implements $CompleteProductDataCopyWith<$Res> {
  factory $CompleteJobCopyWith(
          CompleteJob value, $Res Function(CompleteJob) then) =
      _$CompleteJobCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid') String docId,
      String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
      @JsonKey(name: 'userid', defaultValue: '') String userId});
}

/// @nodoc
class _$CompleteJobCopyWithImpl<$Res>
    extends _$CompleteProductDataCopyWithImpl<$Res>
    implements $CompleteJobCopyWith<$Res> {
  _$CompleteJobCopyWithImpl(
      CompleteJob _value, $Res Function(CompleteJob) _then)
      : super(_value, (v) => _then(v as CompleteJob));

  @override
  CompleteJob get _value => super._value as CompleteJob;

  @override
  $Res call({
    Object docId = freezed,
    Object dt = freezed,
    Object serviceId = freezed,
    Object userId = freezed,
  }) {
    return _then(CompleteJob(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteJob implements CompleteJob {
  const _$CompleteJob(
      {@required
      @JsonKey(name: 'docid')
          this.docId,
      @required
          this.dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          this.serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          this.userId})
      : assert(docId != null),
        assert(dt != null),
        assert(serviceId != null),
        assert(userId != null);

  factory _$CompleteJob.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteJobFromJson(json);

  @override
  @JsonKey(name: 'docid')
  final String docId;
  @override
  final String dt;
  @override
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  final String serviceId;
  @override
  @JsonKey(name: 'userid', defaultValue: '')
  final String userId;

  @override
  String toString() {
    return 'CompleteProductData.vehicle(docId: $docId, dt: $dt, serviceId: $serviceId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteJob &&
            (identical(other.docId, docId) ||
                const DeepCollectionEquality().equals(other.docId, docId)) &&
            (identical(other.dt, dt) ||
                const DeepCollectionEquality().equals(other.dt, dt)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(docId) ^
      const DeepCollectionEquality().hash(dt) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $CompleteJobCopyWith<CompleteJob> get copyWith =>
      _$CompleteJobCopyWithImpl<CompleteJob>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult realEstate(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                JobData data),
    @required
        TResult job(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult pet(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return vehicle(docId, dt, serviceId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (vehicle != null) {
      return vehicle(docId, dt, serviceId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult realEstate(CompleteRealEstate value),
    @required TResult job(CompleteJob value),
    @required TResult pet(CompleteJob value),
    @required TResult vehicle(CompleteJob value),
    @required TResult product(CompleteJob value),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return vehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult realEstate(CompleteRealEstate value),
    TResult job(CompleteJob value),
    TResult pet(CompleteJob value),
    TResult vehicle(CompleteJob value),
    TResult product(CompleteJob value),
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
    return _$_$CompleteJobToJson(this)..['runtimeType'] = 'vehicle';
  }
}

abstract class CompleteJob implements CompleteProductData {
  const factory CompleteJob(
      {@required
      @JsonKey(name: 'docid')
          String docId,
      @required
          String dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          String serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          String userId}) = _$CompleteJob;

  factory CompleteJob.fromJson(Map<String, dynamic> json) =
      _$CompleteJob.fromJson;

  @override
  @JsonKey(name: 'docid')
  String get docId;
  @override
  String get dt;
  @override
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  String get serviceId;
  @override
  @JsonKey(name: 'userid', defaultValue: '')
  String get userId;
  @override
  @JsonKey(ignore: true)
  $CompleteJobCopyWith<CompleteJob> get copyWith;
}

/// @nodoc
abstract class $CompleteJobCopyWith<$Res>
    implements $CompleteProductDataCopyWith<$Res> {
  factory $CompleteJobCopyWith(
          CompleteJob value, $Res Function(CompleteJob) then) =
      _$CompleteJobCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid') String docId,
      String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
      @JsonKey(name: 'userid', defaultValue: '') String userId});
}

/// @nodoc
class _$CompleteJobCopyWithImpl<$Res>
    extends _$CompleteProductDataCopyWithImpl<$Res>
    implements $CompleteJobCopyWith<$Res> {
  _$CompleteJobCopyWithImpl(
      CompleteJob _value, $Res Function(CompleteJob) _then)
      : super(_value, (v) => _then(v as CompleteJob));

  @override
  CompleteJob get _value => super._value as CompleteJob;

  @override
  $Res call({
    Object docId = freezed,
    Object dt = freezed,
    Object serviceId = freezed,
    Object userId = freezed,
  }) {
    return _then(CompleteJob(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteJob implements CompleteJob {
  const _$CompleteJob(
      {@required
      @JsonKey(name: 'docid')
          this.docId,
      @required
          this.dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          this.serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          this.userId})
      : assert(docId != null),
        assert(dt != null),
        assert(serviceId != null),
        assert(userId != null);

  factory _$CompleteJob.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteJobFromJson(json);

  @override
  @JsonKey(name: 'docid')
  final String docId;
  @override
  final String dt;
  @override
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  final String serviceId;
  @override
  @JsonKey(name: 'userid', defaultValue: '')
  final String userId;

  @override
  String toString() {
    return 'CompleteProductData.product(docId: $docId, dt: $dt, serviceId: $serviceId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteJob &&
            (identical(other.docId, docId) ||
                const DeepCollectionEquality().equals(other.docId, docId)) &&
            (identical(other.dt, dt) ||
                const DeepCollectionEquality().equals(other.dt, dt)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(docId) ^
      const DeepCollectionEquality().hash(dt) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $CompleteJobCopyWith<CompleteJob> get copyWith =>
      _$CompleteJobCopyWithImpl<CompleteJob>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult realEstate(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                JobData data),
    @required
        TResult job(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult pet(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return product(docId, dt, serviceId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (product != null) {
      return product(docId, dt, serviceId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult realEstate(CompleteRealEstate value),
    @required TResult job(CompleteJob value),
    @required TResult pet(CompleteJob value),
    @required TResult vehicle(CompleteJob value),
    @required TResult product(CompleteJob value),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult realEstate(CompleteRealEstate value),
    TResult job(CompleteJob value),
    TResult pet(CompleteJob value),
    TResult vehicle(CompleteJob value),
    TResult product(CompleteJob value),
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
    return _$_$CompleteJobToJson(this)..['runtimeType'] = 'product';
  }
}

abstract class CompleteJob implements CompleteProductData {
  const factory CompleteJob(
      {@required
      @JsonKey(name: 'docid')
          String docId,
      @required
          String dt,
      @required
      @JsonKey(name: 'serviceproviderid', defaultValue: '')
          String serviceId,
      @required
      @JsonKey(name: 'userid', defaultValue: '')
          String userId}) = _$CompleteJob;

  factory CompleteJob.fromJson(Map<String, dynamic> json) =
      _$CompleteJob.fromJson;

  @override
  @JsonKey(name: 'docid')
  String get docId;
  @override
  String get dt;
  @override
  @JsonKey(name: 'serviceproviderid', defaultValue: '')
  String get serviceId;
  @override
  @JsonKey(name: 'userid', defaultValue: '')
  String get userId;
  @override
  @JsonKey(ignore: true)
  $CompleteJobCopyWith<CompleteJob> get copyWith;
}

JobData _$JobDataFromJson(Map<String, dynamic> json) {
  return _JobData.fromJson(json);
}

/// @nodoc
class _$JobDataTearOff {
  const _$JobDataTearOff();

// ignore: unused_element
  _JobData call(
      {@required bool arefreshersallowed,
      @required String companylogo,
      @required String companyname,
      @required ContactDetails contactdetails,
      @required String description,
      @required String educationqualification,
      @required bool isparttime,
      @required @JsonKey(defaultValue: 'OWNER') String listingownertype,
      @required int maxsalaryrange,
      @required int minsalaryrange,
      @required int minyearexperience,
      @required String title,
      @required @JsonKey(defaultValue: '') String worktype}) {
    return _JobData(
      arefreshersallowed: arefreshersallowed,
      companylogo: companylogo,
      companyname: companyname,
      contactdetails: contactdetails,
      description: description,
      educationqualification: educationqualification,
      isparttime: isparttime,
      listingownertype: listingownertype,
      maxsalaryrange: maxsalaryrange,
      minsalaryrange: minsalaryrange,
      minyearexperience: minyearexperience,
      title: title,
      worktype: worktype,
    );
  }

// ignore: unused_element
  JobData fromJson(Map<String, Object> json) {
    return JobData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $JobData = _$JobDataTearOff();

/// @nodoc
mixin _$JobData {
  bool get arefreshersallowed;
  String get companylogo;
  String get companyname;
  ContactDetails get contactdetails;
  String get description;
  String get educationqualification;
  bool get isparttime;
  @JsonKey(defaultValue: 'OWNER')
  String get listingownertype;
  int get maxsalaryrange;
  int get minsalaryrange;
  int get minyearexperience;
  String get title;
  @JsonKey(defaultValue: '')
  String get worktype;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $JobDataCopyWith<JobData> get copyWith;
}

/// @nodoc
abstract class $JobDataCopyWith<$Res> {
  factory $JobDataCopyWith(JobData value, $Res Function(JobData) then) =
      _$JobDataCopyWithImpl<$Res>;
  $Res call(
      {bool arefreshersallowed,
      String companylogo,
      String companyname,
      ContactDetails contactdetails,
      String description,
      String educationqualification,
      bool isparttime,
      @JsonKey(defaultValue: 'OWNER') String listingownertype,
      int maxsalaryrange,
      int minsalaryrange,
      int minyearexperience,
      String title,
      @JsonKey(defaultValue: '') String worktype});
}

/// @nodoc
class _$JobDataCopyWithImpl<$Res> implements $JobDataCopyWith<$Res> {
  _$JobDataCopyWithImpl(this._value, this._then);

  final JobData _value;
  // ignore: unused_field
  final $Res Function(JobData) _then;

  @override
  $Res call({
    Object arefreshersallowed = freezed,
    Object companylogo = freezed,
    Object companyname = freezed,
    Object contactdetails = freezed,
    Object description = freezed,
    Object educationqualification = freezed,
    Object isparttime = freezed,
    Object listingownertype = freezed,
    Object maxsalaryrange = freezed,
    Object minsalaryrange = freezed,
    Object minyearexperience = freezed,
    Object title = freezed,
    Object worktype = freezed,
  }) {
    return _then(_value.copyWith(
      arefreshersallowed: arefreshersallowed == freezed
          ? _value.arefreshersallowed
          : arefreshersallowed as bool,
      companylogo:
          companylogo == freezed ? _value.companylogo : companylogo as String,
      companyname:
          companyname == freezed ? _value.companyname : companyname as String,
      contactdetails: contactdetails == freezed
          ? _value.contactdetails
          : contactdetails as ContactDetails,
      description:
          description == freezed ? _value.description : description as String,
      educationqualification: educationqualification == freezed
          ? _value.educationqualification
          : educationqualification as String,
      isparttime:
          isparttime == freezed ? _value.isparttime : isparttime as bool,
      listingownertype: listingownertype == freezed
          ? _value.listingownertype
          : listingownertype as String,
      maxsalaryrange: maxsalaryrange == freezed
          ? _value.maxsalaryrange
          : maxsalaryrange as int,
      minsalaryrange: minsalaryrange == freezed
          ? _value.minsalaryrange
          : minsalaryrange as int,
      minyearexperience: minyearexperience == freezed
          ? _value.minyearexperience
          : minyearexperience as int,
      title: title == freezed ? _value.title : title as String,
      worktype: worktype == freezed ? _value.worktype : worktype as String,
    ));
  }
}

/// @nodoc
abstract class _$JobDataCopyWith<$Res> implements $JobDataCopyWith<$Res> {
  factory _$JobDataCopyWith(_JobData value, $Res Function(_JobData) then) =
      __$JobDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool arefreshersallowed,
      String companylogo,
      String companyname,
      ContactDetails contactdetails,
      String description,
      String educationqualification,
      bool isparttime,
      @JsonKey(defaultValue: 'OWNER') String listingownertype,
      int maxsalaryrange,
      int minsalaryrange,
      int minyearexperience,
      String title,
      @JsonKey(defaultValue: '') String worktype});
}

/// @nodoc
class __$JobDataCopyWithImpl<$Res> extends _$JobDataCopyWithImpl<$Res>
    implements _$JobDataCopyWith<$Res> {
  __$JobDataCopyWithImpl(_JobData _value, $Res Function(_JobData) _then)
      : super(_value, (v) => _then(v as _JobData));

  @override
  _JobData get _value => super._value as _JobData;

  @override
  $Res call({
    Object arefreshersallowed = freezed,
    Object companylogo = freezed,
    Object companyname = freezed,
    Object contactdetails = freezed,
    Object description = freezed,
    Object educationqualification = freezed,
    Object isparttime = freezed,
    Object listingownertype = freezed,
    Object maxsalaryrange = freezed,
    Object minsalaryrange = freezed,
    Object minyearexperience = freezed,
    Object title = freezed,
    Object worktype = freezed,
  }) {
    return _then(_JobData(
      arefreshersallowed: arefreshersallowed == freezed
          ? _value.arefreshersallowed
          : arefreshersallowed as bool,
      companylogo:
          companylogo == freezed ? _value.companylogo : companylogo as String,
      companyname:
          companyname == freezed ? _value.companyname : companyname as String,
      contactdetails: contactdetails == freezed
          ? _value.contactdetails
          : contactdetails as ContactDetails,
      description:
          description == freezed ? _value.description : description as String,
      educationqualification: educationqualification == freezed
          ? _value.educationqualification
          : educationqualification as String,
      isparttime:
          isparttime == freezed ? _value.isparttime : isparttime as bool,
      listingownertype: listingownertype == freezed
          ? _value.listingownertype
          : listingownertype as String,
      maxsalaryrange: maxsalaryrange == freezed
          ? _value.maxsalaryrange
          : maxsalaryrange as int,
      minsalaryrange: minsalaryrange == freezed
          ? _value.minsalaryrange
          : minsalaryrange as int,
      minyearexperience: minyearexperience == freezed
          ? _value.minyearexperience
          : minyearexperience as int,
      title: title == freezed ? _value.title : title as String,
      worktype: worktype == freezed ? _value.worktype : worktype as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_JobData implements _JobData {
  const _$_JobData(
      {@required this.arefreshersallowed,
      @required this.companylogo,
      @required this.companyname,
      @required this.contactdetails,
      @required this.description,
      @required this.educationqualification,
      @required this.isparttime,
      @required @JsonKey(defaultValue: 'OWNER') this.listingownertype,
      @required this.maxsalaryrange,
      @required this.minsalaryrange,
      @required this.minyearexperience,
      @required this.title,
      @required @JsonKey(defaultValue: '') this.worktype})
      : assert(arefreshersallowed != null),
        assert(companylogo != null),
        assert(companyname != null),
        assert(contactdetails != null),
        assert(description != null),
        assert(educationqualification != null),
        assert(isparttime != null),
        assert(listingownertype != null),
        assert(maxsalaryrange != null),
        assert(minsalaryrange != null),
        assert(minyearexperience != null),
        assert(title != null),
        assert(worktype != null);

  factory _$_JobData.fromJson(Map<String, dynamic> json) =>
      _$_$_JobDataFromJson(json);

  @override
  final bool arefreshersallowed;
  @override
  final String companylogo;
  @override
  final String companyname;
  @override
  final ContactDetails contactdetails;
  @override
  final String description;
  @override
  final String educationqualification;
  @override
  final bool isparttime;
  @override
  @JsonKey(defaultValue: 'OWNER')
  final String listingownertype;
  @override
  final int maxsalaryrange;
  @override
  final int minsalaryrange;
  @override
  final int minyearexperience;
  @override
  final String title;
  @override
  @JsonKey(defaultValue: '')
  final String worktype;

  @override
  String toString() {
    return 'JobData(arefreshersallowed: $arefreshersallowed, companylogo: $companylogo, companyname: $companyname, contactdetails: $contactdetails, description: $description, educationqualification: $educationqualification, isparttime: $isparttime, listingownertype: $listingownertype, maxsalaryrange: $maxsalaryrange, minsalaryrange: $minsalaryrange, minyearexperience: $minyearexperience, title: $title, worktype: $worktype)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobData &&
            (identical(other.arefreshersallowed, arefreshersallowed) ||
                const DeepCollectionEquality()
                    .equals(other.arefreshersallowed, arefreshersallowed)) &&
            (identical(other.companylogo, companylogo) ||
                const DeepCollectionEquality()
                    .equals(other.companylogo, companylogo)) &&
            (identical(other.companyname, companyname) ||
                const DeepCollectionEquality()
                    .equals(other.companyname, companyname)) &&
            (identical(other.contactdetails, contactdetails) ||
                const DeepCollectionEquality()
                    .equals(other.contactdetails, contactdetails)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.educationqualification, educationqualification) ||
                const DeepCollectionEquality().equals(
                    other.educationqualification, educationqualification)) &&
            (identical(other.isparttime, isparttime) ||
                const DeepCollectionEquality()
                    .equals(other.isparttime, isparttime)) &&
            (identical(other.listingownertype, listingownertype) ||
                const DeepCollectionEquality()
                    .equals(other.listingownertype, listingownertype)) &&
            (identical(other.maxsalaryrange, maxsalaryrange) ||
                const DeepCollectionEquality()
                    .equals(other.maxsalaryrange, maxsalaryrange)) &&
            (identical(other.minsalaryrange, minsalaryrange) ||
                const DeepCollectionEquality()
                    .equals(other.minsalaryrange, minsalaryrange)) &&
            (identical(other.minyearexperience, minyearexperience) ||
                const DeepCollectionEquality()
                    .equals(other.minyearexperience, minyearexperience)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.worktype, worktype) ||
                const DeepCollectionEquality()
                    .equals(other.worktype, worktype)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(arefreshersallowed) ^
      const DeepCollectionEquality().hash(companylogo) ^
      const DeepCollectionEquality().hash(companyname) ^
      const DeepCollectionEquality().hash(contactdetails) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(educationqualification) ^
      const DeepCollectionEquality().hash(isparttime) ^
      const DeepCollectionEquality().hash(listingownertype) ^
      const DeepCollectionEquality().hash(maxsalaryrange) ^
      const DeepCollectionEquality().hash(minsalaryrange) ^
      const DeepCollectionEquality().hash(minyearexperience) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(worktype);

  @JsonKey(ignore: true)
  @override
  _$JobDataCopyWith<_JobData> get copyWith =>
      __$JobDataCopyWithImpl<_JobData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JobDataToJson(this);
  }
}

abstract class _JobData implements JobData {
  const factory _JobData(
      {@required bool arefreshersallowed,
      @required String companylogo,
      @required String companyname,
      @required ContactDetails contactdetails,
      @required String description,
      @required String educationqualification,
      @required bool isparttime,
      @required @JsonKey(defaultValue: 'OWNER') String listingownertype,
      @required int maxsalaryrange,
      @required int minsalaryrange,
      @required int minyearexperience,
      @required String title,
      @required @JsonKey(defaultValue: '') String worktype}) = _$_JobData;

  factory _JobData.fromJson(Map<String, dynamic> json) = _$_JobData.fromJson;

  @override
  bool get arefreshersallowed;
  @override
  String get companylogo;
  @override
  String get companyname;
  @override
  ContactDetails get contactdetails;
  @override
  String get description;
  @override
  String get educationqualification;
  @override
  bool get isparttime;
  @override
  @JsonKey(defaultValue: 'OWNER')
  String get listingownertype;
  @override
  int get maxsalaryrange;
  @override
  int get minsalaryrange;
  @override
  int get minyearexperience;
  @override
  String get title;
  @override
  @JsonKey(defaultValue: '')
  String get worktype;
  @override
  @JsonKey(ignore: true)
  _$JobDataCopyWith<_JobData> get copyWith;
}
