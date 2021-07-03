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
          String userId,
      @required
      @JsonKey(name: 'adata')
          RealEstateData data}) {
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
          String userId,
      @required
      @JsonKey(name: 'adata')
          PetData data}) {
    return CompletePet(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
      data: data,
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
          String userId,
      @required
      @JsonKey(name: 'adata')
          VehicleData data}) {
    return CompleteVehicle(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
      data: data,
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
          String userId,
      @required
      @JsonKey(name: 'adata')
          ProductData data}) {
    return CompleteProduct(
      docId: docId,
      dt: dt,
      serviceId: serviceId,
      userId: userId,
      data: data,
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
                RealEstateData data),
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
                String userId,
            @JsonKey(name: 'adata')
                PetData data),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                VehicleData data),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductData data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') RealEstateData data),
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
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetData data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') VehicleData data),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductData data),
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
      @JsonKey(name: 'userid', defaultValue: '') String userId,
      @JsonKey(name: 'adata') RealEstateData data});

  $RealEstateDataCopyWith<$Res> get data;
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
      data: data == freezed ? _value.data : data as RealEstateData,
    ));
  }

  @override
  $RealEstateDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $RealEstateDataCopyWith<$Res>(_value.data, (value) {
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
  final RealEstateData data;

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
                RealEstateData data),
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
                String userId,
            @JsonKey(name: 'adata')
                PetData data),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                VehicleData data),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductData data),
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
        @JsonKey(name: 'adata') RealEstateData data),
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
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetData data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') VehicleData data),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductData data),
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
          String userId,
      @required
      @JsonKey(name: 'adata')
          RealEstateData data}) = _$CompleteRealEstate;

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
  RealEstateData get data;
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
                String userId,
            @JsonKey(name: 'adata')
                RealEstateData data),
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
                String userId,
            @JsonKey(name: 'adata')
                PetData data),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                VehicleData data),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductData data),
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
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') RealEstateData data),
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
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetData data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') VehicleData data),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductData data),
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
      @JsonKey(name: 'userid', defaultValue: '') String userId,
      @JsonKey(name: 'adata') PetData data});

  $PetDataCopyWith<$Res> get data;
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
    Object data = freezed,
  }) {
    return _then(CompletePet(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      data: data == freezed ? _value.data : data as PetData,
    ));
  }

  @override
  $PetDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $PetDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
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
          this.userId,
      @required
      @JsonKey(name: 'adata')
          this.data})
      : assert(docId != null),
        assert(dt != null),
        assert(serviceId != null),
        assert(userId != null),
        assert(data != null);

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
  @JsonKey(name: 'adata')
  final PetData data;

  @override
  String toString() {
    return 'CompleteProductData.pet(docId: $docId, dt: $dt, serviceId: $serviceId, userId: $userId, data: $data)';
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
                String userId,
            @JsonKey(name: 'adata')
                RealEstateData data),
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
                String userId,
            @JsonKey(name: 'adata')
                PetData data),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                VehicleData data),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductData data),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return pet(docId, dt, serviceId, userId, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') RealEstateData data),
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
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetData data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') VehicleData data),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pet != null) {
      return pet(docId, dt, serviceId, userId, data);
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
          String userId,
      @required
      @JsonKey(name: 'adata')
          PetData data}) = _$CompletePet;

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
  @JsonKey(name: 'adata')
  PetData get data;
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
      @JsonKey(name: 'userid', defaultValue: '') String userId,
      @JsonKey(name: 'adata') VehicleData data});

  $VehicleDataCopyWith<$Res> get data;
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
    Object data = freezed,
  }) {
    return _then(CompleteVehicle(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      data: data == freezed ? _value.data : data as VehicleData,
    ));
  }

  @override
  $VehicleDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $VehicleDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
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
          this.userId,
      @required
      @JsonKey(name: 'adata')
          this.data})
      : assert(docId != null),
        assert(dt != null),
        assert(serviceId != null),
        assert(userId != null),
        assert(data != null);

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
  @JsonKey(name: 'adata')
  final VehicleData data;

  @override
  String toString() {
    return 'CompleteProductData.vehicle(docId: $docId, dt: $dt, serviceId: $serviceId, userId: $userId, data: $data)';
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
                String userId,
            @JsonKey(name: 'adata')
                RealEstateData data),
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
                String userId,
            @JsonKey(name: 'adata')
                PetData data),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                VehicleData data),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductData data),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return vehicle(docId, dt, serviceId, userId, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') RealEstateData data),
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
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetData data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') VehicleData data),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (vehicle != null) {
      return vehicle(docId, dt, serviceId, userId, data);
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
          String userId,
      @required
      @JsonKey(name: 'adata')
          VehicleData data}) = _$CompleteVehicle;

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
  @JsonKey(name: 'adata')
  VehicleData get data;
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
      @JsonKey(name: 'userid', defaultValue: '') String userId,
      @JsonKey(name: 'adata') ProductData data});

  $ProductDataCopyWith<$Res> get data;
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
    Object data = freezed,
  }) {
    return _then(CompleteProduct(
      docId: docId == freezed ? _value.docId : docId as String,
      dt: dt == freezed ? _value.dt : dt as String,
      serviceId: serviceId == freezed ? _value.serviceId : serviceId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      data: data == freezed ? _value.data : data as ProductData,
    ));
  }

  @override
  $ProductDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $ProductDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
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
          this.userId,
      @required
      @JsonKey(name: 'adata')
          this.data})
      : assert(docId != null),
        assert(dt != null),
        assert(serviceId != null),
        assert(userId != null),
        assert(data != null);

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
  @JsonKey(name: 'adata')
  final ProductData data;

  @override
  String toString() {
    return 'CompleteProductData.product(docId: $docId, dt: $dt, serviceId: $serviceId, userId: $userId, data: $data)';
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
                String userId,
            @JsonKey(name: 'adata')
                RealEstateData data),
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
                String userId,
            @JsonKey(name: 'adata')
                PetData data),
    @required
        TResult vehicle(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                VehicleData data),
    @required
        TResult product(
            @JsonKey(name: 'docid')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductData data),
  }) {
    assert(realEstate != null);
    assert(job != null);
    assert(pet != null);
    assert(vehicle != null);
    assert(product != null);
    return product(docId, dt, serviceId, userId, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') RealEstateData data),
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
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetData data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') VehicleData data),
    TResult product(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (product != null) {
      return product(docId, dt, serviceId, userId, data);
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
          String userId,
      @required
      @JsonKey(name: 'adata')
          ProductData data}) = _$CompleteProduct;

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
  @JsonKey(name: 'adata')
  ProductData get data;
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
      return CompleteProductList.fromJson(json);
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
  CompleteProductList product({@required List<CompleteProduct> products}) {
    return CompleteProductList(
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
    @required TResult product(CompleteProductList value),
    @required TResult empty(CompleteProductDataEmptyList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(CompletePetList value),
    TResult vehicle(CompleteVehicleList value),
    TResult realEstate(CompleteRealEstateList value),
    TResult job(CompleteJobList value),
    TResult product(CompleteProductList value),
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
    @required TResult product(CompleteProductList value),
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
    TResult product(CompleteProductList value),
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
    @required TResult product(CompleteProductList value),
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
    TResult product(CompleteProductList value),
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
    @required TResult product(CompleteProductList value),
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
    TResult product(CompleteProductList value),
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
    @required TResult product(CompleteProductList value),
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
    TResult product(CompleteProductList value),
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
abstract class $CompleteProductListCopyWith<$Res> {
  factory $CompleteProductListCopyWith(
          CompleteProductList value, $Res Function(CompleteProductList) then) =
      _$CompleteProductListCopyWithImpl<$Res>;
  $Res call({List<CompleteProduct> products});
}

/// @nodoc
class _$CompleteProductListCopyWithImpl<$Res>
    extends _$CompleteProductDataListCopyWithImpl<$Res>
    implements $CompleteProductListCopyWith<$Res> {
  _$CompleteProductListCopyWithImpl(
      CompleteProductList _value, $Res Function(CompleteProductList) _then)
      : super(_value, (v) => _then(v as CompleteProductList));

  @override
  CompleteProductList get _value => super._value as CompleteProductList;

  @override
  $Res call({
    Object products = freezed,
  }) {
    return _then(CompleteProductList(
      products: products == freezed
          ? _value.products
          : products as List<CompleteProduct>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteProductList implements CompleteProductList {
  const _$CompleteProductList({@required this.products})
      : assert(products != null);

  factory _$CompleteProductList.fromJson(Map<String, dynamic> json) =>
      _$_$CompleteProductListFromJson(json);

  @override
  final List<CompleteProduct> products;

  @override
  String toString() {
    return 'CompleteProductDataList.product(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteProductList &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  $CompleteProductListCopyWith<CompleteProductList> get copyWith =>
      _$CompleteProductListCopyWithImpl<CompleteProductList>(this, _$identity);

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
    @required TResult product(CompleteProductList value),
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
    TResult product(CompleteProductList value),
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
    return _$_$CompleteProductListToJson(this)..['runtimeType'] = 'product';
  }
}

abstract class CompleteProductList implements CompleteProductDataList {
  const factory CompleteProductList(
      {@required List<CompleteProduct> products}) = _$CompleteProductList;

  factory CompleteProductList.fromJson(Map<String, dynamic> json) =
      _$CompleteProductList.fromJson;

  List<CompleteProduct> get products;
  @JsonKey(ignore: true)
  $CompleteProductListCopyWith<CompleteProductList> get copyWith;
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
    @required TResult product(CompleteProductList value),
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
    TResult product(CompleteProductList value),
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

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
class _$ProductDataTearOff {
  const _$ProductDataTearOff();

// ignore: unused_element
  _ProductData call(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'brand')
          String brand,
      @JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'tilephoto')
          String tilephoto,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'discountedprice')
          double discountedprice,
      @JsonKey(name: 'ptype')
          int ptype,
      @JsonKey(name: 'dynamicproperties')
          List<dynaproperty> dynamicproperties,
      @JsonKey(name: 'varinattype')
          String varinattype,
      @JsonKey(name: 'nopackagedata')
          NoPackageData nopackagedata,
      @JsonKey(name: 'packagedata')
          List<PackageData> packagedata,
      @JsonKey(name: 'sizeandcolordata')
          List<SizeAndColorData> sizeandcolordata,
      @JsonKey(name: 'custompackagedata')
          List<CustomPackageData> custompackagedata}) {
    return _ProductData(
      productid: productid,
      title: title,
      description: description,
      brand: brand,
      category: category,
      tilephoto: tilephoto,
      imagelist: imagelist,
      price: price,
      discountedprice: discountedprice,
      ptype: ptype,
      dynamicproperties: dynamicproperties,
      varinattype: varinattype,
      nopackagedata: nopackagedata,
      packagedata: packagedata,
      sizeandcolordata: sizeandcolordata,
      custompackagedata: custompackagedata,
    );
  }

// ignore: unused_element
  ProductData fromJson(Map<String, Object> json) {
    return ProductData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductData = _$ProductDataTearOff();

/// @nodoc
mixin _$ProductData {
  @JsonKey(name: 'productid')
  String get productid;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'brand')
  String get brand;
  @JsonKey(name: 'category')
  String get category;
  @JsonKey(name: 'tilephoto')
  String get tilephoto;
  @JsonKey(name: 'imagelist')
  List<String> get imagelist;
  @JsonKey(name: 'price')
  double get price;
  @JsonKey(name: 'discountedprice')
  double get discountedprice;
  @JsonKey(name: 'ptype')
  int get ptype;
  @JsonKey(name: 'dynamicproperties')
  List<dynaproperty> get dynamicproperties;
  @JsonKey(name: 'varinattype')
  String get varinattype;
  @JsonKey(name: 'nopackagedata')
  NoPackageData get nopackagedata;
  @JsonKey(name: 'packagedata')
  List<PackageData> get packagedata;
  @JsonKey(name: 'sizeandcolordata')
  List<SizeAndColorData> get sizeandcolordata;
  @JsonKey(name: 'custompackagedata')
  List<CustomPackageData> get custompackagedata;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'brand')
          String brand,
      @JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'tilephoto')
          String tilephoto,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'discountedprice')
          double discountedprice,
      @JsonKey(name: 'ptype')
          int ptype,
      @JsonKey(name: 'dynamicproperties')
          List<dynaproperty> dynamicproperties,
      @JsonKey(name: 'varinattype')
          String varinattype,
      @JsonKey(name: 'nopackagedata')
          NoPackageData nopackagedata,
      @JsonKey(name: 'packagedata')
          List<PackageData> packagedata,
      @JsonKey(name: 'sizeandcolordata')
          List<SizeAndColorData> sizeandcolordata,
      @JsonKey(name: 'custompackagedata')
          List<CustomPackageData> custompackagedata});

  $NoPackageDataCopyWith<$Res> get nopackagedata;
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res> implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  final ProductData _value;
  // ignore: unused_field
  final $Res Function(ProductData) _then;

  @override
  $Res call({
    Object productid = freezed,
    Object title = freezed,
    Object description = freezed,
    Object brand = freezed,
    Object category = freezed,
    Object tilephoto = freezed,
    Object imagelist = freezed,
    Object price = freezed,
    Object discountedprice = freezed,
    Object ptype = freezed,
    Object dynamicproperties = freezed,
    Object varinattype = freezed,
    Object nopackagedata = freezed,
    Object packagedata = freezed,
    Object sizeandcolordata = freezed,
    Object custompackagedata = freezed,
  }) {
    return _then(_value.copyWith(
      productid: productid == freezed ? _value.productid : productid as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      brand: brand == freezed ? _value.brand : brand as String,
      category: category == freezed ? _value.category : category as String,
      tilephoto: tilephoto == freezed ? _value.tilephoto : tilephoto as String,
      imagelist:
          imagelist == freezed ? _value.imagelist : imagelist as List<String>,
      price: price == freezed ? _value.price : price as double,
      discountedprice: discountedprice == freezed
          ? _value.discountedprice
          : discountedprice as double,
      ptype: ptype == freezed ? _value.ptype : ptype as int,
      dynamicproperties: dynamicproperties == freezed
          ? _value.dynamicproperties
          : dynamicproperties as List<dynaproperty>,
      varinattype:
          varinattype == freezed ? _value.varinattype : varinattype as String,
      nopackagedata: nopackagedata == freezed
          ? _value.nopackagedata
          : nopackagedata as NoPackageData,
      packagedata: packagedata == freezed
          ? _value.packagedata
          : packagedata as List<PackageData>,
      sizeandcolordata: sizeandcolordata == freezed
          ? _value.sizeandcolordata
          : sizeandcolordata as List<SizeAndColorData>,
      custompackagedata: custompackagedata == freezed
          ? _value.custompackagedata
          : custompackagedata as List<CustomPackageData>,
    ));
  }

  @override
  $NoPackageDataCopyWith<$Res> get nopackagedata {
    if (_value.nopackagedata == null) {
      return null;
    }
    return $NoPackageDataCopyWith<$Res>(_value.nopackagedata, (value) {
      return _then(_value.copyWith(nopackagedata: value));
    });
  }
}

/// @nodoc
abstract class _$ProductDataCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$ProductDataCopyWith(
          _ProductData value, $Res Function(_ProductData) then) =
      __$ProductDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'brand')
          String brand,
      @JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'tilephoto')
          String tilephoto,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'discountedprice')
          double discountedprice,
      @JsonKey(name: 'ptype')
          int ptype,
      @JsonKey(name: 'dynamicproperties')
          List<dynaproperty> dynamicproperties,
      @JsonKey(name: 'varinattype')
          String varinattype,
      @JsonKey(name: 'nopackagedata')
          NoPackageData nopackagedata,
      @JsonKey(name: 'packagedata')
          List<PackageData> packagedata,
      @JsonKey(name: 'sizeandcolordata')
          List<SizeAndColorData> sizeandcolordata,
      @JsonKey(name: 'custompackagedata')
          List<CustomPackageData> custompackagedata});

  @override
  $NoPackageDataCopyWith<$Res> get nopackagedata;
}

/// @nodoc
class __$ProductDataCopyWithImpl<$Res> extends _$ProductDataCopyWithImpl<$Res>
    implements _$ProductDataCopyWith<$Res> {
  __$ProductDataCopyWithImpl(
      _ProductData _value, $Res Function(_ProductData) _then)
      : super(_value, (v) => _then(v as _ProductData));

  @override
  _ProductData get _value => super._value as _ProductData;

  @override
  $Res call({
    Object productid = freezed,
    Object title = freezed,
    Object description = freezed,
    Object brand = freezed,
    Object category = freezed,
    Object tilephoto = freezed,
    Object imagelist = freezed,
    Object price = freezed,
    Object discountedprice = freezed,
    Object ptype = freezed,
    Object dynamicproperties = freezed,
    Object varinattype = freezed,
    Object nopackagedata = freezed,
    Object packagedata = freezed,
    Object sizeandcolordata = freezed,
    Object custompackagedata = freezed,
  }) {
    return _then(_ProductData(
      productid: productid == freezed ? _value.productid : productid as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      brand: brand == freezed ? _value.brand : brand as String,
      category: category == freezed ? _value.category : category as String,
      tilephoto: tilephoto == freezed ? _value.tilephoto : tilephoto as String,
      imagelist:
          imagelist == freezed ? _value.imagelist : imagelist as List<String>,
      price: price == freezed ? _value.price : price as double,
      discountedprice: discountedprice == freezed
          ? _value.discountedprice
          : discountedprice as double,
      ptype: ptype == freezed ? _value.ptype : ptype as int,
      dynamicproperties: dynamicproperties == freezed
          ? _value.dynamicproperties
          : dynamicproperties as List<dynaproperty>,
      varinattype:
          varinattype == freezed ? _value.varinattype : varinattype as String,
      nopackagedata: nopackagedata == freezed
          ? _value.nopackagedata
          : nopackagedata as NoPackageData,
      packagedata: packagedata == freezed
          ? _value.packagedata
          : packagedata as List<PackageData>,
      sizeandcolordata: sizeandcolordata == freezed
          ? _value.sizeandcolordata
          : sizeandcolordata as List<SizeAndColorData>,
      custompackagedata: custompackagedata == freezed
          ? _value.custompackagedata
          : custompackagedata as List<CustomPackageData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductData implements _ProductData {
  _$_ProductData(
      {@JsonKey(name: 'productid') this.productid,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'brand') this.brand,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'tilephoto') this.tilephoto,
      @JsonKey(name: 'imagelist') this.imagelist,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'discountedprice') this.discountedprice,
      @JsonKey(name: 'ptype') this.ptype,
      @JsonKey(name: 'dynamicproperties') this.dynamicproperties,
      @JsonKey(name: 'varinattype') this.varinattype,
      @JsonKey(name: 'nopackagedata') this.nopackagedata,
      @JsonKey(name: 'packagedata') this.packagedata,
      @JsonKey(name: 'sizeandcolordata') this.sizeandcolordata,
      @JsonKey(name: 'custompackagedata') this.custompackagedata});

  factory _$_ProductData.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductDataFromJson(json);

  @override
  @JsonKey(name: 'productid')
  final String productid;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'brand')
  final String brand;
  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'tilephoto')
  final String tilephoto;
  @override
  @JsonKey(name: 'imagelist')
  final List<String> imagelist;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'discountedprice')
  final double discountedprice;
  @override
  @JsonKey(name: 'ptype')
  final int ptype;
  @override
  @JsonKey(name: 'dynamicproperties')
  final List<dynaproperty> dynamicproperties;
  @override
  @JsonKey(name: 'varinattype')
  final String varinattype;
  @override
  @JsonKey(name: 'nopackagedata')
  final NoPackageData nopackagedata;
  @override
  @JsonKey(name: 'packagedata')
  final List<PackageData> packagedata;
  @override
  @JsonKey(name: 'sizeandcolordata')
  final List<SizeAndColorData> sizeandcolordata;
  @override
  @JsonKey(name: 'custompackagedata')
  final List<CustomPackageData> custompackagedata;

  @override
  String toString() {
    return 'ProductData(productid: $productid, title: $title, description: $description, brand: $brand, category: $category, tilephoto: $tilephoto, imagelist: $imagelist, price: $price, discountedprice: $discountedprice, ptype: $ptype, dynamicproperties: $dynamicproperties, varinattype: $varinattype, nopackagedata: $nopackagedata, packagedata: $packagedata, sizeandcolordata: $sizeandcolordata, custompackagedata: $custompackagedata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductData &&
            (identical(other.productid, productid) ||
                const DeepCollectionEquality()
                    .equals(other.productid, productid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.tilephoto, tilephoto) ||
                const DeepCollectionEquality()
                    .equals(other.tilephoto, tilephoto)) &&
            (identical(other.imagelist, imagelist) ||
                const DeepCollectionEquality()
                    .equals(other.imagelist, imagelist)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discountedprice, discountedprice) ||
                const DeepCollectionEquality()
                    .equals(other.discountedprice, discountedprice)) &&
            (identical(other.ptype, ptype) ||
                const DeepCollectionEquality().equals(other.ptype, ptype)) &&
            (identical(other.dynamicproperties, dynamicproperties) ||
                const DeepCollectionEquality()
                    .equals(other.dynamicproperties, dynamicproperties)) &&
            (identical(other.varinattype, varinattype) ||
                const DeepCollectionEquality()
                    .equals(other.varinattype, varinattype)) &&
            (identical(other.nopackagedata, nopackagedata) ||
                const DeepCollectionEquality()
                    .equals(other.nopackagedata, nopackagedata)) &&
            (identical(other.packagedata, packagedata) ||
                const DeepCollectionEquality()
                    .equals(other.packagedata, packagedata)) &&
            (identical(other.sizeandcolordata, sizeandcolordata) ||
                const DeepCollectionEquality()
                    .equals(other.sizeandcolordata, sizeandcolordata)) &&
            (identical(other.custompackagedata, custompackagedata) ||
                const DeepCollectionEquality()
                    .equals(other.custompackagedata, custompackagedata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(tilephoto) ^
      const DeepCollectionEquality().hash(imagelist) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discountedprice) ^
      const DeepCollectionEquality().hash(ptype) ^
      const DeepCollectionEquality().hash(dynamicproperties) ^
      const DeepCollectionEquality().hash(varinattype) ^
      const DeepCollectionEquality().hash(nopackagedata) ^
      const DeepCollectionEquality().hash(packagedata) ^
      const DeepCollectionEquality().hash(sizeandcolordata) ^
      const DeepCollectionEquality().hash(custompackagedata);

  @JsonKey(ignore: true)
  @override
  _$ProductDataCopyWith<_ProductData> get copyWith =>
      __$ProductDataCopyWithImpl<_ProductData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductDataToJson(this);
  }
}

abstract class _ProductData implements ProductData {
  factory _ProductData(
      {@JsonKey(name: 'productid')
          String productid,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'brand')
          String brand,
      @JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'tilephoto')
          String tilephoto,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'discountedprice')
          double discountedprice,
      @JsonKey(name: 'ptype')
          int ptype,
      @JsonKey(name: 'dynamicproperties')
          List<dynaproperty> dynamicproperties,
      @JsonKey(name: 'varinattype')
          String varinattype,
      @JsonKey(name: 'nopackagedata')
          NoPackageData nopackagedata,
      @JsonKey(name: 'packagedata')
          List<PackageData> packagedata,
      @JsonKey(name: 'sizeandcolordata')
          List<SizeAndColorData> sizeandcolordata,
      @JsonKey(name: 'custompackagedata')
          List<CustomPackageData> custompackagedata}) = _$_ProductData;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$_ProductData.fromJson;

  @override
  @JsonKey(name: 'productid')
  String get productid;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'brand')
  String get brand;
  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'tilephoto')
  String get tilephoto;
  @override
  @JsonKey(name: 'imagelist')
  List<String> get imagelist;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'discountedprice')
  double get discountedprice;
  @override
  @JsonKey(name: 'ptype')
  int get ptype;
  @override
  @JsonKey(name: 'dynamicproperties')
  List<dynaproperty> get dynamicproperties;
  @override
  @JsonKey(name: 'varinattype')
  String get varinattype;
  @override
  @JsonKey(name: 'nopackagedata')
  NoPackageData get nopackagedata;
  @override
  @JsonKey(name: 'packagedata')
  List<PackageData> get packagedata;
  @override
  @JsonKey(name: 'sizeandcolordata')
  List<SizeAndColorData> get sizeandcolordata;
  @override
  @JsonKey(name: 'custompackagedata')
  List<CustomPackageData> get custompackagedata;
  @override
  @JsonKey(ignore: true)
  _$ProductDataCopyWith<_ProductData> get copyWith;
}

NoPackageData _$NoPackageDataFromJson(Map<String, dynamic> json) {
  return _NoPackageData.fromJson(json);
}

/// @nodoc
class _$NoPackageDataTearOff {
  const _$NoPackageDataTearOff();

// ignore: unused_element
  _NoPackageData call(
      {@JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'priceperunit') double priceperunit,
      @JsonKey(name: 'inventoryunits') double inventoryunits,
      @JsonKey(name: 'discountedpriceperunit') double discountedpriceperunit}) {
    return _NoPackageData(
      unit: unit,
      priceperunit: priceperunit,
      inventoryunits: inventoryunits,
      discountedpriceperunit: discountedpriceperunit,
    );
  }

// ignore: unused_element
  NoPackageData fromJson(Map<String, Object> json) {
    return NoPackageData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NoPackageData = _$NoPackageDataTearOff();

/// @nodoc
mixin _$NoPackageData {
  @JsonKey(name: 'unit')
  String get unit;
  @JsonKey(name: 'priceperunit')
  double get priceperunit;
  @JsonKey(name: 'inventoryunits')
  double get inventoryunits;
  @JsonKey(name: 'discountedpriceperunit')
  double get discountedpriceperunit;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NoPackageDataCopyWith<NoPackageData> get copyWith;
}

/// @nodoc
abstract class $NoPackageDataCopyWith<$Res> {
  factory $NoPackageDataCopyWith(
          NoPackageData value, $Res Function(NoPackageData) then) =
      _$NoPackageDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'priceperunit') double priceperunit,
      @JsonKey(name: 'inventoryunits') double inventoryunits,
      @JsonKey(name: 'discountedpriceperunit') double discountedpriceperunit});
}

/// @nodoc
class _$NoPackageDataCopyWithImpl<$Res>
    implements $NoPackageDataCopyWith<$Res> {
  _$NoPackageDataCopyWithImpl(this._value, this._then);

  final NoPackageData _value;
  // ignore: unused_field
  final $Res Function(NoPackageData) _then;

  @override
  $Res call({
    Object unit = freezed,
    Object priceperunit = freezed,
    Object inventoryunits = freezed,
    Object discountedpriceperunit = freezed,
  }) {
    return _then(_value.copyWith(
      unit: unit == freezed ? _value.unit : unit as String,
      priceperunit: priceperunit == freezed
          ? _value.priceperunit
          : priceperunit as double,
      inventoryunits: inventoryunits == freezed
          ? _value.inventoryunits
          : inventoryunits as double,
      discountedpriceperunit: discountedpriceperunit == freezed
          ? _value.discountedpriceperunit
          : discountedpriceperunit as double,
    ));
  }
}

/// @nodoc
abstract class _$NoPackageDataCopyWith<$Res>
    implements $NoPackageDataCopyWith<$Res> {
  factory _$NoPackageDataCopyWith(
          _NoPackageData value, $Res Function(_NoPackageData) then) =
      __$NoPackageDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'priceperunit') double priceperunit,
      @JsonKey(name: 'inventoryunits') double inventoryunits,
      @JsonKey(name: 'discountedpriceperunit') double discountedpriceperunit});
}

/// @nodoc
class __$NoPackageDataCopyWithImpl<$Res>
    extends _$NoPackageDataCopyWithImpl<$Res>
    implements _$NoPackageDataCopyWith<$Res> {
  __$NoPackageDataCopyWithImpl(
      _NoPackageData _value, $Res Function(_NoPackageData) _then)
      : super(_value, (v) => _then(v as _NoPackageData));

  @override
  _NoPackageData get _value => super._value as _NoPackageData;

  @override
  $Res call({
    Object unit = freezed,
    Object priceperunit = freezed,
    Object inventoryunits = freezed,
    Object discountedpriceperunit = freezed,
  }) {
    return _then(_NoPackageData(
      unit: unit == freezed ? _value.unit : unit as String,
      priceperunit: priceperunit == freezed
          ? _value.priceperunit
          : priceperunit as double,
      inventoryunits: inventoryunits == freezed
          ? _value.inventoryunits
          : inventoryunits as double,
      discountedpriceperunit: discountedpriceperunit == freezed
          ? _value.discountedpriceperunit
          : discountedpriceperunit as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NoPackageData implements _NoPackageData {
  _$_NoPackageData(
      {@JsonKey(name: 'unit') this.unit,
      @JsonKey(name: 'priceperunit') this.priceperunit,
      @JsonKey(name: 'inventoryunits') this.inventoryunits,
      @JsonKey(name: 'discountedpriceperunit') this.discountedpriceperunit});

  factory _$_NoPackageData.fromJson(Map<String, dynamic> json) =>
      _$_$_NoPackageDataFromJson(json);

  @override
  @JsonKey(name: 'unit')
  final String unit;
  @override
  @JsonKey(name: 'priceperunit')
  final double priceperunit;
  @override
  @JsonKey(name: 'inventoryunits')
  final double inventoryunits;
  @override
  @JsonKey(name: 'discountedpriceperunit')
  final double discountedpriceperunit;

  @override
  String toString() {
    return 'NoPackageData(unit: $unit, priceperunit: $priceperunit, inventoryunits: $inventoryunits, discountedpriceperunit: $discountedpriceperunit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoPackageData &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.priceperunit, priceperunit) ||
                const DeepCollectionEquality()
                    .equals(other.priceperunit, priceperunit)) &&
            (identical(other.inventoryunits, inventoryunits) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryunits, inventoryunits)) &&
            (identical(other.discountedpriceperunit, discountedpriceperunit) ||
                const DeepCollectionEquality().equals(
                    other.discountedpriceperunit, discountedpriceperunit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(priceperunit) ^
      const DeepCollectionEquality().hash(inventoryunits) ^
      const DeepCollectionEquality().hash(discountedpriceperunit);

  @JsonKey(ignore: true)
  @override
  _$NoPackageDataCopyWith<_NoPackageData> get copyWith =>
      __$NoPackageDataCopyWithImpl<_NoPackageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NoPackageDataToJson(this);
  }
}

abstract class _NoPackageData implements NoPackageData {
  factory _NoPackageData(
      {@JsonKey(name: 'unit')
          String unit,
      @JsonKey(name: 'priceperunit')
          double priceperunit,
      @JsonKey(name: 'inventoryunits')
          double inventoryunits,
      @JsonKey(name: 'discountedpriceperunit')
          double discountedpriceperunit}) = _$_NoPackageData;

  factory _NoPackageData.fromJson(Map<String, dynamic> json) =
      _$_NoPackageData.fromJson;

  @override
  @JsonKey(name: 'unit')
  String get unit;
  @override
  @JsonKey(name: 'priceperunit')
  double get priceperunit;
  @override
  @JsonKey(name: 'inventoryunits')
  double get inventoryunits;
  @override
  @JsonKey(name: 'discountedpriceperunit')
  double get discountedpriceperunit;
  @override
  @JsonKey(ignore: true)
  _$NoPackageDataCopyWith<_NoPackageData> get copyWith;
}

PackageData _$PackageDataFromJson(Map<String, dynamic> json) {
  return _PackageData.fromJson(json);
}

/// @nodoc
class _$PackageDataTearOff {
  const _$PackageDataTearOff();

// ignore: unused_element
  _PackageData call(
      {@JsonKey(name: 'packageid') String packageid,
      @JsonKey(name: 'barcodeid') String barcodeid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'listimages') List<String> listimages,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'inventoryunits') int inventoryunits}) {
    return _PackageData(
      packageid: packageid,
      barcodeid: barcodeid,
      title: title,
      tileimage: tileimage,
      listimages: listimages,
      unit: unit,
      price: price,
      discountedprice: discountedprice,
      inventoryunits: inventoryunits,
    );
  }

// ignore: unused_element
  PackageData fromJson(Map<String, Object> json) {
    return PackageData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageData = _$PackageDataTearOff();

/// @nodoc
mixin _$PackageData {
  @JsonKey(name: 'packageid')
  String get packageid;
  @JsonKey(name: 'barcodeid')
  String get barcodeid;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(name: 'listimages')
  List<String> get listimages;
  @JsonKey(name: 'unit')
  int get unit;
  @JsonKey(name: 'price')
  double get price;
  @JsonKey(name: 'discountedprice')
  double get discountedprice;
  @JsonKey(name: 'inventoryunits')
  int get inventoryunits;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PackageDataCopyWith<PackageData> get copyWith;
}

/// @nodoc
abstract class $PackageDataCopyWith<$Res> {
  factory $PackageDataCopyWith(
          PackageData value, $Res Function(PackageData) then) =
      _$PackageDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'packageid') String packageid,
      @JsonKey(name: 'barcodeid') String barcodeid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'listimages') List<String> listimages,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'inventoryunits') int inventoryunits});
}

/// @nodoc
class _$PackageDataCopyWithImpl<$Res> implements $PackageDataCopyWith<$Res> {
  _$PackageDataCopyWithImpl(this._value, this._then);

  final PackageData _value;
  // ignore: unused_field
  final $Res Function(PackageData) _then;

  @override
  $Res call({
    Object packageid = freezed,
    Object barcodeid = freezed,
    Object title = freezed,
    Object tileimage = freezed,
    Object listimages = freezed,
    Object unit = freezed,
    Object price = freezed,
    Object discountedprice = freezed,
    Object inventoryunits = freezed,
  }) {
    return _then(_value.copyWith(
      packageid: packageid == freezed ? _value.packageid : packageid as String,
      barcodeid: barcodeid == freezed ? _value.barcodeid : barcodeid as String,
      title: title == freezed ? _value.title : title as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      listimages: listimages == freezed
          ? _value.listimages
          : listimages as List<String>,
      unit: unit == freezed ? _value.unit : unit as int,
      price: price == freezed ? _value.price : price as double,
      discountedprice: discountedprice == freezed
          ? _value.discountedprice
          : discountedprice as double,
      inventoryunits: inventoryunits == freezed
          ? _value.inventoryunits
          : inventoryunits as int,
    ));
  }
}

/// @nodoc
abstract class _$PackageDataCopyWith<$Res>
    implements $PackageDataCopyWith<$Res> {
  factory _$PackageDataCopyWith(
          _PackageData value, $Res Function(_PackageData) then) =
      __$PackageDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'packageid') String packageid,
      @JsonKey(name: 'barcodeid') String barcodeid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'listimages') List<String> listimages,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'inventoryunits') int inventoryunits});
}

/// @nodoc
class __$PackageDataCopyWithImpl<$Res> extends _$PackageDataCopyWithImpl<$Res>
    implements _$PackageDataCopyWith<$Res> {
  __$PackageDataCopyWithImpl(
      _PackageData _value, $Res Function(_PackageData) _then)
      : super(_value, (v) => _then(v as _PackageData));

  @override
  _PackageData get _value => super._value as _PackageData;

  @override
  $Res call({
    Object packageid = freezed,
    Object barcodeid = freezed,
    Object title = freezed,
    Object tileimage = freezed,
    Object listimages = freezed,
    Object unit = freezed,
    Object price = freezed,
    Object discountedprice = freezed,
    Object inventoryunits = freezed,
  }) {
    return _then(_PackageData(
      packageid: packageid == freezed ? _value.packageid : packageid as String,
      barcodeid: barcodeid == freezed ? _value.barcodeid : barcodeid as String,
      title: title == freezed ? _value.title : title as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      listimages: listimages == freezed
          ? _value.listimages
          : listimages as List<String>,
      unit: unit == freezed ? _value.unit : unit as int,
      price: price == freezed ? _value.price : price as double,
      discountedprice: discountedprice == freezed
          ? _value.discountedprice
          : discountedprice as double,
      inventoryunits: inventoryunits == freezed
          ? _value.inventoryunits
          : inventoryunits as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PackageData implements _PackageData {
  _$_PackageData(
      {@JsonKey(name: 'packageid') this.packageid,
      @JsonKey(name: 'barcodeid') this.barcodeid,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'tileimage') this.tileimage,
      @JsonKey(name: 'listimages') this.listimages,
      @JsonKey(name: 'unit') this.unit,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'discountedprice') this.discountedprice,
      @JsonKey(name: 'inventoryunits') this.inventoryunits});

  factory _$_PackageData.fromJson(Map<String, dynamic> json) =>
      _$_$_PackageDataFromJson(json);

  @override
  @JsonKey(name: 'packageid')
  final String packageid;
  @override
  @JsonKey(name: 'barcodeid')
  final String barcodeid;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'tileimage')
  final String tileimage;
  @override
  @JsonKey(name: 'listimages')
  final List<String> listimages;
  @override
  @JsonKey(name: 'unit')
  final int unit;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'discountedprice')
  final double discountedprice;
  @override
  @JsonKey(name: 'inventoryunits')
  final int inventoryunits;

  @override
  String toString() {
    return 'PackageData(packageid: $packageid, barcodeid: $barcodeid, title: $title, tileimage: $tileimage, listimages: $listimages, unit: $unit, price: $price, discountedprice: $discountedprice, inventoryunits: $inventoryunits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PackageData &&
            (identical(other.packageid, packageid) ||
                const DeepCollectionEquality()
                    .equals(other.packageid, packageid)) &&
            (identical(other.barcodeid, barcodeid) ||
                const DeepCollectionEquality()
                    .equals(other.barcodeid, barcodeid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.listimages, listimages) ||
                const DeepCollectionEquality()
                    .equals(other.listimages, listimages)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discountedprice, discountedprice) ||
                const DeepCollectionEquality()
                    .equals(other.discountedprice, discountedprice)) &&
            (identical(other.inventoryunits, inventoryunits) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryunits, inventoryunits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(packageid) ^
      const DeepCollectionEquality().hash(barcodeid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(listimages) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discountedprice) ^
      const DeepCollectionEquality().hash(inventoryunits);

  @JsonKey(ignore: true)
  @override
  _$PackageDataCopyWith<_PackageData> get copyWith =>
      __$PackageDataCopyWithImpl<_PackageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PackageDataToJson(this);
  }
}

abstract class _PackageData implements PackageData {
  factory _PackageData(
      {@JsonKey(name: 'packageid') String packageid,
      @JsonKey(name: 'barcodeid') String barcodeid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'listimages') List<String> listimages,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'inventoryunits') int inventoryunits}) = _$_PackageData;

  factory _PackageData.fromJson(Map<String, dynamic> json) =
      _$_PackageData.fromJson;

  @override
  @JsonKey(name: 'packageid')
  String get packageid;
  @override
  @JsonKey(name: 'barcodeid')
  String get barcodeid;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @override
  @JsonKey(name: 'listimages')
  List<String> get listimages;
  @override
  @JsonKey(name: 'unit')
  int get unit;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'discountedprice')
  double get discountedprice;
  @override
  @JsonKey(name: 'inventoryunits')
  int get inventoryunits;
  @override
  @JsonKey(ignore: true)
  _$PackageDataCopyWith<_PackageData> get copyWith;
}

SizeAndColorData _$SizeAndColorDataFromJson(Map<String, dynamic> json) {
  return _SizeAndColorData.fromJson(json);
}

/// @nodoc
class _$SizeAndColorDataTearOff {
  const _$SizeAndColorDataTearOff();

// ignore: unused_element
  _SizeAndColorData call(
      {@JsonKey(name: 'sizecolorid') String sizecolorid,
      @JsonKey(name: 'barcodeid') String barcodeid,
      @JsonKey(name: 'sizetype') String sizetype,
      @JsonKey(name: 'size') String size,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'listimages') List<String> listimages,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'inventoryunits') int inventoryunits}) {
    return _SizeAndColorData(
      sizecolorid: sizecolorid,
      barcodeid: barcodeid,
      sizetype: sizetype,
      size: size,
      color: color,
      price: price,
      discountedprice: discountedprice,
      tileimage: tileimage,
      listimages: listimages,
      unit: unit,
      inventoryunits: inventoryunits,
    );
  }

// ignore: unused_element
  SizeAndColorData fromJson(Map<String, Object> json) {
    return SizeAndColorData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SizeAndColorData = _$SizeAndColorDataTearOff();

/// @nodoc
mixin _$SizeAndColorData {
  @JsonKey(name: 'sizecolorid')
  String get sizecolorid;
  @JsonKey(name: 'barcodeid')
  String get barcodeid;
  @JsonKey(name: 'sizetype')
  String get sizetype;
  @JsonKey(name: 'size')
  String get size;
  @JsonKey(name: 'color')
  String get color;
  @JsonKey(name: 'price')
  double get price;
  @JsonKey(name: 'discountedprice')
  double get discountedprice;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(name: 'listimages')
  List<String> get listimages;
  @JsonKey(name: 'unit')
  int get unit;
  @JsonKey(name: 'inventoryunits')
  int get inventoryunits;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SizeAndColorDataCopyWith<SizeAndColorData> get copyWith;
}

/// @nodoc
abstract class $SizeAndColorDataCopyWith<$Res> {
  factory $SizeAndColorDataCopyWith(
          SizeAndColorData value, $Res Function(SizeAndColorData) then) =
      _$SizeAndColorDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sizecolorid') String sizecolorid,
      @JsonKey(name: 'barcodeid') String barcodeid,
      @JsonKey(name: 'sizetype') String sizetype,
      @JsonKey(name: 'size') String size,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'listimages') List<String> listimages,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'inventoryunits') int inventoryunits});
}

/// @nodoc
class _$SizeAndColorDataCopyWithImpl<$Res>
    implements $SizeAndColorDataCopyWith<$Res> {
  _$SizeAndColorDataCopyWithImpl(this._value, this._then);

  final SizeAndColorData _value;
  // ignore: unused_field
  final $Res Function(SizeAndColorData) _then;

  @override
  $Res call({
    Object sizecolorid = freezed,
    Object barcodeid = freezed,
    Object sizetype = freezed,
    Object size = freezed,
    Object color = freezed,
    Object price = freezed,
    Object discountedprice = freezed,
    Object tileimage = freezed,
    Object listimages = freezed,
    Object unit = freezed,
    Object inventoryunits = freezed,
  }) {
    return _then(_value.copyWith(
      sizecolorid:
          sizecolorid == freezed ? _value.sizecolorid : sizecolorid as String,
      barcodeid: barcodeid == freezed ? _value.barcodeid : barcodeid as String,
      sizetype: sizetype == freezed ? _value.sizetype : sizetype as String,
      size: size == freezed ? _value.size : size as String,
      color: color == freezed ? _value.color : color as String,
      price: price == freezed ? _value.price : price as double,
      discountedprice: discountedprice == freezed
          ? _value.discountedprice
          : discountedprice as double,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      listimages: listimages == freezed
          ? _value.listimages
          : listimages as List<String>,
      unit: unit == freezed ? _value.unit : unit as int,
      inventoryunits: inventoryunits == freezed
          ? _value.inventoryunits
          : inventoryunits as int,
    ));
  }
}

/// @nodoc
abstract class _$SizeAndColorDataCopyWith<$Res>
    implements $SizeAndColorDataCopyWith<$Res> {
  factory _$SizeAndColorDataCopyWith(
          _SizeAndColorData value, $Res Function(_SizeAndColorData) then) =
      __$SizeAndColorDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sizecolorid') String sizecolorid,
      @JsonKey(name: 'barcodeid') String barcodeid,
      @JsonKey(name: 'sizetype') String sizetype,
      @JsonKey(name: 'size') String size,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'listimages') List<String> listimages,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'inventoryunits') int inventoryunits});
}

/// @nodoc
class __$SizeAndColorDataCopyWithImpl<$Res>
    extends _$SizeAndColorDataCopyWithImpl<$Res>
    implements _$SizeAndColorDataCopyWith<$Res> {
  __$SizeAndColorDataCopyWithImpl(
      _SizeAndColorData _value, $Res Function(_SizeAndColorData) _then)
      : super(_value, (v) => _then(v as _SizeAndColorData));

  @override
  _SizeAndColorData get _value => super._value as _SizeAndColorData;

  @override
  $Res call({
    Object sizecolorid = freezed,
    Object barcodeid = freezed,
    Object sizetype = freezed,
    Object size = freezed,
    Object color = freezed,
    Object price = freezed,
    Object discountedprice = freezed,
    Object tileimage = freezed,
    Object listimages = freezed,
    Object unit = freezed,
    Object inventoryunits = freezed,
  }) {
    return _then(_SizeAndColorData(
      sizecolorid:
          sizecolorid == freezed ? _value.sizecolorid : sizecolorid as String,
      barcodeid: barcodeid == freezed ? _value.barcodeid : barcodeid as String,
      sizetype: sizetype == freezed ? _value.sizetype : sizetype as String,
      size: size == freezed ? _value.size : size as String,
      color: color == freezed ? _value.color : color as String,
      price: price == freezed ? _value.price : price as double,
      discountedprice: discountedprice == freezed
          ? _value.discountedprice
          : discountedprice as double,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      listimages: listimages == freezed
          ? _value.listimages
          : listimages as List<String>,
      unit: unit == freezed ? _value.unit : unit as int,
      inventoryunits: inventoryunits == freezed
          ? _value.inventoryunits
          : inventoryunits as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SizeAndColorData implements _SizeAndColorData {
  _$_SizeAndColorData(
      {@JsonKey(name: 'sizecolorid') this.sizecolorid,
      @JsonKey(name: 'barcodeid') this.barcodeid,
      @JsonKey(name: 'sizetype') this.sizetype,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'color') this.color,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'discountedprice') this.discountedprice,
      @JsonKey(name: 'tileimage') this.tileimage,
      @JsonKey(name: 'listimages') this.listimages,
      @JsonKey(name: 'unit') this.unit,
      @JsonKey(name: 'inventoryunits') this.inventoryunits});

  factory _$_SizeAndColorData.fromJson(Map<String, dynamic> json) =>
      _$_$_SizeAndColorDataFromJson(json);

  @override
  @JsonKey(name: 'sizecolorid')
  final String sizecolorid;
  @override
  @JsonKey(name: 'barcodeid')
  final String barcodeid;
  @override
  @JsonKey(name: 'sizetype')
  final String sizetype;
  @override
  @JsonKey(name: 'size')
  final String size;
  @override
  @JsonKey(name: 'color')
  final String color;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'discountedprice')
  final double discountedprice;
  @override
  @JsonKey(name: 'tileimage')
  final String tileimage;
  @override
  @JsonKey(name: 'listimages')
  final List<String> listimages;
  @override
  @JsonKey(name: 'unit')
  final int unit;
  @override
  @JsonKey(name: 'inventoryunits')
  final int inventoryunits;

  @override
  String toString() {
    return 'SizeAndColorData(sizecolorid: $sizecolorid, barcodeid: $barcodeid, sizetype: $sizetype, size: $size, color: $color, price: $price, discountedprice: $discountedprice, tileimage: $tileimage, listimages: $listimages, unit: $unit, inventoryunits: $inventoryunits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SizeAndColorData &&
            (identical(other.sizecolorid, sizecolorid) ||
                const DeepCollectionEquality()
                    .equals(other.sizecolorid, sizecolorid)) &&
            (identical(other.barcodeid, barcodeid) ||
                const DeepCollectionEquality()
                    .equals(other.barcodeid, barcodeid)) &&
            (identical(other.sizetype, sizetype) ||
                const DeepCollectionEquality()
                    .equals(other.sizetype, sizetype)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discountedprice, discountedprice) ||
                const DeepCollectionEquality()
                    .equals(other.discountedprice, discountedprice)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.listimages, listimages) ||
                const DeepCollectionEquality()
                    .equals(other.listimages, listimages)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.inventoryunits, inventoryunits) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryunits, inventoryunits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sizecolorid) ^
      const DeepCollectionEquality().hash(barcodeid) ^
      const DeepCollectionEquality().hash(sizetype) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discountedprice) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(listimages) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(inventoryunits);

  @JsonKey(ignore: true)
  @override
  _$SizeAndColorDataCopyWith<_SizeAndColorData> get copyWith =>
      __$SizeAndColorDataCopyWithImpl<_SizeAndColorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SizeAndColorDataToJson(this);
  }
}

abstract class _SizeAndColorData implements SizeAndColorData {
  factory _SizeAndColorData(
          {@JsonKey(name: 'sizecolorid') String sizecolorid,
          @JsonKey(name: 'barcodeid') String barcodeid,
          @JsonKey(name: 'sizetype') String sizetype,
          @JsonKey(name: 'size') String size,
          @JsonKey(name: 'color') String color,
          @JsonKey(name: 'price') double price,
          @JsonKey(name: 'discountedprice') double discountedprice,
          @JsonKey(name: 'tileimage') String tileimage,
          @JsonKey(name: 'listimages') List<String> listimages,
          @JsonKey(name: 'unit') int unit,
          @JsonKey(name: 'inventoryunits') int inventoryunits}) =
      _$_SizeAndColorData;

  factory _SizeAndColorData.fromJson(Map<String, dynamic> json) =
      _$_SizeAndColorData.fromJson;

  @override
  @JsonKey(name: 'sizecolorid')
  String get sizecolorid;
  @override
  @JsonKey(name: 'barcodeid')
  String get barcodeid;
  @override
  @JsonKey(name: 'sizetype')
  String get sizetype;
  @override
  @JsonKey(name: 'size')
  String get size;
  @override
  @JsonKey(name: 'color')
  String get color;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'discountedprice')
  double get discountedprice;
  @override
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @override
  @JsonKey(name: 'listimages')
  List<String> get listimages;
  @override
  @JsonKey(name: 'unit')
  int get unit;
  @override
  @JsonKey(name: 'inventoryunits')
  int get inventoryunits;
  @override
  @JsonKey(ignore: true)
  _$SizeAndColorDataCopyWith<_SizeAndColorData> get copyWith;
}

CustomPackageData _$CustomPackageDataFromJson(Map<String, dynamic> json) {
  return _CustomPackageData.fromJson(json);
}

/// @nodoc
class _$CustomPackageDataTearOff {
  const _$CustomPackageDataTearOff();

// ignore: unused_element
  _CustomPackageData call(
      {@JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') int unit}) {
    return _CustomPackageData(
      productid: productid,
      title: title,
      unit: unit,
    );
  }

// ignore: unused_element
  CustomPackageData fromJson(Map<String, Object> json) {
    return CustomPackageData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CustomPackageData = _$CustomPackageDataTearOff();

/// @nodoc
mixin _$CustomPackageData {
  @JsonKey(name: 'productid')
  String get productid;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'unit')
  int get unit;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CustomPackageDataCopyWith<CustomPackageData> get copyWith;
}

/// @nodoc
abstract class $CustomPackageDataCopyWith<$Res> {
  factory $CustomPackageDataCopyWith(
          CustomPackageData value, $Res Function(CustomPackageData) then) =
      _$CustomPackageDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') int unit});
}

/// @nodoc
class _$CustomPackageDataCopyWithImpl<$Res>
    implements $CustomPackageDataCopyWith<$Res> {
  _$CustomPackageDataCopyWithImpl(this._value, this._then);

  final CustomPackageData _value;
  // ignore: unused_field
  final $Res Function(CustomPackageData) _then;

  @override
  $Res call({
    Object productid = freezed,
    Object title = freezed,
    Object unit = freezed,
  }) {
    return _then(_value.copyWith(
      productid: productid == freezed ? _value.productid : productid as String,
      title: title == freezed ? _value.title : title as String,
      unit: unit == freezed ? _value.unit : unit as int,
    ));
  }
}

/// @nodoc
abstract class _$CustomPackageDataCopyWith<$Res>
    implements $CustomPackageDataCopyWith<$Res> {
  factory _$CustomPackageDataCopyWith(
          _CustomPackageData value, $Res Function(_CustomPackageData) then) =
      __$CustomPackageDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') int unit});
}

/// @nodoc
class __$CustomPackageDataCopyWithImpl<$Res>
    extends _$CustomPackageDataCopyWithImpl<$Res>
    implements _$CustomPackageDataCopyWith<$Res> {
  __$CustomPackageDataCopyWithImpl(
      _CustomPackageData _value, $Res Function(_CustomPackageData) _then)
      : super(_value, (v) => _then(v as _CustomPackageData));

  @override
  _CustomPackageData get _value => super._value as _CustomPackageData;

  @override
  $Res call({
    Object productid = freezed,
    Object title = freezed,
    Object unit = freezed,
  }) {
    return _then(_CustomPackageData(
      productid: productid == freezed ? _value.productid : productid as String,
      title: title == freezed ? _value.title : title as String,
      unit: unit == freezed ? _value.unit : unit as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CustomPackageData implements _CustomPackageData {
  _$_CustomPackageData(
      {@JsonKey(name: 'productid') this.productid,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'unit') this.unit});

  factory _$_CustomPackageData.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomPackageDataFromJson(json);

  @override
  @JsonKey(name: 'productid')
  final String productid;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'unit')
  final int unit;

  @override
  String toString() {
    return 'CustomPackageData(productid: $productid, title: $title, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomPackageData &&
            (identical(other.productid, productid) ||
                const DeepCollectionEquality()
                    .equals(other.productid, productid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(unit);

  @JsonKey(ignore: true)
  @override
  _$CustomPackageDataCopyWith<_CustomPackageData> get copyWith =>
      __$CustomPackageDataCopyWithImpl<_CustomPackageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomPackageDataToJson(this);
  }
}

abstract class _CustomPackageData implements CustomPackageData {
  factory _CustomPackageData(
      {@JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') int unit}) = _$_CustomPackageData;

  factory _CustomPackageData.fromJson(Map<String, dynamic> json) =
      _$_CustomPackageData.fromJson;

  @override
  @JsonKey(name: 'productid')
  String get productid;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'unit')
  int get unit;
  @override
  @JsonKey(ignore: true)
  _$CustomPackageDataCopyWith<_CustomPackageData> get copyWith;
}

dynaproperty _$dynapropertyFromJson(Map<String, dynamic> json) {
  return _dynaproperty.fromJson(json);
}

/// @nodoc
class _$dynapropertyTearOff {
  const _$dynapropertyTearOff();

// ignore: unused_element
  _dynaproperty call(
      {@JsonKey(name: 'propertyname') String propertyname,
      @JsonKey(name: 'values') List<String> values}) {
    return _dynaproperty(
      propertyname: propertyname,
      values: values,
    );
  }

// ignore: unused_element
  dynaproperty fromJson(Map<String, Object> json) {
    return dynaproperty.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $dynaproperty = _$dynapropertyTearOff();

/// @nodoc
mixin _$dynaproperty {
  @JsonKey(name: 'propertyname')
  String get propertyname;
  @JsonKey(name: 'values')
  List<String> get values;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $dynapropertyCopyWith<dynaproperty> get copyWith;
}

/// @nodoc
abstract class $dynapropertyCopyWith<$Res> {
  factory $dynapropertyCopyWith(
          dynaproperty value, $Res Function(dynaproperty) then) =
      _$dynapropertyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'propertyname') String propertyname,
      @JsonKey(name: 'values') List<String> values});
}

/// @nodoc
class _$dynapropertyCopyWithImpl<$Res> implements $dynapropertyCopyWith<$Res> {
  _$dynapropertyCopyWithImpl(this._value, this._then);

  final dynaproperty _value;
  // ignore: unused_field
  final $Res Function(dynaproperty) _then;

  @override
  $Res call({
    Object propertyname = freezed,
    Object values = freezed,
  }) {
    return _then(_value.copyWith(
      propertyname: propertyname == freezed
          ? _value.propertyname
          : propertyname as String,
      values: values == freezed ? _value.values : values as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$dynapropertyCopyWith<$Res>
    implements $dynapropertyCopyWith<$Res> {
  factory _$dynapropertyCopyWith(
          _dynaproperty value, $Res Function(_dynaproperty) then) =
      __$dynapropertyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'propertyname') String propertyname,
      @JsonKey(name: 'values') List<String> values});
}

/// @nodoc
class __$dynapropertyCopyWithImpl<$Res> extends _$dynapropertyCopyWithImpl<$Res>
    implements _$dynapropertyCopyWith<$Res> {
  __$dynapropertyCopyWithImpl(
      _dynaproperty _value, $Res Function(_dynaproperty) _then)
      : super(_value, (v) => _then(v as _dynaproperty));

  @override
  _dynaproperty get _value => super._value as _dynaproperty;

  @override
  $Res call({
    Object propertyname = freezed,
    Object values = freezed,
  }) {
    return _then(_dynaproperty(
      propertyname: propertyname == freezed
          ? _value.propertyname
          : propertyname as String,
      values: values == freezed ? _value.values : values as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_dynaproperty implements _dynaproperty {
  _$_dynaproperty(
      {@JsonKey(name: 'propertyname') this.propertyname,
      @JsonKey(name: 'values') this.values});

  factory _$_dynaproperty.fromJson(Map<String, dynamic> json) =>
      _$_$_dynapropertyFromJson(json);

  @override
  @JsonKey(name: 'propertyname')
  final String propertyname;
  @override
  @JsonKey(name: 'values')
  final List<String> values;

  @override
  String toString() {
    return 'dynaproperty(propertyname: $propertyname, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _dynaproperty &&
            (identical(other.propertyname, propertyname) ||
                const DeepCollectionEquality()
                    .equals(other.propertyname, propertyname)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(propertyname) ^
      const DeepCollectionEquality().hash(values);

  @JsonKey(ignore: true)
  @override
  _$dynapropertyCopyWith<_dynaproperty> get copyWith =>
      __$dynapropertyCopyWithImpl<_dynaproperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_dynapropertyToJson(this);
  }
}

abstract class _dynaproperty implements dynaproperty {
  factory _dynaproperty(
      {@JsonKey(name: 'propertyname') String propertyname,
      @JsonKey(name: 'values') List<String> values}) = _$_dynaproperty;

  factory _dynaproperty.fromJson(Map<String, dynamic> json) =
      _$_dynaproperty.fromJson;

  @override
  @JsonKey(name: 'propertyname')
  String get propertyname;
  @override
  @JsonKey(name: 'values')
  List<String> get values;
  @override
  @JsonKey(ignore: true)
  _$dynapropertyCopyWith<_dynaproperty> get copyWith;
}

PetData _$PetDataFromJson(Map<String, dynamic> json) {
  return _PetData.fromJson(json);
}

/// @nodoc
class _$PetDataTearOff {
  const _$PetDataTearOff();

// ignore: unused_element
  _PetData call(
      {@JsonKey(name: 'animaltype') String animaltype,
      @JsonKey(name: 'age') int age,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'petname') String petname,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'imagelist') List<String> imagelist,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
      @JsonKey(name: 'breed') String breed,
      @JsonKey(name: 'vaccinated') bool vaccinated,
      @JsonKey(name: 'ismilking') bool ismilking,
      @JsonKey(name: 'milkqty') int milkqty,
      @JsonKey(name: 'price') int price}) {
    return _PetData(
      animaltype: animaltype,
      age: age,
      latitude: latitude,
      longitude: longitude,
      petname: petname,
      gender: gender,
      tileimage: tileimage,
      imagelist: imagelist,
      title: title,
      description: description,
      listingownertype: listingownertype,
      contactdetails: contactdetails,
      breed: breed,
      vaccinated: vaccinated,
      ismilking: ismilking,
      milkqty: milkqty,
      price: price,
    );
  }

// ignore: unused_element
  PetData fromJson(Map<String, Object> json) {
    return PetData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetData = _$PetDataTearOff();

/// @nodoc
mixin _$PetData {
  @JsonKey(name: 'animaltype')
  String get animaltype;
  @JsonKey(name: 'age')
  int get age;
  @JsonKey(name: 'latitude')
  double get latitude;
  @JsonKey(name: 'longitude')
  double get longitude;
  @JsonKey(name: 'petname')
  String get petname;
  @JsonKey(name: 'gender')
  String get gender;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(name: 'imagelist')
  List<String> get imagelist;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'listingownertype')
  String get listingownertype;
  @JsonKey(name: 'contactdetails')
  ContactDetails get contactdetails;
  @JsonKey(name: 'breed')
  String get breed;
  @JsonKey(name: 'vaccinated')
  bool get vaccinated;
  @JsonKey(name: 'ismilking')
  bool get ismilking;
  @JsonKey(name: 'milkqty')
  int get milkqty;
  @JsonKey(name: 'price')
  int get price;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PetDataCopyWith<PetData> get copyWith;
}

/// @nodoc
abstract class $PetDataCopyWith<$Res> {
  factory $PetDataCopyWith(PetData value, $Res Function(PetData) then) =
      _$PetDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'animaltype') String animaltype,
      @JsonKey(name: 'age') int age,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'petname') String petname,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'imagelist') List<String> imagelist,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
      @JsonKey(name: 'breed') String breed,
      @JsonKey(name: 'vaccinated') bool vaccinated,
      @JsonKey(name: 'ismilking') bool ismilking,
      @JsonKey(name: 'milkqty') int milkqty,
      @JsonKey(name: 'price') int price});
}

/// @nodoc
class _$PetDataCopyWithImpl<$Res> implements $PetDataCopyWith<$Res> {
  _$PetDataCopyWithImpl(this._value, this._then);

  final PetData _value;
  // ignore: unused_field
  final $Res Function(PetData) _then;

  @override
  $Res call({
    Object animaltype = freezed,
    Object age = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object petname = freezed,
    Object gender = freezed,
    Object tileimage = freezed,
    Object imagelist = freezed,
    Object title = freezed,
    Object description = freezed,
    Object listingownertype = freezed,
    Object contactdetails = freezed,
    Object breed = freezed,
    Object vaccinated = freezed,
    Object ismilking = freezed,
    Object milkqty = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      animaltype:
          animaltype == freezed ? _value.animaltype : animaltype as String,
      age: age == freezed ? _value.age : age as int,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      petname: petname == freezed ? _value.petname : petname as String,
      gender: gender == freezed ? _value.gender : gender as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      imagelist:
          imagelist == freezed ? _value.imagelist : imagelist as List<String>,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      listingownertype: listingownertype == freezed
          ? _value.listingownertype
          : listingownertype as String,
      contactdetails: contactdetails == freezed
          ? _value.contactdetails
          : contactdetails as ContactDetails,
      breed: breed == freezed ? _value.breed : breed as String,
      vaccinated:
          vaccinated == freezed ? _value.vaccinated : vaccinated as bool,
      ismilking: ismilking == freezed ? _value.ismilking : ismilking as bool,
      milkqty: milkqty == freezed ? _value.milkqty : milkqty as int,
      price: price == freezed ? _value.price : price as int,
    ));
  }
}

/// @nodoc
abstract class _$PetDataCopyWith<$Res> implements $PetDataCopyWith<$Res> {
  factory _$PetDataCopyWith(_PetData value, $Res Function(_PetData) then) =
      __$PetDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'animaltype') String animaltype,
      @JsonKey(name: 'age') int age,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'petname') String petname,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'imagelist') List<String> imagelist,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
      @JsonKey(name: 'breed') String breed,
      @JsonKey(name: 'vaccinated') bool vaccinated,
      @JsonKey(name: 'ismilking') bool ismilking,
      @JsonKey(name: 'milkqty') int milkqty,
      @JsonKey(name: 'price') int price});
}

/// @nodoc
class __$PetDataCopyWithImpl<$Res> extends _$PetDataCopyWithImpl<$Res>
    implements _$PetDataCopyWith<$Res> {
  __$PetDataCopyWithImpl(_PetData _value, $Res Function(_PetData) _then)
      : super(_value, (v) => _then(v as _PetData));

  @override
  _PetData get _value => super._value as _PetData;

  @override
  $Res call({
    Object animaltype = freezed,
    Object age = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object petname = freezed,
    Object gender = freezed,
    Object tileimage = freezed,
    Object imagelist = freezed,
    Object title = freezed,
    Object description = freezed,
    Object listingownertype = freezed,
    Object contactdetails = freezed,
    Object breed = freezed,
    Object vaccinated = freezed,
    Object ismilking = freezed,
    Object milkqty = freezed,
    Object price = freezed,
  }) {
    return _then(_PetData(
      animaltype:
          animaltype == freezed ? _value.animaltype : animaltype as String,
      age: age == freezed ? _value.age : age as int,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      petname: petname == freezed ? _value.petname : petname as String,
      gender: gender == freezed ? _value.gender : gender as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      imagelist:
          imagelist == freezed ? _value.imagelist : imagelist as List<String>,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      listingownertype: listingownertype == freezed
          ? _value.listingownertype
          : listingownertype as String,
      contactdetails: contactdetails == freezed
          ? _value.contactdetails
          : contactdetails as ContactDetails,
      breed: breed == freezed ? _value.breed : breed as String,
      vaccinated:
          vaccinated == freezed ? _value.vaccinated : vaccinated as bool,
      ismilking: ismilking == freezed ? _value.ismilking : ismilking as bool,
      milkqty: milkqty == freezed ? _value.milkqty : milkqty as int,
      price: price == freezed ? _value.price : price as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetData implements _PetData {
  _$_PetData(
      {@JsonKey(name: 'animaltype') this.animaltype,
      @JsonKey(name: 'age') this.age,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'petname') this.petname,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'tileimage') this.tileimage,
      @JsonKey(name: 'imagelist') this.imagelist,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'listingownertype') this.listingownertype,
      @JsonKey(name: 'contactdetails') this.contactdetails,
      @JsonKey(name: 'breed') this.breed,
      @JsonKey(name: 'vaccinated') this.vaccinated,
      @JsonKey(name: 'ismilking') this.ismilking,
      @JsonKey(name: 'milkqty') this.milkqty,
      @JsonKey(name: 'price') this.price});

  factory _$_PetData.fromJson(Map<String, dynamic> json) =>
      _$_$_PetDataFromJson(json);

  @override
  @JsonKey(name: 'animaltype')
  final String animaltype;
  @override
  @JsonKey(name: 'age')
  final int age;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;
  @override
  @JsonKey(name: 'petname')
  final String petname;
  @override
  @JsonKey(name: 'gender')
  final String gender;
  @override
  @JsonKey(name: 'tileimage')
  final String tileimage;
  @override
  @JsonKey(name: 'imagelist')
  final List<String> imagelist;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'listingownertype')
  final String listingownertype;
  @override
  @JsonKey(name: 'contactdetails')
  final ContactDetails contactdetails;
  @override
  @JsonKey(name: 'breed')
  final String breed;
  @override
  @JsonKey(name: 'vaccinated')
  final bool vaccinated;
  @override
  @JsonKey(name: 'ismilking')
  final bool ismilking;
  @override
  @JsonKey(name: 'milkqty')
  final int milkqty;
  @override
  @JsonKey(name: 'price')
  final int price;

  @override
  String toString() {
    return 'PetData(animaltype: $animaltype, age: $age, latitude: $latitude, longitude: $longitude, petname: $petname, gender: $gender, tileimage: $tileimage, imagelist: $imagelist, title: $title, description: $description, listingownertype: $listingownertype, contactdetails: $contactdetails, breed: $breed, vaccinated: $vaccinated, ismilking: $ismilking, milkqty: $milkqty, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetData &&
            (identical(other.animaltype, animaltype) ||
                const DeepCollectionEquality()
                    .equals(other.animaltype, animaltype)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.petname, petname) ||
                const DeepCollectionEquality()
                    .equals(other.petname, petname)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.imagelist, imagelist) ||
                const DeepCollectionEquality()
                    .equals(other.imagelist, imagelist)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.listingownertype, listingownertype) ||
                const DeepCollectionEquality()
                    .equals(other.listingownertype, listingownertype)) &&
            (identical(other.contactdetails, contactdetails) ||
                const DeepCollectionEquality()
                    .equals(other.contactdetails, contactdetails)) &&
            (identical(other.breed, breed) ||
                const DeepCollectionEquality().equals(other.breed, breed)) &&
            (identical(other.vaccinated, vaccinated) ||
                const DeepCollectionEquality()
                    .equals(other.vaccinated, vaccinated)) &&
            (identical(other.ismilking, ismilking) ||
                const DeepCollectionEquality()
                    .equals(other.ismilking, ismilking)) &&
            (identical(other.milkqty, milkqty) ||
                const DeepCollectionEquality()
                    .equals(other.milkqty, milkqty)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(animaltype) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(petname) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(imagelist) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(listingownertype) ^
      const DeepCollectionEquality().hash(contactdetails) ^
      const DeepCollectionEquality().hash(breed) ^
      const DeepCollectionEquality().hash(vaccinated) ^
      const DeepCollectionEquality().hash(ismilking) ^
      const DeepCollectionEquality().hash(milkqty) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$PetDataCopyWith<_PetData> get copyWith =>
      __$PetDataCopyWithImpl<_PetData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetDataToJson(this);
  }
}

abstract class _PetData implements PetData {
  factory _PetData(
      {@JsonKey(name: 'animaltype') String animaltype,
      @JsonKey(name: 'age') int age,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'petname') String petname,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'imagelist') List<String> imagelist,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
      @JsonKey(name: 'breed') String breed,
      @JsonKey(name: 'vaccinated') bool vaccinated,
      @JsonKey(name: 'ismilking') bool ismilking,
      @JsonKey(name: 'milkqty') int milkqty,
      @JsonKey(name: 'price') int price}) = _$_PetData;

  factory _PetData.fromJson(Map<String, dynamic> json) = _$_PetData.fromJson;

  @override
  @JsonKey(name: 'animaltype')
  String get animaltype;
  @override
  @JsonKey(name: 'age')
  int get age;
  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  @JsonKey(name: 'petname')
  String get petname;
  @override
  @JsonKey(name: 'gender')
  String get gender;
  @override
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @override
  @JsonKey(name: 'imagelist')
  List<String> get imagelist;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'listingownertype')
  String get listingownertype;
  @override
  @JsonKey(name: 'contactdetails')
  ContactDetails get contactdetails;
  @override
  @JsonKey(name: 'breed')
  String get breed;
  @override
  @JsonKey(name: 'vaccinated')
  bool get vaccinated;
  @override
  @JsonKey(name: 'ismilking')
  bool get ismilking;
  @override
  @JsonKey(name: 'milkqty')
  int get milkqty;
  @override
  @JsonKey(name: 'price')
  int get price;
  @override
  @JsonKey(ignore: true)
  _$PetDataCopyWith<_PetData> get copyWith;
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

RealEstateData _$RealEstateDataFromJson(Map<String, dynamic> json) {
  return _RealEstateData.fromJson(json);
}

/// @nodoc
class _$RealEstateDataTearOff {
  const _$RealEstateDataTearOff();

// ignore: unused_element
  _RealEstateData call(
      {@JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'usagetype')
          String usagetype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist', defaultValue: const [])
          List<String> imagelist,
      @JsonKey(name: 'constructionstatus')
          String constructionstatus,
      @JsonKey(name: 'saletype')
          String saletype,
      @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountstartdate,
      @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp, nullable: true)
          DateTime discountenddate,
      @JsonKey(name: 'occupancytype', defaultValue: '')
          String occupancytype,
      @JsonKey(name: 'tenantgenderfamilypreference', defaultValue: const [])
          List<String> tenantgenderfamilypreference,
      @JsonKey(name: 'ownershiptype')
          String ownershiptype,
      @JsonKey(name: 'sqfeetarea')
          int sqfeetarea,
      @JsonKey(name: 'numrooms')
          int numrooms,
      @JsonKey(name: 'numbath')
          int numbath,
      @JsonKey(name: 'furnishedstatus', defaultValue: 'N/A')
          String furnishedstatus,
      @JsonKey(name: 'haspowerbackup', defaultValue: false)
          bool haspowerbackup,
      @JsonKey(name: 'hasclubhouse')
          bool hasclubhouse,
      @JsonKey(name: 'hassecurity')
          bool hassecurity,
      @JsonKey(name: 'has24hrwater')
          bool has24hrwater,
      @JsonKey(name: 'hasgaspipeline', defaultValue: false)
          bool hasgaspipeline,
      @JsonKey(name: 'hasparking')
          bool hasparking,
      @JsonKey(name: 'hasgreenarea')
          bool hasgreenarea,
      @JsonKey(name: 'hasinternet', defaultValue: false)
          bool hasinternet,
      @JsonKey(name: 'hasairconditioner')
          bool hasairconditioner,
      @JsonKey(name: 'hascooler')
          bool hascooler,
      @JsonKey(name: 'hasfridge')
          bool hasfridge,
      @JsonKey(name: 'hastv')
          bool hastv,
      @JsonKey(name: 'haslift')
          bool haslift,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'contactdetails')
          ContactDetails contactdetails}) {
    return _RealEstateData(
      servicetype: servicetype,
      usagetype: usagetype,
      propertytype: propertytype,
      tileimage: tileimage,
      imagelist: imagelist,
      constructionstatus: constructionstatus,
      saletype: saletype,
      discountstartdate: discountstartdate,
      discountenddate: discountenddate,
      occupancytype: occupancytype,
      tenantgenderfamilypreference: tenantgenderfamilypreference,
      ownershiptype: ownershiptype,
      sqfeetarea: sqfeetarea,
      numrooms: numrooms,
      numbath: numbath,
      furnishedstatus: furnishedstatus,
      haspowerbackup: haspowerbackup,
      hasclubhouse: hasclubhouse,
      hassecurity: hassecurity,
      has24hrwater: has24hrwater,
      hasgaspipeline: hasgaspipeline,
      hasparking: hasparking,
      hasgreenarea: hasgreenarea,
      hasinternet: hasinternet,
      hasairconditioner: hasairconditioner,
      hascooler: hascooler,
      hasfridge: hasfridge,
      hastv: hastv,
      haslift: haslift,
      creationdate: creationdate,
      title: title,
      description: description,
      listingownertype: listingownertype,
      price: price,
      contactdetails: contactdetails,
    );
  }

// ignore: unused_element
  RealEstateData fromJson(Map<String, Object> json) {
    return RealEstateData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RealEstateData = _$RealEstateDataTearOff();

/// @nodoc
mixin _$RealEstateData {
  @JsonKey(name: 'servicetype')
  String get servicetype;
  @JsonKey(name: 'usagetype')
  String get usagetype;
  @JsonKey(name: 'propertytype')
  String get propertytype;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(name: 'imagelist', defaultValue: const [])
  List<String> get imagelist;
  @JsonKey(name: 'constructionstatus')
  String get constructionstatus;
  @JsonKey(name: 'saletype')
  String get saletype;
  @JsonKey(
      name: 'discountstartdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get discountstartdate;
  @JsonKey(
      name: 'discountenddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp,
      nullable: true)
  DateTime get discountenddate;
  @JsonKey(name: 'occupancytype', defaultValue: '')
  String get occupancytype;
  @JsonKey(name: 'tenantgenderfamilypreference', defaultValue: const [])
  List<String> get tenantgenderfamilypreference;
  @JsonKey(name: 'ownershiptype')
  String get ownershiptype;
  @JsonKey(name: 'sqfeetarea')
  int get sqfeetarea;
  @JsonKey(name: 'numrooms')
  int get numrooms;
  @JsonKey(name: 'numbath')
  int get numbath;
  @JsonKey(name: 'furnishedstatus', defaultValue: 'N/A')
  String get furnishedstatus;
  @JsonKey(name: 'haspowerbackup', defaultValue: false)
  bool get haspowerbackup;
  @JsonKey(name: 'hasclubhouse')
  bool get hasclubhouse;
  @JsonKey(name: 'hassecurity')
  bool get hassecurity;
  @JsonKey(name: 'has24hrwater')
  bool get has24hrwater;
  @JsonKey(name: 'hasgaspipeline', defaultValue: false)
  bool get hasgaspipeline;
  @JsonKey(name: 'hasparking')
  bool get hasparking;
  @JsonKey(name: 'hasgreenarea')
  bool get hasgreenarea;
  @JsonKey(name: 'hasinternet', defaultValue: false)
  bool get hasinternet;
  @JsonKey(name: 'hasairconditioner')
  bool get hasairconditioner;
  @JsonKey(name: 'hascooler')
  bool get hascooler;
  @JsonKey(name: 'hasfridge')
  bool get hasfridge;
  @JsonKey(name: 'hastv')
  bool get hastv;
  @JsonKey(name: 'haslift')
  bool get haslift;
  @JsonKey(
      name: 'creationdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get creationdate;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'listingownertype')
  String get listingownertype;
  @JsonKey(name: 'price')
  int get price;
  @JsonKey(name: 'contactdetails')
  ContactDetails get contactdetails;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RealEstateDataCopyWith<RealEstateData> get copyWith;
}

/// @nodoc
abstract class $RealEstateDataCopyWith<$Res> {
  factory $RealEstateDataCopyWith(
          RealEstateData value, $Res Function(RealEstateData) then) =
      _$RealEstateDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'usagetype')
          String usagetype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist', defaultValue: const [])
          List<String> imagelist,
      @JsonKey(name: 'constructionstatus')
          String constructionstatus,
      @JsonKey(name: 'saletype')
          String saletype,
      @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountstartdate,
      @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp, nullable: true)
          DateTime discountenddate,
      @JsonKey(name: 'occupancytype', defaultValue: '')
          String occupancytype,
      @JsonKey(name: 'tenantgenderfamilypreference', defaultValue: const [])
          List<String> tenantgenderfamilypreference,
      @JsonKey(name: 'ownershiptype')
          String ownershiptype,
      @JsonKey(name: 'sqfeetarea')
          int sqfeetarea,
      @JsonKey(name: 'numrooms')
          int numrooms,
      @JsonKey(name: 'numbath')
          int numbath,
      @JsonKey(name: 'furnishedstatus', defaultValue: 'N/A')
          String furnishedstatus,
      @JsonKey(name: 'haspowerbackup', defaultValue: false)
          bool haspowerbackup,
      @JsonKey(name: 'hasclubhouse')
          bool hasclubhouse,
      @JsonKey(name: 'hassecurity')
          bool hassecurity,
      @JsonKey(name: 'has24hrwater')
          bool has24hrwater,
      @JsonKey(name: 'hasgaspipeline', defaultValue: false)
          bool hasgaspipeline,
      @JsonKey(name: 'hasparking')
          bool hasparking,
      @JsonKey(name: 'hasgreenarea')
          bool hasgreenarea,
      @JsonKey(name: 'hasinternet', defaultValue: false)
          bool hasinternet,
      @JsonKey(name: 'hasairconditioner')
          bool hasairconditioner,
      @JsonKey(name: 'hascooler')
          bool hascooler,
      @JsonKey(name: 'hasfridge')
          bool hasfridge,
      @JsonKey(name: 'hastv')
          bool hastv,
      @JsonKey(name: 'haslift')
          bool haslift,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'contactdetails')
          ContactDetails contactdetails});
}

/// @nodoc
class _$RealEstateDataCopyWithImpl<$Res>
    implements $RealEstateDataCopyWith<$Res> {
  _$RealEstateDataCopyWithImpl(this._value, this._then);

  final RealEstateData _value;
  // ignore: unused_field
  final $Res Function(RealEstateData) _then;

  @override
  $Res call({
    Object servicetype = freezed,
    Object usagetype = freezed,
    Object propertytype = freezed,
    Object tileimage = freezed,
    Object imagelist = freezed,
    Object constructionstatus = freezed,
    Object saletype = freezed,
    Object discountstartdate = freezed,
    Object discountenddate = freezed,
    Object occupancytype = freezed,
    Object tenantgenderfamilypreference = freezed,
    Object ownershiptype = freezed,
    Object sqfeetarea = freezed,
    Object numrooms = freezed,
    Object numbath = freezed,
    Object furnishedstatus = freezed,
    Object haspowerbackup = freezed,
    Object hasclubhouse = freezed,
    Object hassecurity = freezed,
    Object has24hrwater = freezed,
    Object hasgaspipeline = freezed,
    Object hasparking = freezed,
    Object hasgreenarea = freezed,
    Object hasinternet = freezed,
    Object hasairconditioner = freezed,
    Object hascooler = freezed,
    Object hasfridge = freezed,
    Object hastv = freezed,
    Object haslift = freezed,
    Object creationdate = freezed,
    Object title = freezed,
    Object description = freezed,
    Object listingownertype = freezed,
    Object price = freezed,
    Object contactdetails = freezed,
  }) {
    return _then(_value.copyWith(
      servicetype:
          servicetype == freezed ? _value.servicetype : servicetype as String,
      usagetype: usagetype == freezed ? _value.usagetype : usagetype as String,
      propertytype: propertytype == freezed
          ? _value.propertytype
          : propertytype as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      imagelist:
          imagelist == freezed ? _value.imagelist : imagelist as List<String>,
      constructionstatus: constructionstatus == freezed
          ? _value.constructionstatus
          : constructionstatus as String,
      saletype: saletype == freezed ? _value.saletype : saletype as String,
      discountstartdate: discountstartdate == freezed
          ? _value.discountstartdate
          : discountstartdate as DateTime,
      discountenddate: discountenddate == freezed
          ? _value.discountenddate
          : discountenddate as DateTime,
      occupancytype: occupancytype == freezed
          ? _value.occupancytype
          : occupancytype as String,
      tenantgenderfamilypreference: tenantgenderfamilypreference == freezed
          ? _value.tenantgenderfamilypreference
          : tenantgenderfamilypreference as List<String>,
      ownershiptype: ownershiptype == freezed
          ? _value.ownershiptype
          : ownershiptype as String,
      sqfeetarea: sqfeetarea == freezed ? _value.sqfeetarea : sqfeetarea as int,
      numrooms: numrooms == freezed ? _value.numrooms : numrooms as int,
      numbath: numbath == freezed ? _value.numbath : numbath as int,
      furnishedstatus: furnishedstatus == freezed
          ? _value.furnishedstatus
          : furnishedstatus as String,
      haspowerbackup: haspowerbackup == freezed
          ? _value.haspowerbackup
          : haspowerbackup as bool,
      hasclubhouse:
          hasclubhouse == freezed ? _value.hasclubhouse : hasclubhouse as bool,
      hassecurity:
          hassecurity == freezed ? _value.hassecurity : hassecurity as bool,
      has24hrwater:
          has24hrwater == freezed ? _value.has24hrwater : has24hrwater as bool,
      hasgaspipeline: hasgaspipeline == freezed
          ? _value.hasgaspipeline
          : hasgaspipeline as bool,
      hasparking:
          hasparking == freezed ? _value.hasparking : hasparking as bool,
      hasgreenarea:
          hasgreenarea == freezed ? _value.hasgreenarea : hasgreenarea as bool,
      hasinternet:
          hasinternet == freezed ? _value.hasinternet : hasinternet as bool,
      hasairconditioner: hasairconditioner == freezed
          ? _value.hasairconditioner
          : hasairconditioner as bool,
      hascooler: hascooler == freezed ? _value.hascooler : hascooler as bool,
      hasfridge: hasfridge == freezed ? _value.hasfridge : hasfridge as bool,
      hastv: hastv == freezed ? _value.hastv : hastv as bool,
      haslift: haslift == freezed ? _value.haslift : haslift as bool,
      creationdate: creationdate == freezed
          ? _value.creationdate
          : creationdate as DateTime,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      listingownertype: listingownertype == freezed
          ? _value.listingownertype
          : listingownertype as String,
      price: price == freezed ? _value.price : price as int,
      contactdetails: contactdetails == freezed
          ? _value.contactdetails
          : contactdetails as ContactDetails,
    ));
  }
}

/// @nodoc
abstract class _$RealEstateDataCopyWith<$Res>
    implements $RealEstateDataCopyWith<$Res> {
  factory _$RealEstateDataCopyWith(
          _RealEstateData value, $Res Function(_RealEstateData) then) =
      __$RealEstateDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'usagetype')
          String usagetype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist', defaultValue: const [])
          List<String> imagelist,
      @JsonKey(name: 'constructionstatus')
          String constructionstatus,
      @JsonKey(name: 'saletype')
          String saletype,
      @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountstartdate,
      @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp, nullable: true)
          DateTime discountenddate,
      @JsonKey(name: 'occupancytype', defaultValue: '')
          String occupancytype,
      @JsonKey(name: 'tenantgenderfamilypreference', defaultValue: const [])
          List<String> tenantgenderfamilypreference,
      @JsonKey(name: 'ownershiptype')
          String ownershiptype,
      @JsonKey(name: 'sqfeetarea')
          int sqfeetarea,
      @JsonKey(name: 'numrooms')
          int numrooms,
      @JsonKey(name: 'numbath')
          int numbath,
      @JsonKey(name: 'furnishedstatus', defaultValue: 'N/A')
          String furnishedstatus,
      @JsonKey(name: 'haspowerbackup', defaultValue: false)
          bool haspowerbackup,
      @JsonKey(name: 'hasclubhouse')
          bool hasclubhouse,
      @JsonKey(name: 'hassecurity')
          bool hassecurity,
      @JsonKey(name: 'has24hrwater')
          bool has24hrwater,
      @JsonKey(name: 'hasgaspipeline', defaultValue: false)
          bool hasgaspipeline,
      @JsonKey(name: 'hasparking')
          bool hasparking,
      @JsonKey(name: 'hasgreenarea')
          bool hasgreenarea,
      @JsonKey(name: 'hasinternet', defaultValue: false)
          bool hasinternet,
      @JsonKey(name: 'hasairconditioner')
          bool hasairconditioner,
      @JsonKey(name: 'hascooler')
          bool hascooler,
      @JsonKey(name: 'hasfridge')
          bool hasfridge,
      @JsonKey(name: 'hastv')
          bool hastv,
      @JsonKey(name: 'haslift')
          bool haslift,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'contactdetails')
          ContactDetails contactdetails});
}

/// @nodoc
class __$RealEstateDataCopyWithImpl<$Res>
    extends _$RealEstateDataCopyWithImpl<$Res>
    implements _$RealEstateDataCopyWith<$Res> {
  __$RealEstateDataCopyWithImpl(
      _RealEstateData _value, $Res Function(_RealEstateData) _then)
      : super(_value, (v) => _then(v as _RealEstateData));

  @override
  _RealEstateData get _value => super._value as _RealEstateData;

  @override
  $Res call({
    Object servicetype = freezed,
    Object usagetype = freezed,
    Object propertytype = freezed,
    Object tileimage = freezed,
    Object imagelist = freezed,
    Object constructionstatus = freezed,
    Object saletype = freezed,
    Object discountstartdate = freezed,
    Object discountenddate = freezed,
    Object occupancytype = freezed,
    Object tenantgenderfamilypreference = freezed,
    Object ownershiptype = freezed,
    Object sqfeetarea = freezed,
    Object numrooms = freezed,
    Object numbath = freezed,
    Object furnishedstatus = freezed,
    Object haspowerbackup = freezed,
    Object hasclubhouse = freezed,
    Object hassecurity = freezed,
    Object has24hrwater = freezed,
    Object hasgaspipeline = freezed,
    Object hasparking = freezed,
    Object hasgreenarea = freezed,
    Object hasinternet = freezed,
    Object hasairconditioner = freezed,
    Object hascooler = freezed,
    Object hasfridge = freezed,
    Object hastv = freezed,
    Object haslift = freezed,
    Object creationdate = freezed,
    Object title = freezed,
    Object description = freezed,
    Object listingownertype = freezed,
    Object price = freezed,
    Object contactdetails = freezed,
  }) {
    return _then(_RealEstateData(
      servicetype:
          servicetype == freezed ? _value.servicetype : servicetype as String,
      usagetype: usagetype == freezed ? _value.usagetype : usagetype as String,
      propertytype: propertytype == freezed
          ? _value.propertytype
          : propertytype as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      imagelist:
          imagelist == freezed ? _value.imagelist : imagelist as List<String>,
      constructionstatus: constructionstatus == freezed
          ? _value.constructionstatus
          : constructionstatus as String,
      saletype: saletype == freezed ? _value.saletype : saletype as String,
      discountstartdate: discountstartdate == freezed
          ? _value.discountstartdate
          : discountstartdate as DateTime,
      discountenddate: discountenddate == freezed
          ? _value.discountenddate
          : discountenddate as DateTime,
      occupancytype: occupancytype == freezed
          ? _value.occupancytype
          : occupancytype as String,
      tenantgenderfamilypreference: tenantgenderfamilypreference == freezed
          ? _value.tenantgenderfamilypreference
          : tenantgenderfamilypreference as List<String>,
      ownershiptype: ownershiptype == freezed
          ? _value.ownershiptype
          : ownershiptype as String,
      sqfeetarea: sqfeetarea == freezed ? _value.sqfeetarea : sqfeetarea as int,
      numrooms: numrooms == freezed ? _value.numrooms : numrooms as int,
      numbath: numbath == freezed ? _value.numbath : numbath as int,
      furnishedstatus: furnishedstatus == freezed
          ? _value.furnishedstatus
          : furnishedstatus as String,
      haspowerbackup: haspowerbackup == freezed
          ? _value.haspowerbackup
          : haspowerbackup as bool,
      hasclubhouse:
          hasclubhouse == freezed ? _value.hasclubhouse : hasclubhouse as bool,
      hassecurity:
          hassecurity == freezed ? _value.hassecurity : hassecurity as bool,
      has24hrwater:
          has24hrwater == freezed ? _value.has24hrwater : has24hrwater as bool,
      hasgaspipeline: hasgaspipeline == freezed
          ? _value.hasgaspipeline
          : hasgaspipeline as bool,
      hasparking:
          hasparking == freezed ? _value.hasparking : hasparking as bool,
      hasgreenarea:
          hasgreenarea == freezed ? _value.hasgreenarea : hasgreenarea as bool,
      hasinternet:
          hasinternet == freezed ? _value.hasinternet : hasinternet as bool,
      hasairconditioner: hasairconditioner == freezed
          ? _value.hasairconditioner
          : hasairconditioner as bool,
      hascooler: hascooler == freezed ? _value.hascooler : hascooler as bool,
      hasfridge: hasfridge == freezed ? _value.hasfridge : hasfridge as bool,
      hastv: hastv == freezed ? _value.hastv : hastv as bool,
      haslift: haslift == freezed ? _value.haslift : haslift as bool,
      creationdate: creationdate == freezed
          ? _value.creationdate
          : creationdate as DateTime,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      listingownertype: listingownertype == freezed
          ? _value.listingownertype
          : listingownertype as String,
      price: price == freezed ? _value.price : price as int,
      contactdetails: contactdetails == freezed
          ? _value.contactdetails
          : contactdetails as ContactDetails,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RealEstateData implements _RealEstateData {
  _$_RealEstateData(
      {@JsonKey(name: 'servicetype')
          this.servicetype,
      @JsonKey(name: 'usagetype')
          this.usagetype,
      @JsonKey(name: 'propertytype')
          this.propertytype,
      @JsonKey(name: 'tileimage')
          this.tileimage,
      @JsonKey(name: 'imagelist', defaultValue: const [])
          this.imagelist,
      @JsonKey(name: 'constructionstatus')
          this.constructionstatus,
      @JsonKey(name: 'saletype')
          this.saletype,
      @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.discountstartdate,
      @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp, nullable: true)
          this.discountenddate,
      @JsonKey(name: 'occupancytype', defaultValue: '')
          this.occupancytype,
      @JsonKey(name: 'tenantgenderfamilypreference', defaultValue: const [])
          this.tenantgenderfamilypreference,
      @JsonKey(name: 'ownershiptype')
          this.ownershiptype,
      @JsonKey(name: 'sqfeetarea')
          this.sqfeetarea,
      @JsonKey(name: 'numrooms')
          this.numrooms,
      @JsonKey(name: 'numbath')
          this.numbath,
      @JsonKey(name: 'furnishedstatus', defaultValue: 'N/A')
          this.furnishedstatus,
      @JsonKey(name: 'haspowerbackup', defaultValue: false)
          this.haspowerbackup,
      @JsonKey(name: 'hasclubhouse')
          this.hasclubhouse,
      @JsonKey(name: 'hassecurity')
          this.hassecurity,
      @JsonKey(name: 'has24hrwater')
          this.has24hrwater,
      @JsonKey(name: 'hasgaspipeline', defaultValue: false)
          this.hasgaspipeline,
      @JsonKey(name: 'hasparking')
          this.hasparking,
      @JsonKey(name: 'hasgreenarea')
          this.hasgreenarea,
      @JsonKey(name: 'hasinternet', defaultValue: false)
          this.hasinternet,
      @JsonKey(name: 'hasairconditioner')
          this.hasairconditioner,
      @JsonKey(name: 'hascooler')
          this.hascooler,
      @JsonKey(name: 'hasfridge')
          this.hasfridge,
      @JsonKey(name: 'hastv')
          this.hastv,
      @JsonKey(name: 'haslift')
          this.haslift,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.creationdate,
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'description')
          this.description,
      @JsonKey(name: 'listingownertype')
          this.listingownertype,
      @JsonKey(name: 'price')
          this.price,
      @JsonKey(name: 'contactdetails')
          this.contactdetails});

  factory _$_RealEstateData.fromJson(Map<String, dynamic> json) =>
      _$_$_RealEstateDataFromJson(json);

  @override
  @JsonKey(name: 'servicetype')
  final String servicetype;
  @override
  @JsonKey(name: 'usagetype')
  final String usagetype;
  @override
  @JsonKey(name: 'propertytype')
  final String propertytype;
  @override
  @JsonKey(name: 'tileimage')
  final String tileimage;
  @override
  @JsonKey(name: 'imagelist', defaultValue: const [])
  final List<String> imagelist;
  @override
  @JsonKey(name: 'constructionstatus')
  final String constructionstatus;
  @override
  @JsonKey(name: 'saletype')
  final String saletype;
  @override
  @JsonKey(
      name: 'discountstartdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime discountstartdate;
  @override
  @JsonKey(
      name: 'discountenddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp,
      nullable: true)
  final DateTime discountenddate;
  @override
  @JsonKey(name: 'occupancytype', defaultValue: '')
  final String occupancytype;
  @override
  @JsonKey(name: 'tenantgenderfamilypreference', defaultValue: const [])
  final List<String> tenantgenderfamilypreference;
  @override
  @JsonKey(name: 'ownershiptype')
  final String ownershiptype;
  @override
  @JsonKey(name: 'sqfeetarea')
  final int sqfeetarea;
  @override
  @JsonKey(name: 'numrooms')
  final int numrooms;
  @override
  @JsonKey(name: 'numbath')
  final int numbath;
  @override
  @JsonKey(name: 'furnishedstatus', defaultValue: 'N/A')
  final String furnishedstatus;
  @override
  @JsonKey(name: 'haspowerbackup', defaultValue: false)
  final bool haspowerbackup;
  @override
  @JsonKey(name: 'hasclubhouse')
  final bool hasclubhouse;
  @override
  @JsonKey(name: 'hassecurity')
  final bool hassecurity;
  @override
  @JsonKey(name: 'has24hrwater')
  final bool has24hrwater;
  @override
  @JsonKey(name: 'hasgaspipeline', defaultValue: false)
  final bool hasgaspipeline;
  @override
  @JsonKey(name: 'hasparking')
  final bool hasparking;
  @override
  @JsonKey(name: 'hasgreenarea')
  final bool hasgreenarea;
  @override
  @JsonKey(name: 'hasinternet', defaultValue: false)
  final bool hasinternet;
  @override
  @JsonKey(name: 'hasairconditioner')
  final bool hasairconditioner;
  @override
  @JsonKey(name: 'hascooler')
  final bool hascooler;
  @override
  @JsonKey(name: 'hasfridge')
  final bool hasfridge;
  @override
  @JsonKey(name: 'hastv')
  final bool hastv;
  @override
  @JsonKey(name: 'haslift')
  final bool haslift;
  @override
  @JsonKey(
      name: 'creationdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime creationdate;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'listingownertype')
  final String listingownertype;
  @override
  @JsonKey(name: 'price')
  final int price;
  @override
  @JsonKey(name: 'contactdetails')
  final ContactDetails contactdetails;

  @override
  String toString() {
    return 'RealEstateData(servicetype: $servicetype, usagetype: $usagetype, propertytype: $propertytype, tileimage: $tileimage, imagelist: $imagelist, constructionstatus: $constructionstatus, saletype: $saletype, discountstartdate: $discountstartdate, discountenddate: $discountenddate, occupancytype: $occupancytype, tenantgenderfamilypreference: $tenantgenderfamilypreference, ownershiptype: $ownershiptype, sqfeetarea: $sqfeetarea, numrooms: $numrooms, numbath: $numbath, furnishedstatus: $furnishedstatus, haspowerbackup: $haspowerbackup, hasclubhouse: $hasclubhouse, hassecurity: $hassecurity, has24hrwater: $has24hrwater, hasgaspipeline: $hasgaspipeline, hasparking: $hasparking, hasgreenarea: $hasgreenarea, hasinternet: $hasinternet, hasairconditioner: $hasairconditioner, hascooler: $hascooler, hasfridge: $hasfridge, hastv: $hastv, haslift: $haslift, creationdate: $creationdate, title: $title, description: $description, listingownertype: $listingownertype, price: $price, contactdetails: $contactdetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RealEstateData &&
            (identical(other.servicetype, servicetype) ||
                const DeepCollectionEquality()
                    .equals(other.servicetype, servicetype)) &&
            (identical(other.usagetype, usagetype) ||
                const DeepCollectionEquality()
                    .equals(other.usagetype, usagetype)) &&
            (identical(other.propertytype, propertytype) ||
                const DeepCollectionEquality()
                    .equals(other.propertytype, propertytype)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.imagelist, imagelist) ||
                const DeepCollectionEquality()
                    .equals(other.imagelist, imagelist)) &&
            (identical(other.constructionstatus, constructionstatus) ||
                const DeepCollectionEquality()
                    .equals(other.constructionstatus, constructionstatus)) &&
            (identical(other.saletype, saletype) ||
                const DeepCollectionEquality()
                    .equals(other.saletype, saletype)) &&
            (identical(other.discountstartdate, discountstartdate) ||
                const DeepCollectionEquality()
                    .equals(other.discountstartdate, discountstartdate)) &&
            (identical(other.discountenddate, discountenddate) ||
                const DeepCollectionEquality()
                    .equals(other.discountenddate, discountenddate)) &&
            (identical(other.occupancytype, occupancytype) ||
                const DeepCollectionEquality()
                    .equals(other.occupancytype, occupancytype)) &&
            (identical(other.tenantgenderfamilypreference, tenantgenderfamilypreference) ||
                const DeepCollectionEquality().equals(
                    other.tenantgenderfamilypreference,
                    tenantgenderfamilypreference)) &&
            (identical(other.ownershiptype, ownershiptype) ||
                const DeepCollectionEquality()
                    .equals(other.ownershiptype, ownershiptype)) &&
            (identical(other.sqfeetarea, sqfeetarea) ||
                const DeepCollectionEquality()
                    .equals(other.sqfeetarea, sqfeetarea)) &&
            (identical(other.numrooms, numrooms) ||
                const DeepCollectionEquality()
                    .equals(other.numrooms, numrooms)) &&
            (identical(other.numbath, numbath) ||
                const DeepCollectionEquality()
                    .equals(other.numbath, numbath)) &&
            (identical(other.furnishedstatus, furnishedstatus) ||
                const DeepCollectionEquality()
                    .equals(other.furnishedstatus, furnishedstatus)) &&
            (identical(other.haspowerbackup, haspowerbackup) ||
                const DeepCollectionEquality()
                    .equals(other.haspowerbackup, haspowerbackup)) &&
            (identical(other.hasclubhouse, hasclubhouse) ||
                const DeepCollectionEquality()
                    .equals(other.hasclubhouse, hasclubhouse)) &&
            (identical(other.hassecurity, hassecurity) ||
                const DeepCollectionEquality()
                    .equals(other.hassecurity, hassecurity)) &&
            (identical(other.has24hrwater, has24hrwater) ||
                const DeepCollectionEquality().equals(other.has24hrwater, has24hrwater)) &&
            (identical(other.hasgaspipeline, hasgaspipeline) || const DeepCollectionEquality().equals(other.hasgaspipeline, hasgaspipeline)) &&
            (identical(other.hasparking, hasparking) || const DeepCollectionEquality().equals(other.hasparking, hasparking)) &&
            (identical(other.hasgreenarea, hasgreenarea) || const DeepCollectionEquality().equals(other.hasgreenarea, hasgreenarea)) &&
            (identical(other.hasinternet, hasinternet) || const DeepCollectionEquality().equals(other.hasinternet, hasinternet)) &&
            (identical(other.hasairconditioner, hasairconditioner) || const DeepCollectionEquality().equals(other.hasairconditioner, hasairconditioner)) &&
            (identical(other.hascooler, hascooler) || const DeepCollectionEquality().equals(other.hascooler, hascooler)) &&
            (identical(other.hasfridge, hasfridge) || const DeepCollectionEquality().equals(other.hasfridge, hasfridge)) &&
            (identical(other.hastv, hastv) || const DeepCollectionEquality().equals(other.hastv, hastv)) &&
            (identical(other.haslift, haslift) || const DeepCollectionEquality().equals(other.haslift, haslift)) &&
            (identical(other.creationdate, creationdate) || const DeepCollectionEquality().equals(other.creationdate, creationdate)) &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.listingownertype, listingownertype) || const DeepCollectionEquality().equals(other.listingownertype, listingownertype)) &&
            (identical(other.price, price) || const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.contactdetails, contactdetails) || const DeepCollectionEquality().equals(other.contactdetails, contactdetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(servicetype) ^
      const DeepCollectionEquality().hash(usagetype) ^
      const DeepCollectionEquality().hash(propertytype) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(imagelist) ^
      const DeepCollectionEquality().hash(constructionstatus) ^
      const DeepCollectionEquality().hash(saletype) ^
      const DeepCollectionEquality().hash(discountstartdate) ^
      const DeepCollectionEquality().hash(discountenddate) ^
      const DeepCollectionEquality().hash(occupancytype) ^
      const DeepCollectionEquality().hash(tenantgenderfamilypreference) ^
      const DeepCollectionEquality().hash(ownershiptype) ^
      const DeepCollectionEquality().hash(sqfeetarea) ^
      const DeepCollectionEquality().hash(numrooms) ^
      const DeepCollectionEquality().hash(numbath) ^
      const DeepCollectionEquality().hash(furnishedstatus) ^
      const DeepCollectionEquality().hash(haspowerbackup) ^
      const DeepCollectionEquality().hash(hasclubhouse) ^
      const DeepCollectionEquality().hash(hassecurity) ^
      const DeepCollectionEquality().hash(has24hrwater) ^
      const DeepCollectionEquality().hash(hasgaspipeline) ^
      const DeepCollectionEquality().hash(hasparking) ^
      const DeepCollectionEquality().hash(hasgreenarea) ^
      const DeepCollectionEquality().hash(hasinternet) ^
      const DeepCollectionEquality().hash(hasairconditioner) ^
      const DeepCollectionEquality().hash(hascooler) ^
      const DeepCollectionEquality().hash(hasfridge) ^
      const DeepCollectionEquality().hash(hastv) ^
      const DeepCollectionEquality().hash(haslift) ^
      const DeepCollectionEquality().hash(creationdate) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(listingownertype) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(contactdetails);

  @JsonKey(ignore: true)
  @override
  _$RealEstateDataCopyWith<_RealEstateData> get copyWith =>
      __$RealEstateDataCopyWithImpl<_RealEstateData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RealEstateDataToJson(this);
  }
}

abstract class _RealEstateData implements RealEstateData {
  factory _RealEstateData(
      {@JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'usagetype')
          String usagetype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist', defaultValue: const [])
          List<String> imagelist,
      @JsonKey(name: 'constructionstatus')
          String constructionstatus,
      @JsonKey(name: 'saletype')
          String saletype,
      @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountstartdate,
      @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp, nullable: true)
          DateTime discountenddate,
      @JsonKey(name: 'occupancytype', defaultValue: '')
          String occupancytype,
      @JsonKey(name: 'tenantgenderfamilypreference', defaultValue: const [])
          List<String> tenantgenderfamilypreference,
      @JsonKey(name: 'ownershiptype')
          String ownershiptype,
      @JsonKey(name: 'sqfeetarea')
          int sqfeetarea,
      @JsonKey(name: 'numrooms')
          int numrooms,
      @JsonKey(name: 'numbath')
          int numbath,
      @JsonKey(name: 'furnishedstatus', defaultValue: 'N/A')
          String furnishedstatus,
      @JsonKey(name: 'haspowerbackup', defaultValue: false)
          bool haspowerbackup,
      @JsonKey(name: 'hasclubhouse')
          bool hasclubhouse,
      @JsonKey(name: 'hassecurity')
          bool hassecurity,
      @JsonKey(name: 'has24hrwater')
          bool has24hrwater,
      @JsonKey(name: 'hasgaspipeline', defaultValue: false)
          bool hasgaspipeline,
      @JsonKey(name: 'hasparking')
          bool hasparking,
      @JsonKey(name: 'hasgreenarea')
          bool hasgreenarea,
      @JsonKey(name: 'hasinternet', defaultValue: false)
          bool hasinternet,
      @JsonKey(name: 'hasairconditioner')
          bool hasairconditioner,
      @JsonKey(name: 'hascooler')
          bool hascooler,
      @JsonKey(name: 'hasfridge')
          bool hasfridge,
      @JsonKey(name: 'hastv')
          bool hastv,
      @JsonKey(name: 'haslift')
          bool haslift,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'contactdetails')
          ContactDetails contactdetails}) = _$_RealEstateData;

  factory _RealEstateData.fromJson(Map<String, dynamic> json) =
      _$_RealEstateData.fromJson;

  @override
  @JsonKey(name: 'servicetype')
  String get servicetype;
  @override
  @JsonKey(name: 'usagetype')
  String get usagetype;
  @override
  @JsonKey(name: 'propertytype')
  String get propertytype;
  @override
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @override
  @JsonKey(name: 'imagelist', defaultValue: const [])
  List<String> get imagelist;
  @override
  @JsonKey(name: 'constructionstatus')
  String get constructionstatus;
  @override
  @JsonKey(name: 'saletype')
  String get saletype;
  @override
  @JsonKey(
      name: 'discountstartdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get discountstartdate;
  @override
  @JsonKey(
      name: 'discountenddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp,
      nullable: true)
  DateTime get discountenddate;
  @override
  @JsonKey(name: 'occupancytype', defaultValue: '')
  String get occupancytype;
  @override
  @JsonKey(name: 'tenantgenderfamilypreference', defaultValue: const [])
  List<String> get tenantgenderfamilypreference;
  @override
  @JsonKey(name: 'ownershiptype')
  String get ownershiptype;
  @override
  @JsonKey(name: 'sqfeetarea')
  int get sqfeetarea;
  @override
  @JsonKey(name: 'numrooms')
  int get numrooms;
  @override
  @JsonKey(name: 'numbath')
  int get numbath;
  @override
  @JsonKey(name: 'furnishedstatus', defaultValue: 'N/A')
  String get furnishedstatus;
  @override
  @JsonKey(name: 'haspowerbackup', defaultValue: false)
  bool get haspowerbackup;
  @override
  @JsonKey(name: 'hasclubhouse')
  bool get hasclubhouse;
  @override
  @JsonKey(name: 'hassecurity')
  bool get hassecurity;
  @override
  @JsonKey(name: 'has24hrwater')
  bool get has24hrwater;
  @override
  @JsonKey(name: 'hasgaspipeline', defaultValue: false)
  bool get hasgaspipeline;
  @override
  @JsonKey(name: 'hasparking')
  bool get hasparking;
  @override
  @JsonKey(name: 'hasgreenarea')
  bool get hasgreenarea;
  @override
  @JsonKey(name: 'hasinternet', defaultValue: false)
  bool get hasinternet;
  @override
  @JsonKey(name: 'hasairconditioner')
  bool get hasairconditioner;
  @override
  @JsonKey(name: 'hascooler')
  bool get hascooler;
  @override
  @JsonKey(name: 'hasfridge')
  bool get hasfridge;
  @override
  @JsonKey(name: 'hastv')
  bool get hastv;
  @override
  @JsonKey(name: 'haslift')
  bool get haslift;
  @override
  @JsonKey(
      name: 'creationdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get creationdate;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'listingownertype')
  String get listingownertype;
  @override
  @JsonKey(name: 'price')
  int get price;
  @override
  @JsonKey(name: 'contactdetails')
  ContactDetails get contactdetails;
  @override
  @JsonKey(ignore: true)
  _$RealEstateDataCopyWith<_RealEstateData> get copyWith;
}

VehicleData _$VehicleDataFromJson(Map<String, dynamic> json) {
  return _VehicleData.fromJson(json);
}

/// @nodoc
class _$VehicleDataTearOff {
  const _$VehicleDataTearOff();

// ignore: unused_element
  _VehicleData call(
      {@JsonKey(name: 'servicetype') String servicetype,
      @JsonKey(name: 'vehicletype') String vehicletype,
      @JsonKey(name: 'propertytype') String propertytype,
      @JsonKey(name: 'tileimage', defaultValue: '') String tileimage,
      @JsonKey(name: 'imagelist') List<String> imagelist,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
      @JsonKey(name: 'make') String make,
      @JsonKey(name: 'model') String model,
      @JsonKey(name: 'yearbuild') int yearbuild,
      @JsonKey(name: 'milage') int milage,
      @JsonKey(name: 'exteriorcolor') String exteriorcolor,
      @JsonKey(name: 'interiorcolor', defaultValue: '') String interiorcolor,
      @JsonKey(name: 'cylinder', defaultValue: 0) int cylinder,
      @JsonKey(name: 'fueltype') String fueltype,
      @JsonKey(name: 'bodytype') String bodytype,
      @JsonKey(name: 'drivetype') String drivetype,
      @JsonKey(name: 'transmission') String transmission,
      @JsonKey(name: 'ownershiptransfer') String ownershiptransfer,
      @JsonKey(name: 'price') int price}) {
    return _VehicleData(
      servicetype: servicetype,
      vehicletype: vehicletype,
      propertytype: propertytype,
      tileimage: tileimage,
      imagelist: imagelist,
      title: title,
      description: description,
      listingownertype: listingownertype,
      contactdetails: contactdetails,
      make: make,
      model: model,
      yearbuild: yearbuild,
      milage: milage,
      exteriorcolor: exteriorcolor,
      interiorcolor: interiorcolor,
      cylinder: cylinder,
      fueltype: fueltype,
      bodytype: bodytype,
      drivetype: drivetype,
      transmission: transmission,
      ownershiptransfer: ownershiptransfer,
      price: price,
    );
  }

// ignore: unused_element
  VehicleData fromJson(Map<String, Object> json) {
    return VehicleData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $VehicleData = _$VehicleDataTearOff();

/// @nodoc
mixin _$VehicleData {
  @JsonKey(name: 'servicetype')
  String get servicetype;
  @JsonKey(name: 'vehicletype')
  String get vehicletype;
  @JsonKey(name: 'propertytype')
  String get propertytype;
  @JsonKey(name: 'tileimage', defaultValue: '')
  String get tileimage;
  @JsonKey(name: 'imagelist')
  List<String> get imagelist;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'listingownertype')
  String get listingownertype;
  @JsonKey(name: 'contactdetails')
  ContactDetails get contactdetails;
  @JsonKey(name: 'make')
  String get make;
  @JsonKey(name: 'model')
  String get model;
  @JsonKey(name: 'yearbuild')
  int get yearbuild;
  @JsonKey(name: 'milage')
  int get milage;
  @JsonKey(name: 'exteriorcolor')
  String get exteriorcolor;
  @JsonKey(name: 'interiorcolor', defaultValue: '')
  String get interiorcolor;
  @JsonKey(name: 'cylinder', defaultValue: 0)
  int get cylinder;
  @JsonKey(name: 'fueltype')
  String get fueltype;
  @JsonKey(name: 'bodytype')
  String get bodytype;
  @JsonKey(name: 'drivetype')
  String get drivetype;
  @JsonKey(name: 'transmission')
  String get transmission;
  @JsonKey(name: 'ownershiptransfer')
  String get ownershiptransfer;
  @JsonKey(name: 'price')
  int get price;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $VehicleDataCopyWith<VehicleData> get copyWith;
}

/// @nodoc
abstract class $VehicleDataCopyWith<$Res> {
  factory $VehicleDataCopyWith(
          VehicleData value, $Res Function(VehicleData) then) =
      _$VehicleDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'servicetype') String servicetype,
      @JsonKey(name: 'vehicletype') String vehicletype,
      @JsonKey(name: 'propertytype') String propertytype,
      @JsonKey(name: 'tileimage', defaultValue: '') String tileimage,
      @JsonKey(name: 'imagelist') List<String> imagelist,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
      @JsonKey(name: 'make') String make,
      @JsonKey(name: 'model') String model,
      @JsonKey(name: 'yearbuild') int yearbuild,
      @JsonKey(name: 'milage') int milage,
      @JsonKey(name: 'exteriorcolor') String exteriorcolor,
      @JsonKey(name: 'interiorcolor', defaultValue: '') String interiorcolor,
      @JsonKey(name: 'cylinder', defaultValue: 0) int cylinder,
      @JsonKey(name: 'fueltype') String fueltype,
      @JsonKey(name: 'bodytype') String bodytype,
      @JsonKey(name: 'drivetype') String drivetype,
      @JsonKey(name: 'transmission') String transmission,
      @JsonKey(name: 'ownershiptransfer') String ownershiptransfer,
      @JsonKey(name: 'price') int price});
}

/// @nodoc
class _$VehicleDataCopyWithImpl<$Res> implements $VehicleDataCopyWith<$Res> {
  _$VehicleDataCopyWithImpl(this._value, this._then);

  final VehicleData _value;
  // ignore: unused_field
  final $Res Function(VehicleData) _then;

  @override
  $Res call({
    Object servicetype = freezed,
    Object vehicletype = freezed,
    Object propertytype = freezed,
    Object tileimage = freezed,
    Object imagelist = freezed,
    Object title = freezed,
    Object description = freezed,
    Object listingownertype = freezed,
    Object contactdetails = freezed,
    Object make = freezed,
    Object model = freezed,
    Object yearbuild = freezed,
    Object milage = freezed,
    Object exteriorcolor = freezed,
    Object interiorcolor = freezed,
    Object cylinder = freezed,
    Object fueltype = freezed,
    Object bodytype = freezed,
    Object drivetype = freezed,
    Object transmission = freezed,
    Object ownershiptransfer = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      servicetype:
          servicetype == freezed ? _value.servicetype : servicetype as String,
      vehicletype:
          vehicletype == freezed ? _value.vehicletype : vehicletype as String,
      propertytype: propertytype == freezed
          ? _value.propertytype
          : propertytype as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      imagelist:
          imagelist == freezed ? _value.imagelist : imagelist as List<String>,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      listingownertype: listingownertype == freezed
          ? _value.listingownertype
          : listingownertype as String,
      contactdetails: contactdetails == freezed
          ? _value.contactdetails
          : contactdetails as ContactDetails,
      make: make == freezed ? _value.make : make as String,
      model: model == freezed ? _value.model : model as String,
      yearbuild: yearbuild == freezed ? _value.yearbuild : yearbuild as int,
      milage: milage == freezed ? _value.milage : milage as int,
      exteriorcolor: exteriorcolor == freezed
          ? _value.exteriorcolor
          : exteriorcolor as String,
      interiorcolor: interiorcolor == freezed
          ? _value.interiorcolor
          : interiorcolor as String,
      cylinder: cylinder == freezed ? _value.cylinder : cylinder as int,
      fueltype: fueltype == freezed ? _value.fueltype : fueltype as String,
      bodytype: bodytype == freezed ? _value.bodytype : bodytype as String,
      drivetype: drivetype == freezed ? _value.drivetype : drivetype as String,
      transmission: transmission == freezed
          ? _value.transmission
          : transmission as String,
      ownershiptransfer: ownershiptransfer == freezed
          ? _value.ownershiptransfer
          : ownershiptransfer as String,
      price: price == freezed ? _value.price : price as int,
    ));
  }
}

/// @nodoc
abstract class _$VehicleDataCopyWith<$Res>
    implements $VehicleDataCopyWith<$Res> {
  factory _$VehicleDataCopyWith(
          _VehicleData value, $Res Function(_VehicleData) then) =
      __$VehicleDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'servicetype') String servicetype,
      @JsonKey(name: 'vehicletype') String vehicletype,
      @JsonKey(name: 'propertytype') String propertytype,
      @JsonKey(name: 'tileimage', defaultValue: '') String tileimage,
      @JsonKey(name: 'imagelist') List<String> imagelist,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
      @JsonKey(name: 'make') String make,
      @JsonKey(name: 'model') String model,
      @JsonKey(name: 'yearbuild') int yearbuild,
      @JsonKey(name: 'milage') int milage,
      @JsonKey(name: 'exteriorcolor') String exteriorcolor,
      @JsonKey(name: 'interiorcolor', defaultValue: '') String interiorcolor,
      @JsonKey(name: 'cylinder', defaultValue: 0) int cylinder,
      @JsonKey(name: 'fueltype') String fueltype,
      @JsonKey(name: 'bodytype') String bodytype,
      @JsonKey(name: 'drivetype') String drivetype,
      @JsonKey(name: 'transmission') String transmission,
      @JsonKey(name: 'ownershiptransfer') String ownershiptransfer,
      @JsonKey(name: 'price') int price});
}

/// @nodoc
class __$VehicleDataCopyWithImpl<$Res> extends _$VehicleDataCopyWithImpl<$Res>
    implements _$VehicleDataCopyWith<$Res> {
  __$VehicleDataCopyWithImpl(
      _VehicleData _value, $Res Function(_VehicleData) _then)
      : super(_value, (v) => _then(v as _VehicleData));

  @override
  _VehicleData get _value => super._value as _VehicleData;

  @override
  $Res call({
    Object servicetype = freezed,
    Object vehicletype = freezed,
    Object propertytype = freezed,
    Object tileimage = freezed,
    Object imagelist = freezed,
    Object title = freezed,
    Object description = freezed,
    Object listingownertype = freezed,
    Object contactdetails = freezed,
    Object make = freezed,
    Object model = freezed,
    Object yearbuild = freezed,
    Object milage = freezed,
    Object exteriorcolor = freezed,
    Object interiorcolor = freezed,
    Object cylinder = freezed,
    Object fueltype = freezed,
    Object bodytype = freezed,
    Object drivetype = freezed,
    Object transmission = freezed,
    Object ownershiptransfer = freezed,
    Object price = freezed,
  }) {
    return _then(_VehicleData(
      servicetype:
          servicetype == freezed ? _value.servicetype : servicetype as String,
      vehicletype:
          vehicletype == freezed ? _value.vehicletype : vehicletype as String,
      propertytype: propertytype == freezed
          ? _value.propertytype
          : propertytype as String,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      imagelist:
          imagelist == freezed ? _value.imagelist : imagelist as List<String>,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      listingownertype: listingownertype == freezed
          ? _value.listingownertype
          : listingownertype as String,
      contactdetails: contactdetails == freezed
          ? _value.contactdetails
          : contactdetails as ContactDetails,
      make: make == freezed ? _value.make : make as String,
      model: model == freezed ? _value.model : model as String,
      yearbuild: yearbuild == freezed ? _value.yearbuild : yearbuild as int,
      milage: milage == freezed ? _value.milage : milage as int,
      exteriorcolor: exteriorcolor == freezed
          ? _value.exteriorcolor
          : exteriorcolor as String,
      interiorcolor: interiorcolor == freezed
          ? _value.interiorcolor
          : interiorcolor as String,
      cylinder: cylinder == freezed ? _value.cylinder : cylinder as int,
      fueltype: fueltype == freezed ? _value.fueltype : fueltype as String,
      bodytype: bodytype == freezed ? _value.bodytype : bodytype as String,
      drivetype: drivetype == freezed ? _value.drivetype : drivetype as String,
      transmission: transmission == freezed
          ? _value.transmission
          : transmission as String,
      ownershiptransfer: ownershiptransfer == freezed
          ? _value.ownershiptransfer
          : ownershiptransfer as String,
      price: price == freezed ? _value.price : price as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_VehicleData implements _VehicleData {
  _$_VehicleData(
      {@JsonKey(name: 'servicetype') this.servicetype,
      @JsonKey(name: 'vehicletype') this.vehicletype,
      @JsonKey(name: 'propertytype') this.propertytype,
      @JsonKey(name: 'tileimage', defaultValue: '') this.tileimage,
      @JsonKey(name: 'imagelist') this.imagelist,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'listingownertype') this.listingownertype,
      @JsonKey(name: 'contactdetails') this.contactdetails,
      @JsonKey(name: 'make') this.make,
      @JsonKey(name: 'model') this.model,
      @JsonKey(name: 'yearbuild') this.yearbuild,
      @JsonKey(name: 'milage') this.milage,
      @JsonKey(name: 'exteriorcolor') this.exteriorcolor,
      @JsonKey(name: 'interiorcolor', defaultValue: '') this.interiorcolor,
      @JsonKey(name: 'cylinder', defaultValue: 0) this.cylinder,
      @JsonKey(name: 'fueltype') this.fueltype,
      @JsonKey(name: 'bodytype') this.bodytype,
      @JsonKey(name: 'drivetype') this.drivetype,
      @JsonKey(name: 'transmission') this.transmission,
      @JsonKey(name: 'ownershiptransfer') this.ownershiptransfer,
      @JsonKey(name: 'price') this.price});

  factory _$_VehicleData.fromJson(Map<String, dynamic> json) =>
      _$_$_VehicleDataFromJson(json);

  @override
  @JsonKey(name: 'servicetype')
  final String servicetype;
  @override
  @JsonKey(name: 'vehicletype')
  final String vehicletype;
  @override
  @JsonKey(name: 'propertytype')
  final String propertytype;
  @override
  @JsonKey(name: 'tileimage', defaultValue: '')
  final String tileimage;
  @override
  @JsonKey(name: 'imagelist')
  final List<String> imagelist;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'listingownertype')
  final String listingownertype;
  @override
  @JsonKey(name: 'contactdetails')
  final ContactDetails contactdetails;
  @override
  @JsonKey(name: 'make')
  final String make;
  @override
  @JsonKey(name: 'model')
  final String model;
  @override
  @JsonKey(name: 'yearbuild')
  final int yearbuild;
  @override
  @JsonKey(name: 'milage')
  final int milage;
  @override
  @JsonKey(name: 'exteriorcolor')
  final String exteriorcolor;
  @override
  @JsonKey(name: 'interiorcolor', defaultValue: '')
  final String interiorcolor;
  @override
  @JsonKey(name: 'cylinder', defaultValue: 0)
  final int cylinder;
  @override
  @JsonKey(name: 'fueltype')
  final String fueltype;
  @override
  @JsonKey(name: 'bodytype')
  final String bodytype;
  @override
  @JsonKey(name: 'drivetype')
  final String drivetype;
  @override
  @JsonKey(name: 'transmission')
  final String transmission;
  @override
  @JsonKey(name: 'ownershiptransfer')
  final String ownershiptransfer;
  @override
  @JsonKey(name: 'price')
  final int price;

  @override
  String toString() {
    return 'VehicleData(servicetype: $servicetype, vehicletype: $vehicletype, propertytype: $propertytype, tileimage: $tileimage, imagelist: $imagelist, title: $title, description: $description, listingownertype: $listingownertype, contactdetails: $contactdetails, make: $make, model: $model, yearbuild: $yearbuild, milage: $milage, exteriorcolor: $exteriorcolor, interiorcolor: $interiorcolor, cylinder: $cylinder, fueltype: $fueltype, bodytype: $bodytype, drivetype: $drivetype, transmission: $transmission, ownershiptransfer: $ownershiptransfer, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VehicleData &&
            (identical(other.servicetype, servicetype) ||
                const DeepCollectionEquality()
                    .equals(other.servicetype, servicetype)) &&
            (identical(other.vehicletype, vehicletype) ||
                const DeepCollectionEquality()
                    .equals(other.vehicletype, vehicletype)) &&
            (identical(other.propertytype, propertytype) ||
                const DeepCollectionEquality()
                    .equals(other.propertytype, propertytype)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.imagelist, imagelist) ||
                const DeepCollectionEquality()
                    .equals(other.imagelist, imagelist)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.listingownertype, listingownertype) ||
                const DeepCollectionEquality()
                    .equals(other.listingownertype, listingownertype)) &&
            (identical(other.contactdetails, contactdetails) ||
                const DeepCollectionEquality()
                    .equals(other.contactdetails, contactdetails)) &&
            (identical(other.make, make) ||
                const DeepCollectionEquality().equals(other.make, make)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.yearbuild, yearbuild) ||
                const DeepCollectionEquality()
                    .equals(other.yearbuild, yearbuild)) &&
            (identical(other.milage, milage) ||
                const DeepCollectionEquality().equals(other.milage, milage)) &&
            (identical(other.exteriorcolor, exteriorcolor) ||
                const DeepCollectionEquality()
                    .equals(other.exteriorcolor, exteriorcolor)) &&
            (identical(other.interiorcolor, interiorcolor) ||
                const DeepCollectionEquality()
                    .equals(other.interiorcolor, interiorcolor)) &&
            (identical(other.cylinder, cylinder) ||
                const DeepCollectionEquality()
                    .equals(other.cylinder, cylinder)) &&
            (identical(other.fueltype, fueltype) ||
                const DeepCollectionEquality()
                    .equals(other.fueltype, fueltype)) &&
            (identical(other.bodytype, bodytype) ||
                const DeepCollectionEquality()
                    .equals(other.bodytype, bodytype)) &&
            (identical(other.drivetype, drivetype) ||
                const DeepCollectionEquality()
                    .equals(other.drivetype, drivetype)) &&
            (identical(other.transmission, transmission) ||
                const DeepCollectionEquality()
                    .equals(other.transmission, transmission)) &&
            (identical(other.ownershiptransfer, ownershiptransfer) ||
                const DeepCollectionEquality()
                    .equals(other.ownershiptransfer, ownershiptransfer)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(servicetype) ^
      const DeepCollectionEquality().hash(vehicletype) ^
      const DeepCollectionEquality().hash(propertytype) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(imagelist) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(listingownertype) ^
      const DeepCollectionEquality().hash(contactdetails) ^
      const DeepCollectionEquality().hash(make) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(yearbuild) ^
      const DeepCollectionEquality().hash(milage) ^
      const DeepCollectionEquality().hash(exteriorcolor) ^
      const DeepCollectionEquality().hash(interiorcolor) ^
      const DeepCollectionEquality().hash(cylinder) ^
      const DeepCollectionEquality().hash(fueltype) ^
      const DeepCollectionEquality().hash(bodytype) ^
      const DeepCollectionEquality().hash(drivetype) ^
      const DeepCollectionEquality().hash(transmission) ^
      const DeepCollectionEquality().hash(ownershiptransfer) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$VehicleDataCopyWith<_VehicleData> get copyWith =>
      __$VehicleDataCopyWithImpl<_VehicleData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VehicleDataToJson(this);
  }
}

abstract class _VehicleData implements VehicleData {
  factory _VehicleData(
      {@JsonKey(name: 'servicetype') String servicetype,
      @JsonKey(name: 'vehicletype') String vehicletype,
      @JsonKey(name: 'propertytype') String propertytype,
      @JsonKey(name: 'tileimage', defaultValue: '') String tileimage,
      @JsonKey(name: 'imagelist') List<String> imagelist,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetails contactdetails,
      @JsonKey(name: 'make') String make,
      @JsonKey(name: 'model') String model,
      @JsonKey(name: 'yearbuild') int yearbuild,
      @JsonKey(name: 'milage') int milage,
      @JsonKey(name: 'exteriorcolor') String exteriorcolor,
      @JsonKey(name: 'interiorcolor', defaultValue: '') String interiorcolor,
      @JsonKey(name: 'cylinder', defaultValue: 0) int cylinder,
      @JsonKey(name: 'fueltype') String fueltype,
      @JsonKey(name: 'bodytype') String bodytype,
      @JsonKey(name: 'drivetype') String drivetype,
      @JsonKey(name: 'transmission') String transmission,
      @JsonKey(name: 'ownershiptransfer') String ownershiptransfer,
      @JsonKey(name: 'price') int price}) = _$_VehicleData;

  factory _VehicleData.fromJson(Map<String, dynamic> json) =
      _$_VehicleData.fromJson;

  @override
  @JsonKey(name: 'servicetype')
  String get servicetype;
  @override
  @JsonKey(name: 'vehicletype')
  String get vehicletype;
  @override
  @JsonKey(name: 'propertytype')
  String get propertytype;
  @override
  @JsonKey(name: 'tileimage', defaultValue: '')
  String get tileimage;
  @override
  @JsonKey(name: 'imagelist')
  List<String> get imagelist;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'listingownertype')
  String get listingownertype;
  @override
  @JsonKey(name: 'contactdetails')
  ContactDetails get contactdetails;
  @override
  @JsonKey(name: 'make')
  String get make;
  @override
  @JsonKey(name: 'model')
  String get model;
  @override
  @JsonKey(name: 'yearbuild')
  int get yearbuild;
  @override
  @JsonKey(name: 'milage')
  int get milage;
  @override
  @JsonKey(name: 'exteriorcolor')
  String get exteriorcolor;
  @override
  @JsonKey(name: 'interiorcolor', defaultValue: '')
  String get interiorcolor;
  @override
  @JsonKey(name: 'cylinder', defaultValue: 0)
  int get cylinder;
  @override
  @JsonKey(name: 'fueltype')
  String get fueltype;
  @override
  @JsonKey(name: 'bodytype')
  String get bodytype;
  @override
  @JsonKey(name: 'drivetype')
  String get drivetype;
  @override
  @JsonKey(name: 'transmission')
  String get transmission;
  @override
  @JsonKey(name: 'ownershiptransfer')
  String get ownershiptransfer;
  @override
  @JsonKey(name: 'price')
  int get price;
  @override
  @JsonKey(ignore: true)
  _$VehicleDataCopyWith<_VehicleData> get copyWith;
}
