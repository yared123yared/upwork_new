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
      return CompletePet.fromJson(json);
    case 'vehicle':
      return CompleteVehicle.fromJson(json);
    case 'product':
      return CompleteProduct.fromJson(json);

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
          String userId}) {
    return CompleteRealEstate(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
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
          String userId,
      @required
      @JsonKey(name: 'adata')
          JobData data}) {
    return CompleteJob(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
      data: data,
    );
  }

// ignore: unused_element
  CompletePet pet(
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
    return CompletePet(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
    );
  }

// ignore: unused_element
  CompleteVehicle vehicle(
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
    return CompleteVehicle(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
    );
  }

// ignore: unused_element
  CompleteProduct product(
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
    return CompleteProduct(
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
                String userId),
    @required
        TResult job(
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
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
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
    @required TResult pet(CompletePet value),
    @required TResult vehicle(CompleteVehicle value),
    @required TResult product(CompleteProduct value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult realEstate(CompleteRealEstate value),
    TResult job(CompleteJob value),
    TResult pet(CompletePet value),
    TResult vehicle(CompleteVehicle value),
    TResult product(CompleteProduct value),
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
      @JsonKey(name: 'userid', defaultValue: '') String userId});
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
  }) {
    return _then(CompleteRealEstate(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
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
          this.userId})
      : assert(docId != null),
        assert(dt != null),
        assert(serviceId != null),
        assert(userId != null);

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
  String toString() {
    return 'CompleteProductData.realEstate(docId: $docId, dt: $dt, serviceId: $serviceId, userId: $userId)';
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
                String userId),
    @required
        TResult job(
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
    return realEstate(docId, dt, serviceId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
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
      return realEstate(docId, dt, serviceId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult realEstate(CompleteRealEstate value),
    @required TResult job(CompleteJob value),
    @required TResult pet(CompletePet value),
    @required TResult vehicle(CompleteVehicle value),
    @required TResult product(CompleteProduct value),
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
    TResult pet(CompletePet value),
    TResult vehicle(CompleteVehicle value),
    TResult product(CompleteProduct value),
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
          String userId}) = _$CompleteRealEstate;

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
      @JsonKey(name: 'userid', defaultValue: '') String userId,
      @JsonKey(name: 'adata') JobData data});

  $JobDataCopyWith<$Res> get data;
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
    Object data = freezed,
  }) {
    return _then(CompleteJob(
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
          this.userId,
      @required
      @JsonKey(name: 'adata')
          this.data})
      : assert(docId != null),
        assert(dt != null),
        assert(serviceId != null),
        assert(userId != null),
        assert(data != null);

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
  @JsonKey(name: 'adata')
  final JobData data;

  @override
  String toString() {
    return 'CompleteProductData.job(docId: $docId, dt: $dt, serviceId: $serviceId, userId: $userId, data: $data)';
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
                String userId),
    @required
        TResult job(
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
    return job(docId, dt, serviceId, userId, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
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
      return job(docId, dt, serviceId, userId, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult realEstate(CompleteRealEstate value),
    @required TResult job(CompleteJob value),
    @required TResult pet(CompletePet value),
    @required TResult vehicle(CompleteVehicle value),
    @required TResult product(CompleteProduct value),
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
    TResult pet(CompletePet value),
    TResult vehicle(CompleteVehicle value),
    TResult product(CompleteProduct value),
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
          String userId,
      @required
      @JsonKey(name: 'adata')
          JobData data}) = _$CompleteJob;

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
  @JsonKey(name: 'adata')
  JobData get data;
  @override
  @JsonKey(ignore: true)
  $CompleteJobCopyWith<CompleteJob> get copyWith;
}

/// @nodoc
abstract class $CompletePetCopyWith<$Res>
    implements $CompleteProductDataCopyWith<$Res> {
  factory $CompletePetCopyWith(
          CompletePet value, $Res Function(CompletePet) then) =
      _$CompletePetCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid') String docId,
      String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
      @JsonKey(name: 'userid', defaultValue: '') String userId});
}

/// @nodoc
class _$CompletePetCopyWithImpl<$Res>
    extends _$CompleteProductDataCopyWithImpl<$Res>
    implements $CompletePetCopyWith<$Res> {
  _$CompletePetCopyWithImpl(
      CompletePet _value, $Res Function(CompletePet) _then)
      : super(_value, (v) => _then(v as CompletePet));

  @override
  CompletePet get _value => super._value as CompletePet;

  @override
  $Res call({
    Object docId = freezed,
    Object dt = freezed,
    Object serviceId = freezed,
    Object userId = freezed,
  }) {
    return _then(CompletePet(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompletePet implements CompletePet {
  const _$CompletePet(
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

  factory _$CompletePet.fromJson(Map<String, dynamic> json) =>
      _$_$CompletePetFromJson(json);

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
        (other is CompletePet &&
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
  $CompletePetCopyWith<CompletePet> get copyWith =>
      _$CompletePetCopyWithImpl<CompletePet>(this, _$identity);

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
                String userId),
    @required
        TResult job(
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
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
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
    @required TResult pet(CompletePet value),
    @required TResult vehicle(CompleteVehicle value),
    @required TResult product(CompleteProduct value),
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
    TResult pet(CompletePet value),
    TResult vehicle(CompleteVehicle value),
    TResult product(CompleteProduct value),
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
    return _$_$CompletePetToJson(this)..['runtimeType'] = 'pet';
  }
}

abstract class CompletePet implements CompleteProductData {
  const factory CompletePet(
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
          String userId}) = _$CompletePet;

  factory CompletePet.fromJson(Map<String, dynamic> json) =
      _$CompletePet.fromJson;

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
  $CompletePetCopyWith<CompletePet> get copyWith;
}

/// @nodoc
abstract class $CompleteVehicleCopyWith<$Res>
    implements $CompleteProductDataCopyWith<$Res> {
  factory $CompleteVehicleCopyWith(
          CompleteVehicle value, $Res Function(CompleteVehicle) then) =
      _$CompleteVehicleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid') String docId,
      String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
      @JsonKey(name: 'userid', defaultValue: '') String userId});
}

/// @nodoc
class _$CompleteVehicleCopyWithImpl<$Res>
    extends _$CompleteProductDataCopyWithImpl<$Res>
    implements $CompleteVehicleCopyWith<$Res> {
  _$CompleteVehicleCopyWithImpl(
      CompleteVehicle _value, $Res Function(CompleteVehicle) _then)
      : super(_value, (v) => _then(v as CompleteVehicle));

  @override
  CompleteVehicle get _value => super._value as CompleteVehicle;

  @override
  $Res call({
    Object docId = freezed,
    Object dt = freezed,
    Object serviceId = freezed,
    Object userId = freezed,
  }) {
    return _then(CompleteVehicle(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteVehicle implements CompleteVehicle {
  const _$CompleteVehicle(
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

  factory _$CompleteVehicle.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteVehicleFromJson(json);

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
        (other is CompleteVehicle &&
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
  $CompleteVehicleCopyWith<CompleteVehicle> get copyWith =>
      _$CompleteVehicleCopyWithImpl<CompleteVehicle>(this, _$identity);

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
                String userId),
    @required
        TResult job(
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
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
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
    @required TResult pet(CompletePet value),
    @required TResult vehicle(CompleteVehicle value),
    @required TResult product(CompleteProduct value),
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
    TResult pet(CompletePet value),
    TResult vehicle(CompleteVehicle value),
    TResult product(CompleteProduct value),
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
    return _$_$CompleteVehicleToJson(this)..['runtimeType'] = 'vehicle';
  }
}

abstract class CompleteVehicle implements CompleteProductData {
  const factory CompleteVehicle(
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
          String userId}) = _$CompleteVehicle;

  factory CompleteVehicle.fromJson(Map<String, dynamic> json) =
      _$CompleteVehicle.fromJson;

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
  $CompleteVehicleCopyWith<CompleteVehicle> get copyWith;
}

/// @nodoc
abstract class $CompleteProductCopyWith<$Res>
    implements $CompleteProductDataCopyWith<$Res> {
  factory $CompleteProductCopyWith(
          CompleteProduct value, $Res Function(CompleteProduct) then) =
      _$CompleteProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid') String docId,
      String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
      @JsonKey(name: 'userid', defaultValue: '') String userId});
}

/// @nodoc
class _$CompleteProductCopyWithImpl<$Res>
    extends _$CompleteProductDataCopyWithImpl<$Res>
    implements $CompleteProductCopyWith<$Res> {
  _$CompleteProductCopyWithImpl(
      CompleteProduct _value, $Res Function(CompleteProduct) _then)
      : super(_value, (v) => _then(v as CompleteProduct));

  @override
  CompleteProduct get _value => super._value as CompleteProduct;

  @override
  $Res call({
    Object docId = freezed,
    Object dt = freezed,
    Object serviceId = freezed,
    Object userId = freezed,
  }) {
    return _then(CompleteProduct(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteProduct implements CompleteProduct {
  const _$CompleteProduct(
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

  factory _$CompleteProduct.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteProductFromJson(json);

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
        (other is CompleteProduct &&
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
  $CompleteProductCopyWith<CompleteProduct> get copyWith =>
      _$CompleteProductCopyWithImpl<CompleteProduct>(this, _$identity);

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
                String userId),
    @required
        TResult job(
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
        @JsonKey(name: 'userid', defaultValue: '') String userId),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobData data),
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
    @required TResult pet(CompletePet value),
    @required TResult vehicle(CompleteVehicle value),
    @required TResult product(CompleteProduct value),
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
    TResult pet(CompletePet value),
    TResult vehicle(CompleteVehicle value),
    TResult product(CompleteProduct value),
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
    return _$_$CompleteProductToJson(this)..['runtimeType'] = 'product';
  }
}

abstract class CompleteProduct implements CompleteProductData {
  const factory CompleteProduct(
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
          String userId}) = _$CompleteProduct;

  factory CompleteProduct.fromJson(Map<String, dynamic> json) =
      _$CompleteProduct.fromJson;

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
  $CompleteProductCopyWith<CompleteProduct> get copyWith;
}

CompleteProductDataList _$CompleteProductDataListFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'pet':
      return CompletePetList.fromJson(json);
    case 'vehicle':
      return CompleteVehicleList.fromJson(json);
    case 'realEstate':
      return CompleteRealEstateList.fromJson(json);
    case 'job':
      return CompleteJobList.fromJson(json);
    case 'product':
      return LimitedProductList.fromJson(json);
    case 'empty':
      return CompleteProductDataEmptyList.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CompleteProductDataListTearOff {
  const _$CompleteProductDataListTearOff();

// ignore: unused_element
  CompletePetList pet({@required List<CompletePet> pets}) {
    return CompletePetList(
      pets: pets,
    );
  }

// ignore: unused_element
  CompleteVehicleList vehicle({@required List<CompleteVehicle> vehicles}) {
    return CompleteVehicleList(
      vehicles: vehicles,
    );
  }

// ignore: unused_element
  CompleteRealEstateList realEstate(
      {@required List<CompleteRealEstate> properties}) {
    return CompleteRealEstateList(
      properties: properties,
    );
  }

// ignore: unused_element
  CompleteJobList job({@required List<CompleteJob> jobs}) {
    return CompleteJobList(
      jobs: jobs,
    );
  }

// ignore: unused_element
  LimitedProductList product({@required List<CompleteProduct> products}) {
    return LimitedProductList(
      products: products,
    );
  }

// ignore: unused_element
  CompleteProductDataEmptyList empty() {
    return const CompleteProductDataEmptyList();
  }

// ignore: unused_element
  CompleteProductDataList fromJson(Map<String, Object> json) {
    return CompleteProductDataList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CompleteProductDataList = _$CompleteProductDataListTearOff();

/// @nodoc
mixin _$CompleteProductDataList {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<CompletePet> pets),
    @required TResult vehicle(List<CompleteVehicle> vehicles),
    @required TResult realEstate(List<CompleteRealEstate> properties),
    @required TResult job(List<CompleteJob> jobs),
    @required TResult product(List<CompleteProduct> products),
    @required TResult empty(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(List<CompletePet> pets),
    TResult vehicle(List<CompleteVehicle> vehicles),
    TResult realEstate(List<CompleteRealEstate> properties),
    TResult job(List<CompleteJob> jobs),
    TResult product(List<CompleteProduct> products),
    TResult empty(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(CompletePetList value),
    @required TResult vehicle(CompleteVehicleList value),
    @required TResult realEstate(CompleteRealEstateList value),
    @required TResult job(CompleteJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(CompleteProductDataEmptyList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(CompletePetList value),
    TResult vehicle(CompleteVehicleList value),
    TResult realEstate(CompleteRealEstateList value),
    TResult job(CompleteJobList value),
    TResult product(LimitedProductList value),
    TResult empty(CompleteProductDataEmptyList value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $CompleteProductDataListCopyWith<$Res> {
  factory $CompleteProductDataListCopyWith(CompleteProductDataList value,
          $Res Function(CompleteProductDataList) then) =
      _$CompleteProductDataListCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompleteProductDataListCopyWithImpl<$Res>
    implements $CompleteProductDataListCopyWith<$Res> {
  _$CompleteProductDataListCopyWithImpl(this._value, this._then);

  final CompleteProductDataList _value;
  // ignore: unused_field
  final $Res Function(CompleteProductDataList) _then;
}

/// @nodoc
abstract class $CompletePetListCopyWith<$Res> {
  factory $CompletePetListCopyWith(
          CompletePetList value, $Res Function(CompletePetList) then) =
      _$CompletePetListCopyWithImpl<$Res>;
  $Res call({List<CompletePet> pets});
}

/// @nodoc
class _$CompletePetListCopyWithImpl<$Res>
    extends _$CompleteProductDataListCopyWithImpl<$Res>
    implements $CompletePetListCopyWith<$Res> {
  _$CompletePetListCopyWithImpl(
      CompletePetList _value, $Res Function(CompletePetList) _then)
      : super(_value, (v) => _then(v as CompletePetList));

  @override
  CompletePetList get _value => super._value as CompletePetList;

  @override
  $Res call({
    Object pets = freezed,
  }) {
    return _then(CompletePetList(
      pets: pets == freezed ? _value.pets : pets as List<CompletePet>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompletePetList implements CompletePetList {
  const _$CompletePetList({@required this.pets}) : assert(pets != null);

  factory _$CompletePetList.fromJson(Map<String, dynamic> json) =>
      _$_$CompletePetListFromJson(json);

  @override
  final List<CompletePet> pets;

  @override
  String toString() {
    return 'CompleteProductDataList.pet(pets: $pets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompletePetList &&
            (identical(other.pets, pets) ||
                const DeepCollectionEquality().equals(other.pets, pets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pets);

  @JsonKey(ignore: true)
  @override
  $CompletePetListCopyWith<CompletePetList> get copyWith =>
      _$CompletePetListCopyWithImpl<CompletePetList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<CompletePet> pets),
    @required TResult vehicle(List<CompleteVehicle> vehicles),
    @required TResult realEstate(List<CompleteRealEstate> properties),
    @required TResult job(List<CompleteJob> jobs),
    @required TResult product(List<CompleteProduct> products),
    @required TResult empty(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return pet(pets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(List<CompletePet> pets),
    TResult vehicle(List<CompleteVehicle> vehicles),
    TResult realEstate(List<CompleteRealEstate> properties),
    TResult job(List<CompleteJob> jobs),
    TResult product(List<CompleteProduct> products),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pet != null) {
      return pet(pets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(CompletePetList value),
    @required TResult vehicle(CompleteVehicleList value),
    @required TResult realEstate(CompleteRealEstateList value),
    @required TResult job(CompleteJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(CompleteProductDataEmptyList value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return pet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(CompletePetList value),
    TResult vehicle(CompleteVehicleList value),
    TResult realEstate(CompleteRealEstateList value),
    TResult job(CompleteJobList value),
    TResult product(LimitedProductList value),
    TResult empty(CompleteProductDataEmptyList value),
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
    return _$_$CompletePetListToJson(this)..['runtimeType'] = 'pet';
  }
}

abstract class CompletePetList implements CompleteProductDataList {
  const factory CompletePetList({@required List<CompletePet> pets}) =
      _$CompletePetList;

  factory CompletePetList.fromJson(Map<String, dynamic> json) =
      _$CompletePetList.fromJson;

  List<CompletePet> get pets;
  @JsonKey(ignore: true)
  $CompletePetListCopyWith<CompletePetList> get copyWith;
}

/// @nodoc
abstract class $CompleteVehicleListCopyWith<$Res> {
  factory $CompleteVehicleListCopyWith(
          CompleteVehicleList value, $Res Function(CompleteVehicleList) then) =
      _$CompleteVehicleListCopyWithImpl<$Res>;
  $Res call({List<CompleteVehicle> vehicles});
}

/// @nodoc
class _$CompleteVehicleListCopyWithImpl<$Res>
    extends _$CompleteProductDataListCopyWithImpl<$Res>
    implements $CompleteVehicleListCopyWith<$Res> {
  _$CompleteVehicleListCopyWithImpl(
      CompleteVehicleList _value, $Res Function(CompleteVehicleList) _then)
      : super(_value, (v) => _then(v as CompleteVehicleList));

  @override
  CompleteVehicleList get _value => super._value as CompleteVehicleList;

  @override
  $Res call({
    Object vehicles = freezed,
  }) {
    return _then(CompleteVehicleList(
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles as List<CompleteVehicle>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteVehicleList implements CompleteVehicleList {
  const _$CompleteVehicleList({@required this.vehicles})
      : assert(vehicles != null);

  factory _$CompleteVehicleList.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteVehicleListFromJson(json);

  @override
  final List<CompleteVehicle> vehicles;

  @override
  String toString() {
    return 'CompleteProductDataList.vehicle(vehicles: $vehicles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteVehicleList &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vehicles);

  @JsonKey(ignore: true)
  @override
  $CompleteVehicleListCopyWith<CompleteVehicleList> get copyWith =>
      _$CompleteVehicleListCopyWithImpl<CompleteVehicleList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<CompletePet> pets),
    @required TResult vehicle(List<CompleteVehicle> vehicles),
    @required TResult realEstate(List<CompleteRealEstate> properties),
    @required TResult job(List<CompleteJob> jobs),
    @required TResult product(List<CompleteProduct> products),
    @required TResult empty(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return vehicle(vehicles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(List<CompletePet> pets),
    TResult vehicle(List<CompleteVehicle> vehicles),
    TResult realEstate(List<CompleteRealEstate> properties),
    TResult job(List<CompleteJob> jobs),
    TResult product(List<CompleteProduct> products),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (vehicle != null) {
      return vehicle(vehicles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(CompletePetList value),
    @required TResult vehicle(CompleteVehicleList value),
    @required TResult realEstate(CompleteRealEstateList value),
    @required TResult job(CompleteJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(CompleteProductDataEmptyList value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return vehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(CompletePetList value),
    TResult vehicle(CompleteVehicleList value),
    TResult realEstate(CompleteRealEstateList value),
    TResult job(CompleteJobList value),
    TResult product(LimitedProductList value),
    TResult empty(CompleteProductDataEmptyList value),
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
    return _$_$CompleteVehicleListToJson(this)..['runtimeType'] = 'vehicle';
  }
}

abstract class CompleteVehicleList implements CompleteProductDataList {
  const factory CompleteVehicleList(
      {@required List<CompleteVehicle> vehicles}) = _$CompleteVehicleList;

  factory CompleteVehicleList.fromJson(Map<String, dynamic> json) =
      _$CompleteVehicleList.fromJson;

  List<CompleteVehicle> get vehicles;
  @JsonKey(ignore: true)
  $CompleteVehicleListCopyWith<CompleteVehicleList> get copyWith;
}

/// @nodoc
abstract class $CompleteRealEstateListCopyWith<$Res> {
  factory $CompleteRealEstateListCopyWith(CompleteRealEstateList value,
          $Res Function(CompleteRealEstateList) then) =
      _$CompleteRealEstateListCopyWithImpl<$Res>;
  $Res call({List<CompleteRealEstate> properties});
}

/// @nodoc
class _$CompleteRealEstateListCopyWithImpl<$Res>
    extends _$CompleteProductDataListCopyWithImpl<$Res>
    implements $CompleteRealEstateListCopyWith<$Res> {
  _$CompleteRealEstateListCopyWithImpl(CompleteRealEstateList _value,
      $Res Function(CompleteRealEstateList) _then)
      : super(_value, (v) => _then(v as CompleteRealEstateList));

  @override
  CompleteRealEstateList get _value => super._value as CompleteRealEstateList;

  @override
  $Res call({
    Object properties = freezed,
  }) {
    return _then(CompleteRealEstateList(
      properties: properties == freezed
          ? _value.properties
          : properties as List<CompleteRealEstate>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteRealEstateList implements CompleteRealEstateList {
  const _$CompleteRealEstateList({@required this.properties})
      : assert(properties != null);

  factory _$CompleteRealEstateList.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteRealEstateListFromJson(json);

  @override
  final List<CompleteRealEstate> properties;

  @override
  String toString() {
    return 'CompleteProductDataList.realEstate(properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteRealEstateList &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(properties);

  @JsonKey(ignore: true)
  @override
  $CompleteRealEstateListCopyWith<CompleteRealEstateList> get copyWith =>
      _$CompleteRealEstateListCopyWithImpl<CompleteRealEstateList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<CompletePet> pets),
    @required TResult vehicle(List<CompleteVehicle> vehicles),
    @required TResult realEstate(List<CompleteRealEstate> properties),
    @required TResult job(List<CompleteJob> jobs),
    @required TResult product(List<CompleteProduct> products),
    @required TResult empty(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return realEstate(properties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(List<CompletePet> pets),
    TResult vehicle(List<CompleteVehicle> vehicles),
    TResult realEstate(List<CompleteRealEstate> properties),
    TResult job(List<CompleteJob> jobs),
    TResult product(List<CompleteProduct> products),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (realEstate != null) {
      return realEstate(properties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(CompletePetList value),
    @required TResult vehicle(CompleteVehicleList value),
    @required TResult realEstate(CompleteRealEstateList value),
    @required TResult job(CompleteJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(CompleteProductDataEmptyList value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return realEstate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(CompletePetList value),
    TResult vehicle(CompleteVehicleList value),
    TResult realEstate(CompleteRealEstateList value),
    TResult job(CompleteJobList value),
    TResult product(LimitedProductList value),
    TResult empty(CompleteProductDataEmptyList value),
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
    return _$_$CompleteRealEstateListToJson(this)
      ..['runtimeType'] = 'realEstate';
  }
}

abstract class CompleteRealEstateList implements CompleteProductDataList {
  const factory CompleteRealEstateList(
          {@required List<CompleteRealEstate> properties}) =
      _$CompleteRealEstateList;

  factory CompleteRealEstateList.fromJson(Map<String, dynamic> json) =
      _$CompleteRealEstateList.fromJson;

  List<CompleteRealEstate> get properties;
  @JsonKey(ignore: true)
  $CompleteRealEstateListCopyWith<CompleteRealEstateList> get copyWith;
}

/// @nodoc
abstract class $CompleteJobListCopyWith<$Res> {
  factory $CompleteJobListCopyWith(
          CompleteJobList value, $Res Function(CompleteJobList) then) =
      _$CompleteJobListCopyWithImpl<$Res>;
  $Res call({List<CompleteJob> jobs});
}

/// @nodoc
class _$CompleteJobListCopyWithImpl<$Res>
    extends _$CompleteProductDataListCopyWithImpl<$Res>
    implements $CompleteJobListCopyWith<$Res> {
  _$CompleteJobListCopyWithImpl(
      CompleteJobList _value, $Res Function(CompleteJobList) _then)
      : super(_value, (v) => _then(v as CompleteJobList));

  @override
  CompleteJobList get _value => super._value as CompleteJobList;

  @override
  $Res call({
    Object jobs = freezed,
  }) {
    return _then(CompleteJobList(
      jobs: jobs == freezed ? _value.jobs : jobs as List<CompleteJob>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteJobList implements CompleteJobList {
  const _$CompleteJobList({@required this.jobs}) : assert(jobs != null);

  factory _$CompleteJobList.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteJobListFromJson(json);

  @override
  final List<CompleteJob> jobs;

  @override
  String toString() {
    return 'CompleteProductDataList.job(jobs: $jobs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteJobList &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(jobs);

  @JsonKey(ignore: true)
  @override
  $CompleteJobListCopyWith<CompleteJobList> get copyWith =>
      _$CompleteJobListCopyWithImpl<CompleteJobList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<CompletePet> pets),
    @required TResult vehicle(List<CompleteVehicle> vehicles),
    @required TResult realEstate(List<CompleteRealEstate> properties),
    @required TResult job(List<CompleteJob> jobs),
    @required TResult product(List<CompleteProduct> products),
    @required TResult empty(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return job(jobs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(List<CompletePet> pets),
    TResult vehicle(List<CompleteVehicle> vehicles),
    TResult realEstate(List<CompleteRealEstate> properties),
    TResult job(List<CompleteJob> jobs),
    TResult product(List<CompleteProduct> products),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (job != null) {
      return job(jobs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(CompletePetList value),
    @required TResult vehicle(CompleteVehicleList value),
    @required TResult realEstate(CompleteRealEstateList value),
    @required TResult job(CompleteJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(CompleteProductDataEmptyList value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return job(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(CompletePetList value),
    TResult vehicle(CompleteVehicleList value),
    TResult realEstate(CompleteRealEstateList value),
    TResult job(CompleteJobList value),
    TResult product(LimitedProductList value),
    TResult empty(CompleteProductDataEmptyList value),
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
    return _$_$CompleteJobListToJson(this)..['runtimeType'] = 'job';
  }
}

abstract class CompleteJobList implements CompleteProductDataList {
  const factory CompleteJobList({@required List<CompleteJob> jobs}) =
      _$CompleteJobList;

  factory CompleteJobList.fromJson(Map<String, dynamic> json) =
      _$CompleteJobList.fromJson;

  List<CompleteJob> get jobs;
  @JsonKey(ignore: true)
  $CompleteJobListCopyWith<CompleteJobList> get copyWith;
}

/// @nodoc
abstract class $LimitedProductListCopyWith<$Res> {
  factory $LimitedProductListCopyWith(
          LimitedProductList value, $Res Function(LimitedProductList) then) =
      _$LimitedProductListCopyWithImpl<$Res>;
  $Res call({List<CompleteProduct> products});
}

/// @nodoc
class _$LimitedProductListCopyWithImpl<$Res>
    extends _$CompleteProductDataListCopyWithImpl<$Res>
    implements $LimitedProductListCopyWith<$Res> {
  _$LimitedProductListCopyWithImpl(
      LimitedProductList _value, $Res Function(LimitedProductList) _then)
      : super(_value, (v) => _then(v as LimitedProductList));

  @override
  LimitedProductList get _value => super._value as LimitedProductList;

  @override
  $Res call({
    Object products = freezed,
  }) {
    return _then(LimitedProductList(
      products: products == freezed
          ? _value.products
          : products as List<CompleteProduct>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedProductList implements LimitedProductList {
  const _$LimitedProductList({@required this.products})
      : assert(products != null);

  factory _$LimitedProductList.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedProductListFromJson(json);

  @override
  final List<CompleteProduct> products;

  @override
  String toString() {
    return 'CompleteProductDataList.product(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedProductList &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  $LimitedProductListCopyWith<LimitedProductList> get copyWith =>
      _$LimitedProductListCopyWithImpl<LimitedProductList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<CompletePet> pets),
    @required TResult vehicle(List<CompleteVehicle> vehicles),
    @required TResult realEstate(List<CompleteRealEstate> properties),
    @required TResult job(List<CompleteJob> jobs),
    @required TResult product(List<CompleteProduct> products),
    @required TResult empty(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return product(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(List<CompletePet> pets),
    TResult vehicle(List<CompleteVehicle> vehicles),
    TResult realEstate(List<CompleteRealEstate> properties),
    TResult job(List<CompleteJob> jobs),
    TResult product(List<CompleteProduct> products),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (product != null) {
      return product(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(CompletePetList value),
    @required TResult vehicle(CompleteVehicleList value),
    @required TResult realEstate(CompleteRealEstateList value),
    @required TResult job(CompleteJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(CompleteProductDataEmptyList value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(CompletePetList value),
    TResult vehicle(CompleteVehicleList value),
    TResult realEstate(CompleteRealEstateList value),
    TResult job(CompleteJobList value),
    TResult product(LimitedProductList value),
    TResult empty(CompleteProductDataEmptyList value),
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
    return _$_$LimitedProductListToJson(this)..['runtimeType'] = 'product';
  }
}

abstract class LimitedProductList implements CompleteProductDataList {
  const factory LimitedProductList({@required List<CompleteProduct> products}) =
      _$LimitedProductList;

  factory LimitedProductList.fromJson(Map<String, dynamic> json) =
      _$LimitedProductList.fromJson;

  List<CompleteProduct> get products;
  @JsonKey(ignore: true)
  $LimitedProductListCopyWith<LimitedProductList> get copyWith;
}

/// @nodoc
abstract class $CompleteProductDataEmptyListCopyWith<$Res> {
  factory $CompleteProductDataEmptyListCopyWith(
          CompleteProductDataEmptyList value,
          $Res Function(CompleteProductDataEmptyList) then) =
      _$CompleteProductDataEmptyListCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompleteProductDataEmptyListCopyWithImpl<$Res>
    extends _$CompleteProductDataListCopyWithImpl<$Res>
    implements $CompleteProductDataEmptyListCopyWith<$Res> {
  _$CompleteProductDataEmptyListCopyWithImpl(
      CompleteProductDataEmptyList _value,
      $Res Function(CompleteProductDataEmptyList) _then)
      : super(_value, (v) => _then(v as CompleteProductDataEmptyList));

  @override
  CompleteProductDataEmptyList get _value =>
      super._value as CompleteProductDataEmptyList;
}

@JsonSerializable()

/// @nodoc
class _$CompleteProductDataEmptyList implements CompleteProductDataEmptyList {
  const _$CompleteProductDataEmptyList();

  factory _$CompleteProductDataEmptyList.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteProductDataEmptyListFromJson(json);

  @override
  String toString() {
    return 'CompleteProductDataList.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CompleteProductDataEmptyList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<CompletePet> pets),
    @required TResult vehicle(List<CompleteVehicle> vehicles),
    @required TResult realEstate(List<CompleteRealEstate> properties),
    @required TResult job(List<CompleteJob> jobs),
    @required TResult product(List<CompleteProduct> products),
    @required TResult empty(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(List<CompletePet> pets),
    TResult vehicle(List<CompleteVehicle> vehicles),
    TResult realEstate(List<CompleteRealEstate> properties),
    TResult job(List<CompleteJob> jobs),
    TResult product(List<CompleteProduct> products),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(CompletePetList value),
    @required TResult vehicle(CompleteVehicleList value),
    @required TResult realEstate(CompleteRealEstateList value),
    @required TResult job(CompleteJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(CompleteProductDataEmptyList value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    assert(empty != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(CompletePetList value),
    TResult vehicle(CompleteVehicleList value),
    TResult realEstate(CompleteRealEstateList value),
    TResult job(CompleteJobList value),
    TResult product(LimitedProductList value),
    TResult empty(CompleteProductDataEmptyList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CompleteProductDataEmptyListToJson(this)
      ..['runtimeType'] = 'empty';
  }
}

abstract class CompleteProductDataEmptyList implements CompleteProductDataList {
  const factory CompleteProductDataEmptyList() = _$CompleteProductDataEmptyList;

  factory CompleteProductDataEmptyList.fromJson(Map<String, dynamic> json) =
      _$CompleteProductDataEmptyList.fromJson;
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
      @required @JsonKey(defaultValue: 'N/A') String educationqualification,
      @required bool isparttime,
      @required @JsonKey(defaultValue: 'N/A') String listingownertype,
      @required int maxsalaryrange,
      @required int minsalaryrange,
      @required int minyearexperience,
      @required String title,
      @required @JsonKey(defaultValue: 'N/A') String worktype}) {
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
  @JsonKey(defaultValue: 'N/A')
  String get educationqualification;
  bool get isparttime;
  @JsonKey(defaultValue: 'N/A')
  String get listingownertype;
  int get maxsalaryrange;
  int get minsalaryrange;
  int get minyearexperience;
  String get title;
  @JsonKey(defaultValue: 'N/A')
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
      @JsonKey(defaultValue: 'N/A') String educationqualification,
      bool isparttime,
      @JsonKey(defaultValue: 'N/A') String listingownertype,
      int maxsalaryrange,
      int minsalaryrange,
      int minyearexperience,
      String title,
      @JsonKey(defaultValue: 'N/A') String worktype});
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
      @JsonKey(defaultValue: 'N/A') String educationqualification,
      bool isparttime,
      @JsonKey(defaultValue: 'N/A') String listingownertype,
      int maxsalaryrange,
      int minsalaryrange,
      int minyearexperience,
      String title,
      @JsonKey(defaultValue: 'N/A') String worktype});
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
      @required @JsonKey(defaultValue: 'N/A') this.educationqualification,
      @required this.isparttime,
      @required @JsonKey(defaultValue: 'N/A') this.listingownertype,
      @required this.maxsalaryrange,
      @required this.minsalaryrange,
      @required this.minyearexperience,
      @required this.title,
      @required @JsonKey(defaultValue: 'N/A') this.worktype})
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
  @JsonKey(defaultValue: 'N/A')
  final String educationqualification;
  @override
  final bool isparttime;
  @override
  @JsonKey(defaultValue: 'N/A')
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
  @JsonKey(defaultValue: 'N/A')
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
      @required @JsonKey(defaultValue: 'N/A') String educationqualification,
      @required bool isparttime,
      @required @JsonKey(defaultValue: 'N/A') String listingownertype,
      @required int maxsalaryrange,
      @required int minsalaryrange,
      @required int minyearexperience,
      @required String title,
      @required @JsonKey(defaultValue: 'N/A') String worktype}) = _$_JobData;

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
  @JsonKey(defaultValue: 'N/A')
  String get educationqualification;
  @override
  bool get isparttime;
  @override
  @JsonKey(defaultValue: 'N/A')
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
  @JsonKey(defaultValue: 'N/A')
  String get worktype;
  @override
  @JsonKey(ignore: true)
  _$JobDataCopyWith<_JobData> get copyWith;
}
