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
          RealEstateModel data}) {
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
          JobPosting data}) {
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
          PetModel data}) {
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
          EcomVehicleModel data}) {
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
      @JsonKey(name: 'docid', defaultValue: '')
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
          ProductModel data}) {
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
                RealEstateModel data),
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
                JobPosting data),
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
                PetModel data),
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
                EcomVehicleModel data),
    @required
        TResult product(
            @JsonKey(name: 'docid', defaultValue: '')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductModel data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult realEstate(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') RealEstateModel data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobPosting data),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetModel data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') EcomVehicleModel data),
    TResult product(
        @JsonKey(name: 'docid', defaultValue: '') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductModel data),
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
      @JsonKey(name: 'adata') RealEstateModel data});

  $RealEstateModelCopyWith<$Res> get data;
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
      data: data == freezed ? _value.data : data as RealEstateModel,
    ));
  }

  @override
  $RealEstateModelCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $RealEstateModelCopyWith<$Res>(_value.data, (value) {
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
  final RealEstateModel data;

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
                RealEstateModel data),
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
                JobPosting data),
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
                PetModel data),
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
                EcomVehicleModel data),
    @required
        TResult product(
            @JsonKey(name: 'docid', defaultValue: '')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductModel data),
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
        @JsonKey(name: 'adata') RealEstateModel data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobPosting data),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetModel data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') EcomVehicleModel data),
    TResult product(
        @JsonKey(name: 'docid', defaultValue: '') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductModel data),
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
          RealEstateModel data}) = _$CompleteRealEstate;

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
  RealEstateModel get data;
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
      @JsonKey(name: 'adata') JobPosting data});

  $JobPostingCopyWith<$Res> get data;
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
      data: data == freezed ? _value.data : data as JobPosting,
    ));
  }

  @override
  $JobPostingCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $JobPostingCopyWith<$Res>(_value.data, (value) {
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
  final JobPosting data;

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
                RealEstateModel data),
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
                JobPosting data),
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
                PetModel data),
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
                EcomVehicleModel data),
    @required
        TResult product(
            @JsonKey(name: 'docid', defaultValue: '')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductModel data),
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
        @JsonKey(name: 'adata') RealEstateModel data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobPosting data),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetModel data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') EcomVehicleModel data),
    TResult product(
        @JsonKey(name: 'docid', defaultValue: '') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductModel data),
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
          JobPosting data}) = _$CompleteJob;

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
  JobPosting get data;
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
      @JsonKey(name: 'adata') PetModel data});

  $PetModelCopyWith<$Res> get data;
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
      data: data == freezed ? _value.data : data as PetModel,
    ));
  }

  @override
  $PetModelCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $PetModelCopyWith<$Res>(_value.data, (value) {
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
  final PetModel data;

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
                RealEstateModel data),
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
                JobPosting data),
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
                PetModel data),
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
                EcomVehicleModel data),
    @required
        TResult product(
            @JsonKey(name: 'docid', defaultValue: '')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductModel data),
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
        @JsonKey(name: 'adata') RealEstateModel data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobPosting data),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetModel data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') EcomVehicleModel data),
    TResult product(
        @JsonKey(name: 'docid', defaultValue: '') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductModel data),
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
          PetModel data}) = _$CompletePet;

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
  PetModel get data;
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
      @JsonKey(name: 'adata') EcomVehicleModel data});

  $EcomVehicleModelCopyWith<$Res> get data;
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
      data: data == freezed ? _value.data : data as EcomVehicleModel,
    ));
  }

  @override
  $EcomVehicleModelCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $EcomVehicleModelCopyWith<$Res>(_value.data, (value) {
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
  final EcomVehicleModel data;

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
                RealEstateModel data),
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
                JobPosting data),
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
                PetModel data),
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
                EcomVehicleModel data),
    @required
        TResult product(
            @JsonKey(name: 'docid', defaultValue: '')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductModel data),
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
        @JsonKey(name: 'adata') RealEstateModel data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobPosting data),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetModel data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') EcomVehicleModel data),
    TResult product(
        @JsonKey(name: 'docid', defaultValue: '') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductModel data),
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
          EcomVehicleModel data}) = _$CompleteVehicle;

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
  EcomVehicleModel get data;
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
      {@JsonKey(name: 'docid', defaultValue: '') String docId,
      String dt,
      @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
      @JsonKey(name: 'userid', defaultValue: '') String userId,
      @JsonKey(name: 'adata') ProductModel data});

  $ProductModelCopyWith<$Res> get data;
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
      data: data == freezed ? _value.data : data as ProductModel,
    ));
  }

  @override
  $ProductModelCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $ProductModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$CompleteProduct implements CompleteProduct {
  const _$CompleteProduct(
      {@required
      @JsonKey(name: 'docid', defaultValue: '')
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
  @JsonKey(name: 'docid', defaultValue: '')
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
  final ProductModel data;

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
                RealEstateModel data),
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
                JobPosting data),
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
                PetModel data),
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
                EcomVehicleModel data),
    @required
        TResult product(
            @JsonKey(name: 'docid', defaultValue: '')
                String docId,
            String dt,
            @JsonKey(name: 'serviceproviderid', defaultValue: '')
                String serviceId,
            @JsonKey(name: 'userid', defaultValue: '')
                String userId,
            @JsonKey(name: 'adata')
                ProductModel data),
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
        @JsonKey(name: 'adata') RealEstateModel data),
    TResult job(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') JobPosting data),
    TResult pet(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') PetModel data),
    TResult vehicle(
        @JsonKey(name: 'docid') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') EcomVehicleModel data),
    TResult product(
        @JsonKey(name: 'docid', defaultValue: '') String docId,
        String dt,
        @JsonKey(name: 'serviceproviderid', defaultValue: '') String serviceId,
        @JsonKey(name: 'userid', defaultValue: '') String userId,
        @JsonKey(name: 'adata') ProductModel data),
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
      @JsonKey(name: 'docid', defaultValue: '')
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
          ProductModel data}) = _$CompleteProduct;

  factory CompleteProduct.fromJson(Map<String, dynamic> json) =
      _$CompleteProduct.fromJson;

  @override
  @JsonKey(name: 'docid', defaultValue: '')
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
  ProductModel get data;
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

RealEstateModel _$RealEstateModelFromJson(Map<String, dynamic> json) {
  return _RealEstateModel.fromJson(json);
}

/// @nodoc
class _$RealEstateModelTearOff {
  const _$RealEstateModelTearOff();

// ignore: unused_element
  _RealEstateModel call(
      {@JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'usagetype')
          String usagetype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'constructionstatus')
          String constructionstatus,
      @JsonKey(name: 'saletype')
          String saletype,
      @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountstartdate,
      @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountenddate,
      @JsonKey(name: 'occupancytype')
          String occupancytype,
      @JsonKey(name: 'tenantgenderfamilypreference')
          List<String> tenantgenderfamilypreference,
      @JsonKey(name: 'ownershiptype')
          String ownershiptype,
      @JsonKey(name: 'sqfeetarea')
          int sqfeetarea,
      @JsonKey(name: 'numrooms')
          int numrooms,
      @JsonKey(name: 'numbath')
          int numbath,
      @JsonKey(name: 'furnishedstatus')
          String furnishedstatus,
      @JsonKey(name: 'haspowerbackup')
          bool haspowerbackup,
      @JsonKey(name: 'hasclubhouse')
          bool hasclubhouse,
      @JsonKey(name: 'hassecurity')
          bool hassecurity,
      @JsonKey(name: 'has24hrwater')
          bool has24hrwater,
      @JsonKey(name: 'hasgaspipeline')
          bool hasgaspipeline,
      @JsonKey(name: 'hasparking')
          bool hasparking,
      @JsonKey(name: 'hasgreenarea')
          bool hasgreenarea,
      @JsonKey(name: 'hasinternet')
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
          ContactDetailsModel contactdetails}) {
    return _RealEstateModel(
      docid: docid,
      serviceproviderid: serviceproviderid,
      userid: userid,
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
  RealEstateModel fromJson(Map<String, Object> json) {
    return RealEstateModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RealEstateModel = _$RealEstateModelTearOff();

/// @nodoc
mixin _$RealEstateModel {
  @JsonKey(name: 'docid')
  String get docid;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'userid')
  String get userid;
  @JsonKey(name: 'servicetype')
  String get servicetype;
  @JsonKey(name: 'usagetype')
  String get usagetype;
  @JsonKey(name: 'propertytype')
  String get propertytype;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(name: 'imagelist')
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
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get discountenddate;
  @JsonKey(name: 'occupancytype')
  String get occupancytype;
  @JsonKey(name: 'tenantgenderfamilypreference')
  List<String> get tenantgenderfamilypreference;
  @JsonKey(name: 'ownershiptype')
  String get ownershiptype;
  @JsonKey(name: 'sqfeetarea')
  int get sqfeetarea;
  @JsonKey(name: 'numrooms')
  int get numrooms;
  @JsonKey(name: 'numbath')
  int get numbath;
  @JsonKey(name: 'furnishedstatus')
  String get furnishedstatus;
  @JsonKey(name: 'haspowerbackup')
  bool get haspowerbackup;
  @JsonKey(name: 'hasclubhouse')
  bool get hasclubhouse;
  @JsonKey(name: 'hassecurity')
  bool get hassecurity;
  @JsonKey(name: 'has24hrwater')
  bool get has24hrwater;
  @JsonKey(name: 'hasgaspipeline')
  bool get hasgaspipeline;
  @JsonKey(name: 'hasparking')
  bool get hasparking;
  @JsonKey(name: 'hasgreenarea')
  bool get hasgreenarea;
  @JsonKey(name: 'hasinternet')
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
  ContactDetailsModel get contactdetails;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RealEstateModelCopyWith<RealEstateModel> get copyWith;
}

/// @nodoc
abstract class $RealEstateModelCopyWith<$Res> {
  factory $RealEstateModelCopyWith(
          RealEstateModel value, $Res Function(RealEstateModel) then) =
      _$RealEstateModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'usagetype')
          String usagetype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'constructionstatus')
          String constructionstatus,
      @JsonKey(name: 'saletype')
          String saletype,
      @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountstartdate,
      @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountenddate,
      @JsonKey(name: 'occupancytype')
          String occupancytype,
      @JsonKey(name: 'tenantgenderfamilypreference')
          List<String> tenantgenderfamilypreference,
      @JsonKey(name: 'ownershiptype')
          String ownershiptype,
      @JsonKey(name: 'sqfeetarea')
          int sqfeetarea,
      @JsonKey(name: 'numrooms')
          int numrooms,
      @JsonKey(name: 'numbath')
          int numbath,
      @JsonKey(name: 'furnishedstatus')
          String furnishedstatus,
      @JsonKey(name: 'haspowerbackup')
          bool haspowerbackup,
      @JsonKey(name: 'hasclubhouse')
          bool hasclubhouse,
      @JsonKey(name: 'hassecurity')
          bool hassecurity,
      @JsonKey(name: 'has24hrwater')
          bool has24hrwater,
      @JsonKey(name: 'hasgaspipeline')
          bool hasgaspipeline,
      @JsonKey(name: 'hasparking')
          bool hasparking,
      @JsonKey(name: 'hasgreenarea')
          bool hasgreenarea,
      @JsonKey(name: 'hasinternet')
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
          ContactDetailsModel contactdetails});

  $ContactDetailsModelCopyWith<$Res> get contactdetails;
}

/// @nodoc
class _$RealEstateModelCopyWithImpl<$Res>
    implements $RealEstateModelCopyWith<$Res> {
  _$RealEstateModelCopyWithImpl(this._value, this._then);

  final RealEstateModel _value;
  // ignore: unused_field
  final $Res Function(RealEstateModel) _then;

  @override
  $Res call({
    Object docid = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
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
      docid: docid == freezed ? _value.docid : docid as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
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
          : contactdetails as ContactDetailsModel,
    ));
  }

  @override
  $ContactDetailsModelCopyWith<$Res> get contactdetails {
    if (_value.contactdetails == null) {
      return null;
    }
    return $ContactDetailsModelCopyWith<$Res>(_value.contactdetails, (value) {
      return _then(_value.copyWith(contactdetails: value));
    });
  }
}

/// @nodoc
abstract class _$RealEstateModelCopyWith<$Res>
    implements $RealEstateModelCopyWith<$Res> {
  factory _$RealEstateModelCopyWith(
          _RealEstateModel value, $Res Function(_RealEstateModel) then) =
      __$RealEstateModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'usagetype')
          String usagetype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'constructionstatus')
          String constructionstatus,
      @JsonKey(name: 'saletype')
          String saletype,
      @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountstartdate,
      @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountenddate,
      @JsonKey(name: 'occupancytype')
          String occupancytype,
      @JsonKey(name: 'tenantgenderfamilypreference')
          List<String> tenantgenderfamilypreference,
      @JsonKey(name: 'ownershiptype')
          String ownershiptype,
      @JsonKey(name: 'sqfeetarea')
          int sqfeetarea,
      @JsonKey(name: 'numrooms')
          int numrooms,
      @JsonKey(name: 'numbath')
          int numbath,
      @JsonKey(name: 'furnishedstatus')
          String furnishedstatus,
      @JsonKey(name: 'haspowerbackup')
          bool haspowerbackup,
      @JsonKey(name: 'hasclubhouse')
          bool hasclubhouse,
      @JsonKey(name: 'hassecurity')
          bool hassecurity,
      @JsonKey(name: 'has24hrwater')
          bool has24hrwater,
      @JsonKey(name: 'hasgaspipeline')
          bool hasgaspipeline,
      @JsonKey(name: 'hasparking')
          bool hasparking,
      @JsonKey(name: 'hasgreenarea')
          bool hasgreenarea,
      @JsonKey(name: 'hasinternet')
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
          ContactDetailsModel contactdetails});

  @override
  $ContactDetailsModelCopyWith<$Res> get contactdetails;
}

/// @nodoc
class __$RealEstateModelCopyWithImpl<$Res>
    extends _$RealEstateModelCopyWithImpl<$Res>
    implements _$RealEstateModelCopyWith<$Res> {
  __$RealEstateModelCopyWithImpl(
      _RealEstateModel _value, $Res Function(_RealEstateModel) _then)
      : super(_value, (v) => _then(v as _RealEstateModel));

  @override
  _RealEstateModel get _value => super._value as _RealEstateModel;

  @override
  $Res call({
    Object docid = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
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
    return _then(_RealEstateModel(
      docid: docid == freezed ? _value.docid : docid as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
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
          : contactdetails as ContactDetailsModel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RealEstateModel implements _RealEstateModel {
  _$_RealEstateModel(
      {@JsonKey(name: 'docid')
          this.docid,
      @JsonKey(name: 'serviceproviderid')
          this.serviceproviderid,
      @JsonKey(name: 'userid')
          this.userid,
      @JsonKey(name: 'servicetype')
          this.servicetype,
      @JsonKey(name: 'usagetype')
          this.usagetype,
      @JsonKey(name: 'propertytype')
          this.propertytype,
      @JsonKey(name: 'tileimage')
          this.tileimage,
      @JsonKey(name: 'imagelist')
          this.imagelist,
      @JsonKey(name: 'constructionstatus')
          this.constructionstatus,
      @JsonKey(name: 'saletype')
          this.saletype,
      @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.discountstartdate,
      @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.discountenddate,
      @JsonKey(name: 'occupancytype')
          this.occupancytype,
      @JsonKey(name: 'tenantgenderfamilypreference')
          this.tenantgenderfamilypreference,
      @JsonKey(name: 'ownershiptype')
          this.ownershiptype,
      @JsonKey(name: 'sqfeetarea')
          this.sqfeetarea,
      @JsonKey(name: 'numrooms')
          this.numrooms,
      @JsonKey(name: 'numbath')
          this.numbath,
      @JsonKey(name: 'furnishedstatus')
          this.furnishedstatus,
      @JsonKey(name: 'haspowerbackup')
          this.haspowerbackup,
      @JsonKey(name: 'hasclubhouse')
          this.hasclubhouse,
      @JsonKey(name: 'hassecurity')
          this.hassecurity,
      @JsonKey(name: 'has24hrwater')
          this.has24hrwater,
      @JsonKey(name: 'hasgaspipeline')
          this.hasgaspipeline,
      @JsonKey(name: 'hasparking')
          this.hasparking,
      @JsonKey(name: 'hasgreenarea')
          this.hasgreenarea,
      @JsonKey(name: 'hasinternet')
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

  factory _$_RealEstateModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RealEstateModelFromJson(json);

  @override
  @JsonKey(name: 'docid')
  final String docid;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  final String userid;
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
  @JsonKey(name: 'imagelist')
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
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime discountenddate;
  @override
  @JsonKey(name: 'occupancytype')
  final String occupancytype;
  @override
  @JsonKey(name: 'tenantgenderfamilypreference')
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
  @JsonKey(name: 'furnishedstatus')
  final String furnishedstatus;
  @override
  @JsonKey(name: 'haspowerbackup')
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
  @JsonKey(name: 'hasgaspipeline')
  final bool hasgaspipeline;
  @override
  @JsonKey(name: 'hasparking')
  final bool hasparking;
  @override
  @JsonKey(name: 'hasgreenarea')
  final bool hasgreenarea;
  @override
  @JsonKey(name: 'hasinternet')
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
  final ContactDetailsModel contactdetails;

  @override
  String toString() {
    return 'RealEstateModel(docid: $docid, serviceproviderid: $serviceproviderid, userid: $userid, servicetype: $servicetype, usagetype: $usagetype, propertytype: $propertytype, tileimage: $tileimage, imagelist: $imagelist, constructionstatus: $constructionstatus, saletype: $saletype, discountstartdate: $discountstartdate, discountenddate: $discountenddate, occupancytype: $occupancytype, tenantgenderfamilypreference: $tenantgenderfamilypreference, ownershiptype: $ownershiptype, sqfeetarea: $sqfeetarea, numrooms: $numrooms, numbath: $numbath, furnishedstatus: $furnishedstatus, haspowerbackup: $haspowerbackup, hasclubhouse: $hasclubhouse, hassecurity: $hassecurity, has24hrwater: $has24hrwater, hasgaspipeline: $hasgaspipeline, hasparking: $hasparking, hasgreenarea: $hasgreenarea, hasinternet: $hasinternet, hasairconditioner: $hasairconditioner, hascooler: $hascooler, hasfridge: $hasfridge, hastv: $hastv, haslift: $haslift, creationdate: $creationdate, title: $title, description: $description, listingownertype: $listingownertype, price: $price, contactdetails: $contactdetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RealEstateModel &&
            (identical(other.docid, docid) ||
                const DeepCollectionEquality().equals(other.docid, docid)) &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)) &&
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)) &&
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
            (identical(other.hassecurity, hassecurity) || const DeepCollectionEquality().equals(other.hassecurity, hassecurity)) &&
            (identical(other.has24hrwater, has24hrwater) || const DeepCollectionEquality().equals(other.has24hrwater, has24hrwater)) &&
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
      const DeepCollectionEquality().hash(docid) ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(userid) ^
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
  _$RealEstateModelCopyWith<_RealEstateModel> get copyWith =>
      __$RealEstateModelCopyWithImpl<_RealEstateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RealEstateModelToJson(this);
  }
}

abstract class _RealEstateModel implements RealEstateModel {
  factory _RealEstateModel(
      {@JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'usagetype')
          String usagetype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'constructionstatus')
          String constructionstatus,
      @JsonKey(name: 'saletype')
          String saletype,
      @JsonKey(name: 'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountstartdate,
      @JsonKey(name: 'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime discountenddate,
      @JsonKey(name: 'occupancytype')
          String occupancytype,
      @JsonKey(name: 'tenantgenderfamilypreference')
          List<String> tenantgenderfamilypreference,
      @JsonKey(name: 'ownershiptype')
          String ownershiptype,
      @JsonKey(name: 'sqfeetarea')
          int sqfeetarea,
      @JsonKey(name: 'numrooms')
          int numrooms,
      @JsonKey(name: 'numbath')
          int numbath,
      @JsonKey(name: 'furnishedstatus')
          String furnishedstatus,
      @JsonKey(name: 'haspowerbackup')
          bool haspowerbackup,
      @JsonKey(name: 'hasclubhouse')
          bool hasclubhouse,
      @JsonKey(name: 'hassecurity')
          bool hassecurity,
      @JsonKey(name: 'has24hrwater')
          bool has24hrwater,
      @JsonKey(name: 'hasgaspipeline')
          bool hasgaspipeline,
      @JsonKey(name: 'hasparking')
          bool hasparking,
      @JsonKey(name: 'hasgreenarea')
          bool hasgreenarea,
      @JsonKey(name: 'hasinternet')
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
          ContactDetailsModel contactdetails}) = _$_RealEstateModel;

  factory _RealEstateModel.fromJson(Map<String, dynamic> json) =
      _$_RealEstateModel.fromJson;

  @override
  @JsonKey(name: 'docid')
  String get docid;
  @override
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  String get userid;
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
  @JsonKey(name: 'imagelist')
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
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get discountenddate;
  @override
  @JsonKey(name: 'occupancytype')
  String get occupancytype;
  @override
  @JsonKey(name: 'tenantgenderfamilypreference')
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
  @JsonKey(name: 'furnishedstatus')
  String get furnishedstatus;
  @override
  @JsonKey(name: 'haspowerbackup')
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
  @JsonKey(name: 'hasgaspipeline')
  bool get hasgaspipeline;
  @override
  @JsonKey(name: 'hasparking')
  bool get hasparking;
  @override
  @JsonKey(name: 'hasgreenarea')
  bool get hasgreenarea;
  @override
  @JsonKey(name: 'hasinternet')
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
  ContactDetailsModel get contactdetails;
  @override
  @JsonKey(ignore: true)
  _$RealEstateModelCopyWith<_RealEstateModel> get copyWith;
}

EcomVehicleModel _$EcomVehicleModelFromJson(Map<String, dynamic> json) {
  return _EcomVehicleModel.fromJson(json);
}

/// @nodoc
class _$EcomVehicleModelTearOff {
  const _$EcomVehicleModelTearOff();

// ignore: unused_element
  _EcomVehicleModel call(
      {@JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'vehicletype')
          String vehicletype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'contactdetails')
          ContactDetailsModel contactdetails,
      @JsonKey(name: 'make')
          String make,
      @JsonKey(name: 'model')
          String model,
      @JsonKey(name: 'yearbuild')
          int yearbuild,
      @JsonKey(name: 'milage')
          int milage,
      @JsonKey(name: 'exteriorcolor')
          String exteriorcolor,
      @JsonKey(name: 'interiorcolor')
          String interiorcolor,
      @JsonKey(name: 'cylinder')
          int cylinder,
      @JsonKey(name: 'fueltype')
          String fueltype,
      @JsonKey(name: 'bodytype')
          String bodytype,
      @JsonKey(name: 'drivetype')
          String drivetype,
      @JsonKey(name: 'transmission')
          String transmission,
      @JsonKey(name: 'ownershiptransfer')
          String ownershiptransfer,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'seatingcapacity')
          int seatingcapacity,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate,
      @JsonKey(name: 'turboengine')
          bool turboengine,
      @JsonKey(name: 'powersteering')
          bool powersteering,
      @JsonKey(name: 'parkingsensors')
          bool parkingsensors,
      @JsonKey(name: 'airbags')
          bool airbags,
      @JsonKey(name: 'cruisecontrol')
          bool cruisecontrol,
      @JsonKey(name: 'keylessentry')
          bool keylessentry,
      @JsonKey(name: 'sunroof')
          bool sunroof,
      @JsonKey(name: 'moonroof')
          bool moonroof,
      @JsonKey(name: 'alloywheels')
          bool alloywheels,
      @JsonKey(name: 'antilockbrakingsystem')
          bool antilockbrakingsystem,
      @JsonKey(name: 'automaticclimatecontrol')
          bool automaticclimatecontrol,
      @JsonKey(name: 'rearacvents')
          bool rearacvents,
      @JsonKey(name: 'remotetrunkopener')
          bool remotetrunkopener}) {
    return _EcomVehicleModel(
      serviceproviderid: serviceproviderid,
      userid: userid,
      docid: docid,
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
      seatingcapacity: seatingcapacity,
      creationdate: creationdate,
      turboengine: turboengine,
      powersteering: powersteering,
      parkingsensors: parkingsensors,
      airbags: airbags,
      cruisecontrol: cruisecontrol,
      keylessentry: keylessentry,
      sunroof: sunroof,
      moonroof: moonroof,
      alloywheels: alloywheels,
      antilockbrakingsystem: antilockbrakingsystem,
      automaticclimatecontrol: automaticclimatecontrol,
      rearacvents: rearacvents,
      remotetrunkopener: remotetrunkopener,
    );
  }

// ignore: unused_element
  EcomVehicleModel fromJson(Map<String, Object> json) {
    return EcomVehicleModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EcomVehicleModel = _$EcomVehicleModelTearOff();

/// @nodoc
mixin _$EcomVehicleModel {
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'userid')
  String get userid;
  @JsonKey(name: 'docid')
  String get docid;
  @JsonKey(name: 'servicetype')
  String get servicetype;
  @JsonKey(name: 'vehicletype')
  String get vehicletype;
  @JsonKey(name: 'propertytype')
  String get propertytype;
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
  ContactDetailsModel get contactdetails;
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
  @JsonKey(name: 'interiorcolor')
  String get interiorcolor;
  @JsonKey(name: 'cylinder')
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
  @JsonKey(name: 'seatingcapacity')
  int get seatingcapacity;
  @JsonKey(
      name: 'creationdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get creationdate;
  @JsonKey(name: 'turboengine')
  bool get turboengine;
  @JsonKey(name: 'powersteering')
  bool get powersteering;
  @JsonKey(name: 'parkingsensors')
  bool get parkingsensors;
  @JsonKey(name: 'airbags')
  bool get airbags;
  @JsonKey(name: 'cruisecontrol')
  bool get cruisecontrol;
  @JsonKey(name: 'keylessentry')
  bool get keylessentry;
  @JsonKey(name: 'sunroof')
  bool get sunroof;
  @JsonKey(name: 'moonroof')
  bool get moonroof;
  @JsonKey(name: 'alloywheels')
  bool get alloywheels;
  @JsonKey(name: 'antilockbrakingsystem')
  bool get antilockbrakingsystem;
  @JsonKey(name: 'automaticclimatecontrol')
  bool get automaticclimatecontrol;
  @JsonKey(name: 'rearacvents')
  bool get rearacvents;
  @JsonKey(name: 'remotetrunkopener')
  bool get remotetrunkopener;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $EcomVehicleModelCopyWith<EcomVehicleModel> get copyWith;
}

/// @nodoc
abstract class $EcomVehicleModelCopyWith<$Res> {
  factory $EcomVehicleModelCopyWith(
          EcomVehicleModel value, $Res Function(EcomVehicleModel) then) =
      _$EcomVehicleModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'vehicletype')
          String vehicletype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'contactdetails')
          ContactDetailsModel contactdetails,
      @JsonKey(name: 'make')
          String make,
      @JsonKey(name: 'model')
          String model,
      @JsonKey(name: 'yearbuild')
          int yearbuild,
      @JsonKey(name: 'milage')
          int milage,
      @JsonKey(name: 'exteriorcolor')
          String exteriorcolor,
      @JsonKey(name: 'interiorcolor')
          String interiorcolor,
      @JsonKey(name: 'cylinder')
          int cylinder,
      @JsonKey(name: 'fueltype')
          String fueltype,
      @JsonKey(name: 'bodytype')
          String bodytype,
      @JsonKey(name: 'drivetype')
          String drivetype,
      @JsonKey(name: 'transmission')
          String transmission,
      @JsonKey(name: 'ownershiptransfer')
          String ownershiptransfer,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'seatingcapacity')
          int seatingcapacity,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate,
      @JsonKey(name: 'turboengine')
          bool turboengine,
      @JsonKey(name: 'powersteering')
          bool powersteering,
      @JsonKey(name: 'parkingsensors')
          bool parkingsensors,
      @JsonKey(name: 'airbags')
          bool airbags,
      @JsonKey(name: 'cruisecontrol')
          bool cruisecontrol,
      @JsonKey(name: 'keylessentry')
          bool keylessentry,
      @JsonKey(name: 'sunroof')
          bool sunroof,
      @JsonKey(name: 'moonroof')
          bool moonroof,
      @JsonKey(name: 'alloywheels')
          bool alloywheels,
      @JsonKey(name: 'antilockbrakingsystem')
          bool antilockbrakingsystem,
      @JsonKey(name: 'automaticclimatecontrol')
          bool automaticclimatecontrol,
      @JsonKey(name: 'rearacvents')
          bool rearacvents,
      @JsonKey(name: 'remotetrunkopener')
          bool remotetrunkopener});

  $ContactDetailsModelCopyWith<$Res> get contactdetails;
}

/// @nodoc
class _$EcomVehicleModelCopyWithImpl<$Res>
    implements $EcomVehicleModelCopyWith<$Res> {
  _$EcomVehicleModelCopyWithImpl(this._value, this._then);

  final EcomVehicleModel _value;
  // ignore: unused_field
  final $Res Function(EcomVehicleModel) _then;

  @override
  $Res call({
    Object serviceproviderid = freezed,
    Object userid = freezed,
    Object docid = freezed,
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
    Object seatingcapacity = freezed,
    Object creationdate = freezed,
    Object turboengine = freezed,
    Object powersteering = freezed,
    Object parkingsensors = freezed,
    Object airbags = freezed,
    Object cruisecontrol = freezed,
    Object keylessentry = freezed,
    Object sunroof = freezed,
    Object moonroof = freezed,
    Object alloywheels = freezed,
    Object antilockbrakingsystem = freezed,
    Object automaticclimatecontrol = freezed,
    Object rearacvents = freezed,
    Object remotetrunkopener = freezed,
  }) {
    return _then(_value.copyWith(
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
      docid: docid == freezed ? _value.docid : docid as String,
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
          : contactdetails as ContactDetailsModel,
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
      seatingcapacity: seatingcapacity == freezed
          ? _value.seatingcapacity
          : seatingcapacity as int,
      creationdate: creationdate == freezed
          ? _value.creationdate
          : creationdate as DateTime,
      turboengine:
          turboengine == freezed ? _value.turboengine : turboengine as bool,
      powersteering: powersteering == freezed
          ? _value.powersteering
          : powersteering as bool,
      parkingsensors: parkingsensors == freezed
          ? _value.parkingsensors
          : parkingsensors as bool,
      airbags: airbags == freezed ? _value.airbags : airbags as bool,
      cruisecontrol: cruisecontrol == freezed
          ? _value.cruisecontrol
          : cruisecontrol as bool,
      keylessentry:
          keylessentry == freezed ? _value.keylessentry : keylessentry as bool,
      sunroof: sunroof == freezed ? _value.sunroof : sunroof as bool,
      moonroof: moonroof == freezed ? _value.moonroof : moonroof as bool,
      alloywheels:
          alloywheels == freezed ? _value.alloywheels : alloywheels as bool,
      antilockbrakingsystem: antilockbrakingsystem == freezed
          ? _value.antilockbrakingsystem
          : antilockbrakingsystem as bool,
      automaticclimatecontrol: automaticclimatecontrol == freezed
          ? _value.automaticclimatecontrol
          : automaticclimatecontrol as bool,
      rearacvents:
          rearacvents == freezed ? _value.rearacvents : rearacvents as bool,
      remotetrunkopener: remotetrunkopener == freezed
          ? _value.remotetrunkopener
          : remotetrunkopener as bool,
    ));
  }

  @override
  $ContactDetailsModelCopyWith<$Res> get contactdetails {
    if (_value.contactdetails == null) {
      return null;
    }
    return $ContactDetailsModelCopyWith<$Res>(_value.contactdetails, (value) {
      return _then(_value.copyWith(contactdetails: value));
    });
  }
}

/// @nodoc
abstract class _$EcomVehicleModelCopyWith<$Res>
    implements $EcomVehicleModelCopyWith<$Res> {
  factory _$EcomVehicleModelCopyWith(
          _EcomVehicleModel value, $Res Function(_EcomVehicleModel) then) =
      __$EcomVehicleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'vehicletype')
          String vehicletype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'contactdetails')
          ContactDetailsModel contactdetails,
      @JsonKey(name: 'make')
          String make,
      @JsonKey(name: 'model')
          String model,
      @JsonKey(name: 'yearbuild')
          int yearbuild,
      @JsonKey(name: 'milage')
          int milage,
      @JsonKey(name: 'exteriorcolor')
          String exteriorcolor,
      @JsonKey(name: 'interiorcolor')
          String interiorcolor,
      @JsonKey(name: 'cylinder')
          int cylinder,
      @JsonKey(name: 'fueltype')
          String fueltype,
      @JsonKey(name: 'bodytype')
          String bodytype,
      @JsonKey(name: 'drivetype')
          String drivetype,
      @JsonKey(name: 'transmission')
          String transmission,
      @JsonKey(name: 'ownershiptransfer')
          String ownershiptransfer,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'seatingcapacity')
          int seatingcapacity,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate,
      @JsonKey(name: 'turboengine')
          bool turboengine,
      @JsonKey(name: 'powersteering')
          bool powersteering,
      @JsonKey(name: 'parkingsensors')
          bool parkingsensors,
      @JsonKey(name: 'airbags')
          bool airbags,
      @JsonKey(name: 'cruisecontrol')
          bool cruisecontrol,
      @JsonKey(name: 'keylessentry')
          bool keylessentry,
      @JsonKey(name: 'sunroof')
          bool sunroof,
      @JsonKey(name: 'moonroof')
          bool moonroof,
      @JsonKey(name: 'alloywheels')
          bool alloywheels,
      @JsonKey(name: 'antilockbrakingsystem')
          bool antilockbrakingsystem,
      @JsonKey(name: 'automaticclimatecontrol')
          bool automaticclimatecontrol,
      @JsonKey(name: 'rearacvents')
          bool rearacvents,
      @JsonKey(name: 'remotetrunkopener')
          bool remotetrunkopener});

  @override
  $ContactDetailsModelCopyWith<$Res> get contactdetails;
}

/// @nodoc
class __$EcomVehicleModelCopyWithImpl<$Res>
    extends _$EcomVehicleModelCopyWithImpl<$Res>
    implements _$EcomVehicleModelCopyWith<$Res> {
  __$EcomVehicleModelCopyWithImpl(
      _EcomVehicleModel _value, $Res Function(_EcomVehicleModel) _then)
      : super(_value, (v) => _then(v as _EcomVehicleModel));

  @override
  _EcomVehicleModel get _value => super._value as _EcomVehicleModel;

  @override
  $Res call({
    Object serviceproviderid = freezed,
    Object userid = freezed,
    Object docid = freezed,
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
    Object seatingcapacity = freezed,
    Object creationdate = freezed,
    Object turboengine = freezed,
    Object powersteering = freezed,
    Object parkingsensors = freezed,
    Object airbags = freezed,
    Object cruisecontrol = freezed,
    Object keylessentry = freezed,
    Object sunroof = freezed,
    Object moonroof = freezed,
    Object alloywheels = freezed,
    Object antilockbrakingsystem = freezed,
    Object automaticclimatecontrol = freezed,
    Object rearacvents = freezed,
    Object remotetrunkopener = freezed,
  }) {
    return _then(_EcomVehicleModel(
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
      docid: docid == freezed ? _value.docid : docid as String,
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
          : contactdetails as ContactDetailsModel,
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
      seatingcapacity: seatingcapacity == freezed
          ? _value.seatingcapacity
          : seatingcapacity as int,
      creationdate: creationdate == freezed
          ? _value.creationdate
          : creationdate as DateTime,
      turboengine:
          turboengine == freezed ? _value.turboengine : turboengine as bool,
      powersteering: powersteering == freezed
          ? _value.powersteering
          : powersteering as bool,
      parkingsensors: parkingsensors == freezed
          ? _value.parkingsensors
          : parkingsensors as bool,
      airbags: airbags == freezed ? _value.airbags : airbags as bool,
      cruisecontrol: cruisecontrol == freezed
          ? _value.cruisecontrol
          : cruisecontrol as bool,
      keylessentry:
          keylessentry == freezed ? _value.keylessentry : keylessentry as bool,
      sunroof: sunroof == freezed ? _value.sunroof : sunroof as bool,
      moonroof: moonroof == freezed ? _value.moonroof : moonroof as bool,
      alloywheels:
          alloywheels == freezed ? _value.alloywheels : alloywheels as bool,
      antilockbrakingsystem: antilockbrakingsystem == freezed
          ? _value.antilockbrakingsystem
          : antilockbrakingsystem as bool,
      automaticclimatecontrol: automaticclimatecontrol == freezed
          ? _value.automaticclimatecontrol
          : automaticclimatecontrol as bool,
      rearacvents:
          rearacvents == freezed ? _value.rearacvents : rearacvents as bool,
      remotetrunkopener: remotetrunkopener == freezed
          ? _value.remotetrunkopener
          : remotetrunkopener as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EcomVehicleModel implements _EcomVehicleModel {
  _$_EcomVehicleModel(
      {@JsonKey(name: 'serviceproviderid')
          this.serviceproviderid,
      @JsonKey(name: 'userid')
          this.userid,
      @JsonKey(name: 'docid')
          this.docid,
      @JsonKey(name: 'servicetype')
          this.servicetype,
      @JsonKey(name: 'vehicletype')
          this.vehicletype,
      @JsonKey(name: 'propertytype')
          this.propertytype,
      @JsonKey(name: 'tileimage')
          this.tileimage,
      @JsonKey(name: 'imagelist')
          this.imagelist,
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'description')
          this.description,
      @JsonKey(name: 'listingownertype')
          this.listingownertype,
      @JsonKey(name: 'contactdetails')
          this.contactdetails,
      @JsonKey(name: 'make')
          this.make,
      @JsonKey(name: 'model')
          this.model,
      @JsonKey(name: 'yearbuild')
          this.yearbuild,
      @JsonKey(name: 'milage')
          this.milage,
      @JsonKey(name: 'exteriorcolor')
          this.exteriorcolor,
      @JsonKey(name: 'interiorcolor')
          this.interiorcolor,
      @JsonKey(name: 'cylinder')
          this.cylinder,
      @JsonKey(name: 'fueltype')
          this.fueltype,
      @JsonKey(name: 'bodytype')
          this.bodytype,
      @JsonKey(name: 'drivetype')
          this.drivetype,
      @JsonKey(name: 'transmission')
          this.transmission,
      @JsonKey(name: 'ownershiptransfer')
          this.ownershiptransfer,
      @JsonKey(name: 'price')
          this.price,
      @JsonKey(name: 'seatingcapacity')
          this.seatingcapacity,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.creationdate,
      @JsonKey(name: 'turboengine')
          this.turboengine,
      @JsonKey(name: 'powersteering')
          this.powersteering,
      @JsonKey(name: 'parkingsensors')
          this.parkingsensors,
      @JsonKey(name: 'airbags')
          this.airbags,
      @JsonKey(name: 'cruisecontrol')
          this.cruisecontrol,
      @JsonKey(name: 'keylessentry')
          this.keylessentry,
      @JsonKey(name: 'sunroof')
          this.sunroof,
      @JsonKey(name: 'moonroof')
          this.moonroof,
      @JsonKey(name: 'alloywheels')
          this.alloywheels,
      @JsonKey(name: 'antilockbrakingsystem')
          this.antilockbrakingsystem,
      @JsonKey(name: 'automaticclimatecontrol')
          this.automaticclimatecontrol,
      @JsonKey(name: 'rearacvents')
          this.rearacvents,
      @JsonKey(name: 'remotetrunkopener')
          this.remotetrunkopener});

  factory _$_EcomVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EcomVehicleModelFromJson(json);

  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  final String userid;
  @override
  @JsonKey(name: 'docid')
  final String docid;
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
  final ContactDetailsModel contactdetails;
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
  @JsonKey(name: 'interiorcolor')
  final String interiorcolor;
  @override
  @JsonKey(name: 'cylinder')
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
  @JsonKey(name: 'seatingcapacity')
  final int seatingcapacity;
  @override
  @JsonKey(
      name: 'creationdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime creationdate;
  @override
  @JsonKey(name: 'turboengine')
  final bool turboengine;
  @override
  @JsonKey(name: 'powersteering')
  final bool powersteering;
  @override
  @JsonKey(name: 'parkingsensors')
  final bool parkingsensors;
  @override
  @JsonKey(name: 'airbags')
  final bool airbags;
  @override
  @JsonKey(name: 'cruisecontrol')
  final bool cruisecontrol;
  @override
  @JsonKey(name: 'keylessentry')
  final bool keylessentry;
  @override
  @JsonKey(name: 'sunroof')
  final bool sunroof;
  @override
  @JsonKey(name: 'moonroof')
  final bool moonroof;
  @override
  @JsonKey(name: 'alloywheels')
  final bool alloywheels;
  @override
  @JsonKey(name: 'antilockbrakingsystem')
  final bool antilockbrakingsystem;
  @override
  @JsonKey(name: 'automaticclimatecontrol')
  final bool automaticclimatecontrol;
  @override
  @JsonKey(name: 'rearacvents')
  final bool rearacvents;
  @override
  @JsonKey(name: 'remotetrunkopener')
  final bool remotetrunkopener;

  @override
  String toString() {
    return 'EcomVehicleModel(serviceproviderid: $serviceproviderid, userid: $userid, docid: $docid, servicetype: $servicetype, vehicletype: $vehicletype, propertytype: $propertytype, tileimage: $tileimage, imagelist: $imagelist, title: $title, description: $description, listingownertype: $listingownertype, contactdetails: $contactdetails, make: $make, model: $model, yearbuild: $yearbuild, milage: $milage, exteriorcolor: $exteriorcolor, interiorcolor: $interiorcolor, cylinder: $cylinder, fueltype: $fueltype, bodytype: $bodytype, drivetype: $drivetype, transmission: $transmission, ownershiptransfer: $ownershiptransfer, price: $price, seatingcapacity: $seatingcapacity, creationdate: $creationdate, turboengine: $turboengine, powersteering: $powersteering, parkingsensors: $parkingsensors, airbags: $airbags, cruisecontrol: $cruisecontrol, keylessentry: $keylessentry, sunroof: $sunroof, moonroof: $moonroof, alloywheels: $alloywheels, antilockbrakingsystem: $antilockbrakingsystem, automaticclimatecontrol: $automaticclimatecontrol, rearacvents: $rearacvents, remotetrunkopener: $remotetrunkopener)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EcomVehicleModel &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)) &&
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)) &&
            (identical(other.docid, docid) ||
                const DeepCollectionEquality().equals(other.docid, docid)) &&
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
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.seatingcapacity, seatingcapacity) || const DeepCollectionEquality().equals(other.seatingcapacity, seatingcapacity)) &&
            (identical(other.creationdate, creationdate) || const DeepCollectionEquality().equals(other.creationdate, creationdate)) &&
            (identical(other.turboengine, turboengine) || const DeepCollectionEquality().equals(other.turboengine, turboengine)) &&
            (identical(other.powersteering, powersteering) || const DeepCollectionEquality().equals(other.powersteering, powersteering)) &&
            (identical(other.parkingsensors, parkingsensors) || const DeepCollectionEquality().equals(other.parkingsensors, parkingsensors)) &&
            (identical(other.airbags, airbags) || const DeepCollectionEquality().equals(other.airbags, airbags)) &&
            (identical(other.cruisecontrol, cruisecontrol) || const DeepCollectionEquality().equals(other.cruisecontrol, cruisecontrol)) &&
            (identical(other.keylessentry, keylessentry) || const DeepCollectionEquality().equals(other.keylessentry, keylessentry)) &&
            (identical(other.sunroof, sunroof) || const DeepCollectionEquality().equals(other.sunroof, sunroof)) &&
            (identical(other.moonroof, moonroof) || const DeepCollectionEquality().equals(other.moonroof, moonroof)) &&
            (identical(other.alloywheels, alloywheels) || const DeepCollectionEquality().equals(other.alloywheels, alloywheels)) &&
            (identical(other.antilockbrakingsystem, antilockbrakingsystem) || const DeepCollectionEquality().equals(other.antilockbrakingsystem, antilockbrakingsystem)) &&
            (identical(other.automaticclimatecontrol, automaticclimatecontrol) || const DeepCollectionEquality().equals(other.automaticclimatecontrol, automaticclimatecontrol)) &&
            (identical(other.rearacvents, rearacvents) || const DeepCollectionEquality().equals(other.rearacvents, rearacvents)) &&
            (identical(other.remotetrunkopener, remotetrunkopener) || const DeepCollectionEquality().equals(other.remotetrunkopener, remotetrunkopener)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(userid) ^
      const DeepCollectionEquality().hash(docid) ^
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
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(seatingcapacity) ^
      const DeepCollectionEquality().hash(creationdate) ^
      const DeepCollectionEquality().hash(turboengine) ^
      const DeepCollectionEquality().hash(powersteering) ^
      const DeepCollectionEquality().hash(parkingsensors) ^
      const DeepCollectionEquality().hash(airbags) ^
      const DeepCollectionEquality().hash(cruisecontrol) ^
      const DeepCollectionEquality().hash(keylessentry) ^
      const DeepCollectionEquality().hash(sunroof) ^
      const DeepCollectionEquality().hash(moonroof) ^
      const DeepCollectionEquality().hash(alloywheels) ^
      const DeepCollectionEquality().hash(antilockbrakingsystem) ^
      const DeepCollectionEquality().hash(automaticclimatecontrol) ^
      const DeepCollectionEquality().hash(rearacvents) ^
      const DeepCollectionEquality().hash(remotetrunkopener);

  @JsonKey(ignore: true)
  @override
  _$EcomVehicleModelCopyWith<_EcomVehicleModel> get copyWith =>
      __$EcomVehicleModelCopyWithImpl<_EcomVehicleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EcomVehicleModelToJson(this);
  }
}

abstract class _EcomVehicleModel implements EcomVehicleModel {
  factory _EcomVehicleModel(
      {@JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'servicetype')
          String servicetype,
      @JsonKey(name: 'vehicletype')
          String vehicletype,
      @JsonKey(name: 'propertytype')
          String propertytype,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'contactdetails')
          ContactDetailsModel contactdetails,
      @JsonKey(name: 'make')
          String make,
      @JsonKey(name: 'model')
          String model,
      @JsonKey(name: 'yearbuild')
          int yearbuild,
      @JsonKey(name: 'milage')
          int milage,
      @JsonKey(name: 'exteriorcolor')
          String exteriorcolor,
      @JsonKey(name: 'interiorcolor')
          String interiorcolor,
      @JsonKey(name: 'cylinder')
          int cylinder,
      @JsonKey(name: 'fueltype')
          String fueltype,
      @JsonKey(name: 'bodytype')
          String bodytype,
      @JsonKey(name: 'drivetype')
          String drivetype,
      @JsonKey(name: 'transmission')
          String transmission,
      @JsonKey(name: 'ownershiptransfer')
          String ownershiptransfer,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'seatingcapacity')
          int seatingcapacity,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate,
      @JsonKey(name: 'turboengine')
          bool turboengine,
      @JsonKey(name: 'powersteering')
          bool powersteering,
      @JsonKey(name: 'parkingsensors')
          bool parkingsensors,
      @JsonKey(name: 'airbags')
          bool airbags,
      @JsonKey(name: 'cruisecontrol')
          bool cruisecontrol,
      @JsonKey(name: 'keylessentry')
          bool keylessentry,
      @JsonKey(name: 'sunroof')
          bool sunroof,
      @JsonKey(name: 'moonroof')
          bool moonroof,
      @JsonKey(name: 'alloywheels')
          bool alloywheels,
      @JsonKey(name: 'antilockbrakingsystem')
          bool antilockbrakingsystem,
      @JsonKey(name: 'automaticclimatecontrol')
          bool automaticclimatecontrol,
      @JsonKey(name: 'rearacvents')
          bool rearacvents,
      @JsonKey(name: 'remotetrunkopener')
          bool remotetrunkopener}) = _$_EcomVehicleModel;

  factory _EcomVehicleModel.fromJson(Map<String, dynamic> json) =
      _$_EcomVehicleModel.fromJson;

  @override
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  String get userid;
  @override
  @JsonKey(name: 'docid')
  String get docid;
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
  ContactDetailsModel get contactdetails;
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
  @JsonKey(name: 'interiorcolor')
  String get interiorcolor;
  @override
  @JsonKey(name: 'cylinder')
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
  @JsonKey(name: 'seatingcapacity')
  int get seatingcapacity;
  @override
  @JsonKey(
      name: 'creationdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get creationdate;
  @override
  @JsonKey(name: 'turboengine')
  bool get turboengine;
  @override
  @JsonKey(name: 'powersteering')
  bool get powersteering;
  @override
  @JsonKey(name: 'parkingsensors')
  bool get parkingsensors;
  @override
  @JsonKey(name: 'airbags')
  bool get airbags;
  @override
  @JsonKey(name: 'cruisecontrol')
  bool get cruisecontrol;
  @override
  @JsonKey(name: 'keylessentry')
  bool get keylessentry;
  @override
  @JsonKey(name: 'sunroof')
  bool get sunroof;
  @override
  @JsonKey(name: 'moonroof')
  bool get moonroof;
  @override
  @JsonKey(name: 'alloywheels')
  bool get alloywheels;
  @override
  @JsonKey(name: 'antilockbrakingsystem')
  bool get antilockbrakingsystem;
  @override
  @JsonKey(name: 'automaticclimatecontrol')
  bool get automaticclimatecontrol;
  @override
  @JsonKey(name: 'rearacvents')
  bool get rearacvents;
  @override
  @JsonKey(name: 'remotetrunkopener')
  bool get remotetrunkopener;
  @override
  @JsonKey(ignore: true)
  _$EcomVehicleModelCopyWith<_EcomVehicleModel> get copyWith;
}

PetModel _$PetModelFromJson(Map<String, dynamic> json) {
  return _PetModel.fromJson(json);
}

/// @nodoc
class _$PetModelTearOff {
  const _$PetModelTearOff();

// ignore: unused_element
  _PetModel call(
      {@JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'petclass')
          String petclass,
      @JsonKey(name: 'animaltype')
          String animaltype,
      @JsonKey(name: 'age')
          int age,
      @JsonKey(name: 'petname')
          String petname,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'contactdetails')
          ContactDetailsModel contactdetails,
      @JsonKey(name: 'breed')
          String breed,
      @JsonKey(name: 'vaccinated')
          bool vaccinated,
      @JsonKey(name: 'ismilking')
          bool ismilking,
      @JsonKey(name: 'milkqty')
          int milkqty,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate}) {
    return _PetModel(
      docid: docid,
      serviceproviderid: serviceproviderid,
      userid: userid,
      petclass: petclass,
      animaltype: animaltype,
      age: age,
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
      creationdate: creationdate,
    );
  }

// ignore: unused_element
  PetModel fromJson(Map<String, Object> json) {
    return PetModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetModel = _$PetModelTearOff();

/// @nodoc
mixin _$PetModel {
  @JsonKey(name: 'docid')
  String get docid;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'userid')
  String get userid;
  @JsonKey(name: 'petclass')
  String get petclass;
  @JsonKey(name: 'animaltype')
  String get animaltype;
  @JsonKey(name: 'age')
  int get age;
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
  ContactDetailsModel get contactdetails;
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
  @JsonKey(
      name: 'creationdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get creationdate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PetModelCopyWith<PetModel> get copyWith;
}

/// @nodoc
abstract class $PetModelCopyWith<$Res> {
  factory $PetModelCopyWith(PetModel value, $Res Function(PetModel) then) =
      _$PetModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'petclass')
          String petclass,
      @JsonKey(name: 'animaltype')
          String animaltype,
      @JsonKey(name: 'age')
          int age,
      @JsonKey(name: 'petname')
          String petname,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'contactdetails')
          ContactDetailsModel contactdetails,
      @JsonKey(name: 'breed')
          String breed,
      @JsonKey(name: 'vaccinated')
          bool vaccinated,
      @JsonKey(name: 'ismilking')
          bool ismilking,
      @JsonKey(name: 'milkqty')
          int milkqty,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate});

  $ContactDetailsModelCopyWith<$Res> get contactdetails;
}

/// @nodoc
class _$PetModelCopyWithImpl<$Res> implements $PetModelCopyWith<$Res> {
  _$PetModelCopyWithImpl(this._value, this._then);

  final PetModel _value;
  // ignore: unused_field
  final $Res Function(PetModel) _then;

  @override
  $Res call({
    Object docid = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
    Object petclass = freezed,
    Object animaltype = freezed,
    Object age = freezed,
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
    Object creationdate = freezed,
  }) {
    return _then(_value.copyWith(
      docid: docid == freezed ? _value.docid : docid as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
      petclass: petclass == freezed ? _value.petclass : petclass as String,
      animaltype:
          animaltype == freezed ? _value.animaltype : animaltype as String,
      age: age == freezed ? _value.age : age as int,
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
          : contactdetails as ContactDetailsModel,
      breed: breed == freezed ? _value.breed : breed as String,
      vaccinated:
          vaccinated == freezed ? _value.vaccinated : vaccinated as bool,
      ismilking: ismilking == freezed ? _value.ismilking : ismilking as bool,
      milkqty: milkqty == freezed ? _value.milkqty : milkqty as int,
      price: price == freezed ? _value.price : price as int,
      creationdate: creationdate == freezed
          ? _value.creationdate
          : creationdate as DateTime,
    ));
  }

  @override
  $ContactDetailsModelCopyWith<$Res> get contactdetails {
    if (_value.contactdetails == null) {
      return null;
    }
    return $ContactDetailsModelCopyWith<$Res>(_value.contactdetails, (value) {
      return _then(_value.copyWith(contactdetails: value));
    });
  }
}

/// @nodoc
abstract class _$PetModelCopyWith<$Res> implements $PetModelCopyWith<$Res> {
  factory _$PetModelCopyWith(_PetModel value, $Res Function(_PetModel) then) =
      __$PetModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'petclass')
          String petclass,
      @JsonKey(name: 'animaltype')
          String animaltype,
      @JsonKey(name: 'age')
          int age,
      @JsonKey(name: 'petname')
          String petname,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'contactdetails')
          ContactDetailsModel contactdetails,
      @JsonKey(name: 'breed')
          String breed,
      @JsonKey(name: 'vaccinated')
          bool vaccinated,
      @JsonKey(name: 'ismilking')
          bool ismilking,
      @JsonKey(name: 'milkqty')
          int milkqty,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate});

  @override
  $ContactDetailsModelCopyWith<$Res> get contactdetails;
}

/// @nodoc
class __$PetModelCopyWithImpl<$Res> extends _$PetModelCopyWithImpl<$Res>
    implements _$PetModelCopyWith<$Res> {
  __$PetModelCopyWithImpl(_PetModel _value, $Res Function(_PetModel) _then)
      : super(_value, (v) => _then(v as _PetModel));

  @override
  _PetModel get _value => super._value as _PetModel;

  @override
  $Res call({
    Object docid = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
    Object petclass = freezed,
    Object animaltype = freezed,
    Object age = freezed,
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
    Object creationdate = freezed,
  }) {
    return _then(_PetModel(
      docid: docid == freezed ? _value.docid : docid as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
      petclass: petclass == freezed ? _value.petclass : petclass as String,
      animaltype:
          animaltype == freezed ? _value.animaltype : animaltype as String,
      age: age == freezed ? _value.age : age as int,
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
          : contactdetails as ContactDetailsModel,
      breed: breed == freezed ? _value.breed : breed as String,
      vaccinated:
          vaccinated == freezed ? _value.vaccinated : vaccinated as bool,
      ismilking: ismilking == freezed ? _value.ismilking : ismilking as bool,
      milkqty: milkqty == freezed ? _value.milkqty : milkqty as int,
      price: price == freezed ? _value.price : price as int,
      creationdate: creationdate == freezed
          ? _value.creationdate
          : creationdate as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetModel implements _PetModel {
  _$_PetModel(
      {@JsonKey(name: 'docid')
          this.docid,
      @JsonKey(name: 'serviceproviderid')
          this.serviceproviderid,
      @JsonKey(name: 'userid')
          this.userid,
      @JsonKey(name: 'petclass')
          this.petclass,
      @JsonKey(name: 'animaltype')
          this.animaltype,
      @JsonKey(name: 'age')
          this.age,
      @JsonKey(name: 'petname')
          this.petname,
      @JsonKey(name: 'gender')
          this.gender,
      @JsonKey(name: 'tileimage')
          this.tileimage,
      @JsonKey(name: 'imagelist')
          this.imagelist,
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'description')
          this.description,
      @JsonKey(name: 'listingownertype')
          this.listingownertype,
      @JsonKey(name: 'contactdetails')
          this.contactdetails,
      @JsonKey(name: 'breed')
          this.breed,
      @JsonKey(name: 'vaccinated')
          this.vaccinated,
      @JsonKey(name: 'ismilking')
          this.ismilking,
      @JsonKey(name: 'milkqty')
          this.milkqty,
      @JsonKey(name: 'price')
          this.price,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.creationdate});

  factory _$_PetModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PetModelFromJson(json);

  @override
  @JsonKey(name: 'docid')
  final String docid;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  final String userid;
  @override
  @JsonKey(name: 'petclass')
  final String petclass;
  @override
  @JsonKey(name: 'animaltype')
  final String animaltype;
  @override
  @JsonKey(name: 'age')
  final int age;
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
  final ContactDetailsModel contactdetails;
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
  @JsonKey(
      name: 'creationdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime creationdate;

  @override
  String toString() {
    return 'PetModel(docid: $docid, serviceproviderid: $serviceproviderid, userid: $userid, petclass: $petclass, animaltype: $animaltype, age: $age, petname: $petname, gender: $gender, tileimage: $tileimage, imagelist: $imagelist, title: $title, description: $description, listingownertype: $listingownertype, contactdetails: $contactdetails, breed: $breed, vaccinated: $vaccinated, ismilking: $ismilking, milkqty: $milkqty, price: $price, creationdate: $creationdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetModel &&
            (identical(other.docid, docid) ||
                const DeepCollectionEquality().equals(other.docid, docid)) &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)) &&
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)) &&
            (identical(other.petclass, petclass) ||
                const DeepCollectionEquality()
                    .equals(other.petclass, petclass)) &&
            (identical(other.animaltype, animaltype) ||
                const DeepCollectionEquality()
                    .equals(other.animaltype, animaltype)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
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
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.creationdate, creationdate) ||
                const DeepCollectionEquality()
                    .equals(other.creationdate, creationdate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(docid) ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(userid) ^
      const DeepCollectionEquality().hash(petclass) ^
      const DeepCollectionEquality().hash(animaltype) ^
      const DeepCollectionEquality().hash(age) ^
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
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(creationdate);

  @JsonKey(ignore: true)
  @override
  _$PetModelCopyWith<_PetModel> get copyWith =>
      __$PetModelCopyWithImpl<_PetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetModelToJson(this);
  }
}

abstract class _PetModel implements PetModel {
  factory _PetModel(
      {@JsonKey(name: 'docid')
          String docid,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'petclass')
          String petclass,
      @JsonKey(name: 'animaltype')
          String animaltype,
      @JsonKey(name: 'age')
          int age,
      @JsonKey(name: 'petname')
          String petname,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'imagelist')
          List<String> imagelist,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'listingownertype')
          String listingownertype,
      @JsonKey(name: 'contactdetails')
          ContactDetailsModel contactdetails,
      @JsonKey(name: 'breed')
          String breed,
      @JsonKey(name: 'vaccinated')
          bool vaccinated,
      @JsonKey(name: 'ismilking')
          bool ismilking,
      @JsonKey(name: 'milkqty')
          int milkqty,
      @JsonKey(name: 'price')
          int price,
      @JsonKey(name: 'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime creationdate}) = _$_PetModel;

  factory _PetModel.fromJson(Map<String, dynamic> json) = _$_PetModel.fromJson;

  @override
  @JsonKey(name: 'docid')
  String get docid;
  @override
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  String get userid;
  @override
  @JsonKey(name: 'petclass')
  String get petclass;
  @override
  @JsonKey(name: 'animaltype')
  String get animaltype;
  @override
  @JsonKey(name: 'age')
  int get age;
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
  ContactDetailsModel get contactdetails;
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
  @JsonKey(
      name: 'creationdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get creationdate;
  @override
  @JsonKey(ignore: true)
  _$PetModelCopyWith<_PetModel> get copyWith;
}

JobPosting _$JobPostingFromJson(Map<String, dynamic> json) {
  return _JobPosting.fromJson(json);
}

/// @nodoc
class _$JobPostingTearOff {
  const _$JobPostingTearOff();

// ignore: unused_element
  _JobPosting call(
      {@JsonKey(name: 'docid') String docid,
      @JsonKey(name: 'serviceproviderid') String serviceproviderid,
      @JsonKey(name: 'userid') String userid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetailsModel contactdetails,
      @JsonKey(name: 'companyname') String companyname,
      @JsonKey(name: 'companylogo') String companylogo,
      @JsonKey(name: 'isparttime') bool isparttime,
      @JsonKey(name: 'minsalaryrange') int minsalaryrange,
      @JsonKey(name: 'maxsalaryrange') int maxsalaryrange,
      @JsonKey(name: 'educationqualification') String educationqualification,
      @JsonKey(name: 'arefreshersallowed') bool arefreshersallowed,
      @JsonKey(name: 'minyearexperience') int minyearexperience,
      @JsonKey(name: 'worktype') String worktype}) {
    return _JobPosting(
      docid: docid,
      serviceproviderid: serviceproviderid,
      userid: userid,
      title: title,
      description: description,
      listingownertype: listingownertype,
      contactdetails: contactdetails,
      companyname: companyname,
      companylogo: companylogo,
      isparttime: isparttime,
      minsalaryrange: minsalaryrange,
      maxsalaryrange: maxsalaryrange,
      educationqualification: educationqualification,
      arefreshersallowed: arefreshersallowed,
      minyearexperience: minyearexperience,
      worktype: worktype,
    );
  }

// ignore: unused_element
  JobPosting fromJson(Map<String, Object> json) {
    return JobPosting.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $JobPosting = _$JobPostingTearOff();

/// @nodoc
mixin _$JobPosting {
  @JsonKey(name: 'docid')
  String get docid;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'userid')
  String get userid;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'listingownertype')
  String get listingownertype;
  @JsonKey(name: 'contactdetails')
  ContactDetailsModel get contactdetails;
  @JsonKey(name: 'companyname')
  String get companyname;
  @JsonKey(name: 'companylogo')
  String get companylogo;
  @JsonKey(name: 'isparttime')
  bool get isparttime;
  @JsonKey(name: 'minsalaryrange')
  int get minsalaryrange;
  @JsonKey(name: 'maxsalaryrange')
  int get maxsalaryrange;
  @JsonKey(name: 'educationqualification')
  String get educationqualification;
  @JsonKey(name: 'arefreshersallowed')
  bool get arefreshersallowed;
  @JsonKey(name: 'minyearexperience')
  int get minyearexperience;
  @JsonKey(name: 'worktype')
  String get worktype;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $JobPostingCopyWith<JobPosting> get copyWith;
}

/// @nodoc
abstract class $JobPostingCopyWith<$Res> {
  factory $JobPostingCopyWith(
          JobPosting value, $Res Function(JobPosting) then) =
      _$JobPostingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'docid') String docid,
      @JsonKey(name: 'serviceproviderid') String serviceproviderid,
      @JsonKey(name: 'userid') String userid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetailsModel contactdetails,
      @JsonKey(name: 'companyname') String companyname,
      @JsonKey(name: 'companylogo') String companylogo,
      @JsonKey(name: 'isparttime') bool isparttime,
      @JsonKey(name: 'minsalaryrange') int minsalaryrange,
      @JsonKey(name: 'maxsalaryrange') int maxsalaryrange,
      @JsonKey(name: 'educationqualification') String educationqualification,
      @JsonKey(name: 'arefreshersallowed') bool arefreshersallowed,
      @JsonKey(name: 'minyearexperience') int minyearexperience,
      @JsonKey(name: 'worktype') String worktype});

  $ContactDetailsModelCopyWith<$Res> get contactdetails;
}

/// @nodoc
class _$JobPostingCopyWithImpl<$Res> implements $JobPostingCopyWith<$Res> {
  _$JobPostingCopyWithImpl(this._value, this._then);

  final JobPosting _value;
  // ignore: unused_field
  final $Res Function(JobPosting) _then;

  @override
  $Res call({
    Object docid = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
    Object title = freezed,
    Object description = freezed,
    Object listingownertype = freezed,
    Object contactdetails = freezed,
    Object companyname = freezed,
    Object companylogo = freezed,
    Object isparttime = freezed,
    Object minsalaryrange = freezed,
    Object maxsalaryrange = freezed,
    Object educationqualification = freezed,
    Object arefreshersallowed = freezed,
    Object minyearexperience = freezed,
    Object worktype = freezed,
  }) {
    return _then(_value.copyWith(
      docid: docid == freezed ? _value.docid : docid as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      listingownertype: listingownertype == freezed
          ? _value.listingownertype
          : listingownertype as String,
      contactdetails: contactdetails == freezed
          ? _value.contactdetails
          : contactdetails as ContactDetailsModel,
      companyname:
          companyname == freezed ? _value.companyname : companyname as String,
      companylogo:
          companylogo == freezed ? _value.companylogo : companylogo as String,
      isparttime:
          isparttime == freezed ? _value.isparttime : isparttime as bool,
      minsalaryrange: minsalaryrange == freezed
          ? _value.minsalaryrange
          : minsalaryrange as int,
      maxsalaryrange: maxsalaryrange == freezed
          ? _value.maxsalaryrange
          : maxsalaryrange as int,
      educationqualification: educationqualification == freezed
          ? _value.educationqualification
          : educationqualification as String,
      arefreshersallowed: arefreshersallowed == freezed
          ? _value.arefreshersallowed
          : arefreshersallowed as bool,
      minyearexperience: minyearexperience == freezed
          ? _value.minyearexperience
          : minyearexperience as int,
      worktype: worktype == freezed ? _value.worktype : worktype as String,
    ));
  }

  @override
  $ContactDetailsModelCopyWith<$Res> get contactdetails {
    if (_value.contactdetails == null) {
      return null;
    }
    return $ContactDetailsModelCopyWith<$Res>(_value.contactdetails, (value) {
      return _then(_value.copyWith(contactdetails: value));
    });
  }
}

/// @nodoc
abstract class _$JobPostingCopyWith<$Res> implements $JobPostingCopyWith<$Res> {
  factory _$JobPostingCopyWith(
          _JobPosting value, $Res Function(_JobPosting) then) =
      __$JobPostingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid') String docid,
      @JsonKey(name: 'serviceproviderid') String serviceproviderid,
      @JsonKey(name: 'userid') String userid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetailsModel contactdetails,
      @JsonKey(name: 'companyname') String companyname,
      @JsonKey(name: 'companylogo') String companylogo,
      @JsonKey(name: 'isparttime') bool isparttime,
      @JsonKey(name: 'minsalaryrange') int minsalaryrange,
      @JsonKey(name: 'maxsalaryrange') int maxsalaryrange,
      @JsonKey(name: 'educationqualification') String educationqualification,
      @JsonKey(name: 'arefreshersallowed') bool arefreshersallowed,
      @JsonKey(name: 'minyearexperience') int minyearexperience,
      @JsonKey(name: 'worktype') String worktype});

  @override
  $ContactDetailsModelCopyWith<$Res> get contactdetails;
}

/// @nodoc
class __$JobPostingCopyWithImpl<$Res> extends _$JobPostingCopyWithImpl<$Res>
    implements _$JobPostingCopyWith<$Res> {
  __$JobPostingCopyWithImpl(
      _JobPosting _value, $Res Function(_JobPosting) _then)
      : super(_value, (v) => _then(v as _JobPosting));

  @override
  _JobPosting get _value => super._value as _JobPosting;

  @override
  $Res call({
    Object docid = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
    Object title = freezed,
    Object description = freezed,
    Object listingownertype = freezed,
    Object contactdetails = freezed,
    Object companyname = freezed,
    Object companylogo = freezed,
    Object isparttime = freezed,
    Object minsalaryrange = freezed,
    Object maxsalaryrange = freezed,
    Object educationqualification = freezed,
    Object arefreshersallowed = freezed,
    Object minyearexperience = freezed,
    Object worktype = freezed,
  }) {
    return _then(_JobPosting(
      docid: docid == freezed ? _value.docid : docid as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      listingownertype: listingownertype == freezed
          ? _value.listingownertype
          : listingownertype as String,
      contactdetails: contactdetails == freezed
          ? _value.contactdetails
          : contactdetails as ContactDetailsModel,
      companyname:
          companyname == freezed ? _value.companyname : companyname as String,
      companylogo:
          companylogo == freezed ? _value.companylogo : companylogo as String,
      isparttime:
          isparttime == freezed ? _value.isparttime : isparttime as bool,
      minsalaryrange: minsalaryrange == freezed
          ? _value.minsalaryrange
          : minsalaryrange as int,
      maxsalaryrange: maxsalaryrange == freezed
          ? _value.maxsalaryrange
          : maxsalaryrange as int,
      educationqualification: educationqualification == freezed
          ? _value.educationqualification
          : educationqualification as String,
      arefreshersallowed: arefreshersallowed == freezed
          ? _value.arefreshersallowed
          : arefreshersallowed as bool,
      minyearexperience: minyearexperience == freezed
          ? _value.minyearexperience
          : minyearexperience as int,
      worktype: worktype == freezed ? _value.worktype : worktype as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_JobPosting implements _JobPosting {
  _$_JobPosting(
      {@JsonKey(name: 'docid') this.docid,
      @JsonKey(name: 'serviceproviderid') this.serviceproviderid,
      @JsonKey(name: 'userid') this.userid,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'listingownertype') this.listingownertype,
      @JsonKey(name: 'contactdetails') this.contactdetails,
      @JsonKey(name: 'companyname') this.companyname,
      @JsonKey(name: 'companylogo') this.companylogo,
      @JsonKey(name: 'isparttime') this.isparttime,
      @JsonKey(name: 'minsalaryrange') this.minsalaryrange,
      @JsonKey(name: 'maxsalaryrange') this.maxsalaryrange,
      @JsonKey(name: 'educationqualification') this.educationqualification,
      @JsonKey(name: 'arefreshersallowed') this.arefreshersallowed,
      @JsonKey(name: 'minyearexperience') this.minyearexperience,
      @JsonKey(name: 'worktype') this.worktype});

  factory _$_JobPosting.fromJson(Map<String, dynamic> json) =>
      _$_$_JobPostingFromJson(json);

  @override
  @JsonKey(name: 'docid')
  final String docid;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  final String userid;
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
  final ContactDetailsModel contactdetails;
  @override
  @JsonKey(name: 'companyname')
  final String companyname;
  @override
  @JsonKey(name: 'companylogo')
  final String companylogo;
  @override
  @JsonKey(name: 'isparttime')
  final bool isparttime;
  @override
  @JsonKey(name: 'minsalaryrange')
  final int minsalaryrange;
  @override
  @JsonKey(name: 'maxsalaryrange')
  final int maxsalaryrange;
  @override
  @JsonKey(name: 'educationqualification')
  final String educationqualification;
  @override
  @JsonKey(name: 'arefreshersallowed')
  final bool arefreshersallowed;
  @override
  @JsonKey(name: 'minyearexperience')
  final int minyearexperience;
  @override
  @JsonKey(name: 'worktype')
  final String worktype;

  @override
  String toString() {
    return 'JobPosting(docid: $docid, serviceproviderid: $serviceproviderid, userid: $userid, title: $title, description: $description, listingownertype: $listingownertype, contactdetails: $contactdetails, companyname: $companyname, companylogo: $companylogo, isparttime: $isparttime, minsalaryrange: $minsalaryrange, maxsalaryrange: $maxsalaryrange, educationqualification: $educationqualification, arefreshersallowed: $arefreshersallowed, minyearexperience: $minyearexperience, worktype: $worktype)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobPosting &&
            (identical(other.docid, docid) ||
                const DeepCollectionEquality().equals(other.docid, docid)) &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)) &&
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)) &&
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
            (identical(other.companyname, companyname) ||
                const DeepCollectionEquality()
                    .equals(other.companyname, companyname)) &&
            (identical(other.companylogo, companylogo) ||
                const DeepCollectionEquality()
                    .equals(other.companylogo, companylogo)) &&
            (identical(other.isparttime, isparttime) ||
                const DeepCollectionEquality()
                    .equals(other.isparttime, isparttime)) &&
            (identical(other.minsalaryrange, minsalaryrange) ||
                const DeepCollectionEquality()
                    .equals(other.minsalaryrange, minsalaryrange)) &&
            (identical(other.maxsalaryrange, maxsalaryrange) ||
                const DeepCollectionEquality()
                    .equals(other.maxsalaryrange, maxsalaryrange)) &&
            (identical(other.educationqualification, educationqualification) ||
                const DeepCollectionEquality().equals(
                    other.educationqualification, educationqualification)) &&
            (identical(other.arefreshersallowed, arefreshersallowed) ||
                const DeepCollectionEquality()
                    .equals(other.arefreshersallowed, arefreshersallowed)) &&
            (identical(other.minyearexperience, minyearexperience) ||
                const DeepCollectionEquality()
                    .equals(other.minyearexperience, minyearexperience)) &&
            (identical(other.worktype, worktype) ||
                const DeepCollectionEquality()
                    .equals(other.worktype, worktype)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(docid) ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(userid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(listingownertype) ^
      const DeepCollectionEquality().hash(contactdetails) ^
      const DeepCollectionEquality().hash(companyname) ^
      const DeepCollectionEquality().hash(companylogo) ^
      const DeepCollectionEquality().hash(isparttime) ^
      const DeepCollectionEquality().hash(minsalaryrange) ^
      const DeepCollectionEquality().hash(maxsalaryrange) ^
      const DeepCollectionEquality().hash(educationqualification) ^
      const DeepCollectionEquality().hash(arefreshersallowed) ^
      const DeepCollectionEquality().hash(minyearexperience) ^
      const DeepCollectionEquality().hash(worktype);

  @JsonKey(ignore: true)
  @override
  _$JobPostingCopyWith<_JobPosting> get copyWith =>
      __$JobPostingCopyWithImpl<_JobPosting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JobPostingToJson(this);
  }
}

abstract class _JobPosting implements JobPosting {
  factory _JobPosting(
      {@JsonKey(name: 'docid') String docid,
      @JsonKey(name: 'serviceproviderid') String serviceproviderid,
      @JsonKey(name: 'userid') String userid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'listingownertype') String listingownertype,
      @JsonKey(name: 'contactdetails') ContactDetailsModel contactdetails,
      @JsonKey(name: 'companyname') String companyname,
      @JsonKey(name: 'companylogo') String companylogo,
      @JsonKey(name: 'isparttime') bool isparttime,
      @JsonKey(name: 'minsalaryrange') int minsalaryrange,
      @JsonKey(name: 'maxsalaryrange') int maxsalaryrange,
      @JsonKey(name: 'educationqualification') String educationqualification,
      @JsonKey(name: 'arefreshersallowed') bool arefreshersallowed,
      @JsonKey(name: 'minyearexperience') int minyearexperience,
      @JsonKey(name: 'worktype') String worktype}) = _$_JobPosting;

  factory _JobPosting.fromJson(Map<String, dynamic> json) =
      _$_JobPosting.fromJson;

  @override
  @JsonKey(name: 'docid')
  String get docid;
  @override
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  String get userid;
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
  ContactDetailsModel get contactdetails;
  @override
  @JsonKey(name: 'companyname')
  String get companyname;
  @override
  @JsonKey(name: 'companylogo')
  String get companylogo;
  @override
  @JsonKey(name: 'isparttime')
  bool get isparttime;
  @override
  @JsonKey(name: 'minsalaryrange')
  int get minsalaryrange;
  @override
  @JsonKey(name: 'maxsalaryrange')
  int get maxsalaryrange;
  @override
  @JsonKey(name: 'educationqualification')
  String get educationqualification;
  @override
  @JsonKey(name: 'arefreshersallowed')
  bool get arefreshersallowed;
  @override
  @JsonKey(name: 'minyearexperience')
  int get minyearexperience;
  @override
  @JsonKey(name: 'worktype')
  String get worktype;
  @override
  @JsonKey(ignore: true)
  _$JobPostingCopyWith<_JobPosting> get copyWith;
}

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

// ignore: unused_element
  _ProductModel call(
      {@JsonKey(name: 'docid')
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
      @JsonKey(name: 'sizetype')
          String sizetype,
      @JsonKey(name: 'nopackagedata')
          NoPackageModel nopackagedata,
      @JsonKey(name: 'packagedata')
          List<PackageModel> packagedata,
      @JsonKey(name: 'sizeandcolordata')
          List<SizeAndColorModel> sizeandcolordata,
      @JsonKey(name: 'custompackagedata')
          List<CustomPackageModel> custompackagedata,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid}) {
    return _ProductModel(
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
      sizetype: sizetype,
      nopackagedata: nopackagedata,
      packagedata: packagedata,
      sizeandcolordata: sizeandcolordata,
      custompackagedata: custompackagedata,
      addressarea: addressarea,
      serviceproviderid: serviceproviderid,
      userid: userid,
    );
  }

// ignore: unused_element
  ProductModel fromJson(Map<String, Object> json) {
    return ProductModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  @JsonKey(name: 'docid')
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
  @JsonKey(name: 'sizetype')
  String get sizetype;
  @JsonKey(name: 'nopackagedata')
  NoPackageModel get nopackagedata;
  @JsonKey(name: 'packagedata')
  List<PackageModel> get packagedata;
  @JsonKey(name: 'sizeandcolordata')
  List<SizeAndColorModel> get sizeandcolordata;
  @JsonKey(name: 'custompackagedata')
  List<CustomPackageModel> get custompackagedata;
  @JsonKey(name: 'addressarea')
  ContactDetailsModel get addressarea;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'userid')
  String get userid;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'docid')
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
      @JsonKey(name: 'sizetype')
          String sizetype,
      @JsonKey(name: 'nopackagedata')
          NoPackageModel nopackagedata,
      @JsonKey(name: 'packagedata')
          List<PackageModel> packagedata,
      @JsonKey(name: 'sizeandcolordata')
          List<SizeAndColorModel> sizeandcolordata,
      @JsonKey(name: 'custompackagedata')
          List<CustomPackageModel> custompackagedata,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid});

  $NoPackageModelCopyWith<$Res> get nopackagedata;
  $ContactDetailsModelCopyWith<$Res> get addressarea;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

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
    Object sizetype = freezed,
    Object nopackagedata = freezed,
    Object packagedata = freezed,
    Object sizeandcolordata = freezed,
    Object custompackagedata = freezed,
    Object addressarea = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
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
      sizetype: sizetype == freezed ? _value.sizetype : sizetype as String,
      nopackagedata: nopackagedata == freezed
          ? _value.nopackagedata
          : nopackagedata as NoPackageModel,
      packagedata: packagedata == freezed
          ? _value.packagedata
          : packagedata as List<PackageModel>,
      sizeandcolordata: sizeandcolordata == freezed
          ? _value.sizeandcolordata
          : sizeandcolordata as List<SizeAndColorModel>,
      custompackagedata: custompackagedata == freezed
          ? _value.custompackagedata
          : custompackagedata as List<CustomPackageModel>,
      addressarea: addressarea == freezed
          ? _value.addressarea
          : addressarea as ContactDetailsModel,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
    ));
  }

  @override
  $NoPackageModelCopyWith<$Res> get nopackagedata {
    if (_value.nopackagedata == null) {
      return null;
    }
    return $NoPackageModelCopyWith<$Res>(_value.nopackagedata, (value) {
      return _then(_value.copyWith(nopackagedata: value));
    });
  }

  @override
  $ContactDetailsModelCopyWith<$Res> get addressarea {
    if (_value.addressarea == null) {
      return null;
    }
    return $ContactDetailsModelCopyWith<$Res>(_value.addressarea, (value) {
      return _then(_value.copyWith(addressarea: value));
    });
  }
}

/// @nodoc
abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'docid')
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
      @JsonKey(name: 'sizetype')
          String sizetype,
      @JsonKey(name: 'nopackagedata')
          NoPackageModel nopackagedata,
      @JsonKey(name: 'packagedata')
          List<PackageModel> packagedata,
      @JsonKey(name: 'sizeandcolordata')
          List<SizeAndColorModel> sizeandcolordata,
      @JsonKey(name: 'custompackagedata')
          List<CustomPackageModel> custompackagedata,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid});

  @override
  $NoPackageModelCopyWith<$Res> get nopackagedata;
  @override
  $ContactDetailsModelCopyWith<$Res> get addressarea;
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

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
    Object sizetype = freezed,
    Object nopackagedata = freezed,
    Object packagedata = freezed,
    Object sizeandcolordata = freezed,
    Object custompackagedata = freezed,
    Object addressarea = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
  }) {
    return _then(_ProductModel(
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
      sizetype: sizetype == freezed ? _value.sizetype : sizetype as String,
      nopackagedata: nopackagedata == freezed
          ? _value.nopackagedata
          : nopackagedata as NoPackageModel,
      packagedata: packagedata == freezed
          ? _value.packagedata
          : packagedata as List<PackageModel>,
      sizeandcolordata: sizeandcolordata == freezed
          ? _value.sizeandcolordata
          : sizeandcolordata as List<SizeAndColorModel>,
      custompackagedata: custompackagedata == freezed
          ? _value.custompackagedata
          : custompackagedata as List<CustomPackageModel>,
      addressarea: addressarea == freezed
          ? _value.addressarea
          : addressarea as ContactDetailsModel,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductModel implements _ProductModel {
  _$_ProductModel(
      {@JsonKey(name: 'docid') this.productid,
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
      @JsonKey(name: 'sizetype') this.sizetype,
      @JsonKey(name: 'nopackagedata') this.nopackagedata,
      @JsonKey(name: 'packagedata') this.packagedata,
      @JsonKey(name: 'sizeandcolordata') this.sizeandcolordata,
      @JsonKey(name: 'custompackagedata') this.custompackagedata,
      @JsonKey(name: 'addressarea') this.addressarea,
      @JsonKey(name: 'serviceproviderid') this.serviceproviderid,
      @JsonKey(name: 'userid') this.userid});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductModelFromJson(json);

  @override
  @JsonKey(name: 'docid')
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
  @JsonKey(name: 'sizetype')
  final String sizetype;
  @override
  @JsonKey(name: 'nopackagedata')
  final NoPackageModel nopackagedata;
  @override
  @JsonKey(name: 'packagedata')
  final List<PackageModel> packagedata;
  @override
  @JsonKey(name: 'sizeandcolordata')
  final List<SizeAndColorModel> sizeandcolordata;
  @override
  @JsonKey(name: 'custompackagedata')
  final List<CustomPackageModel> custompackagedata;
  @override
  @JsonKey(name: 'addressarea')
  final ContactDetailsModel addressarea;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  final String userid;

  @override
  String toString() {
    return 'ProductModel(productid: $productid, title: $title, description: $description, brand: $brand, category: $category, tilephoto: $tilephoto, imagelist: $imagelist, price: $price, discountedprice: $discountedprice, ptype: $ptype, dynamicproperties: $dynamicproperties, varinattype: $varinattype, sizetype: $sizetype, nopackagedata: $nopackagedata, packagedata: $packagedata, sizeandcolordata: $sizeandcolordata, custompackagedata: $custompackagedata, addressarea: $addressarea, serviceproviderid: $serviceproviderid, userid: $userid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductModel &&
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
            (identical(other.sizetype, sizetype) ||
                const DeepCollectionEquality()
                    .equals(other.sizetype, sizetype)) &&
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
                    .equals(other.custompackagedata, custompackagedata)) &&
            (identical(other.addressarea, addressarea) ||
                const DeepCollectionEquality()
                    .equals(other.addressarea, addressarea)) &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)) &&
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)));
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
      const DeepCollectionEquality().hash(sizetype) ^
      const DeepCollectionEquality().hash(nopackagedata) ^
      const DeepCollectionEquality().hash(packagedata) ^
      const DeepCollectionEquality().hash(sizeandcolordata) ^
      const DeepCollectionEquality().hash(custompackagedata) ^
      const DeepCollectionEquality().hash(addressarea) ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(userid);

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductModelToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {@JsonKey(name: 'docid')
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
      @JsonKey(name: 'sizetype')
          String sizetype,
      @JsonKey(name: 'nopackagedata')
          NoPackageModel nopackagedata,
      @JsonKey(name: 'packagedata')
          List<PackageModel> packagedata,
      @JsonKey(name: 'sizeandcolordata')
          List<SizeAndColorModel> sizeandcolordata,
      @JsonKey(name: 'custompackagedata')
          List<CustomPackageModel> custompackagedata,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  @JsonKey(name: 'docid')
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
  @JsonKey(name: 'sizetype')
  String get sizetype;
  @override
  @JsonKey(name: 'nopackagedata')
  NoPackageModel get nopackagedata;
  @override
  @JsonKey(name: 'packagedata')
  List<PackageModel> get packagedata;
  @override
  @JsonKey(name: 'sizeandcolordata')
  List<SizeAndColorModel> get sizeandcolordata;
  @override
  @JsonKey(name: 'custompackagedata')
  List<CustomPackageModel> get custompackagedata;
  @override
  @JsonKey(name: 'addressarea')
  ContactDetailsModel get addressarea;
  @override
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  String get userid;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith;
}

NoPackageModel _$NoPackageModelFromJson(Map<String, dynamic> json) {
  return _NoPackageModel.fromJson(json);
}

/// @nodoc
class _$NoPackageModelTearOff {
  const _$NoPackageModelTearOff();

// ignore: unused_element
  _NoPackageModel call(
      {@JsonKey(name: 'unitmeasure') String unitmeasure,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'priceperunit') double priceperunit,
      @JsonKey(name: 'inventoryunits') double inventoryunits,
      @JsonKey(name: 'discountedpriceperunit') double discountedpriceperunit}) {
    return _NoPackageModel(
      unitmeasure: unitmeasure,
      qty: qty,
      priceperunit: priceperunit,
      inventoryunits: inventoryunits,
      discountedpriceperunit: discountedpriceperunit,
    );
  }

// ignore: unused_element
  NoPackageModel fromJson(Map<String, Object> json) {
    return NoPackageModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NoPackageModel = _$NoPackageModelTearOff();

/// @nodoc
mixin _$NoPackageModel {
  @JsonKey(name: 'unitmeasure')
  String get unitmeasure;
  @JsonKey(name: 'qty')
  int get qty;
  @JsonKey(name: 'priceperunit')
  double get priceperunit;
  @JsonKey(name: 'inventoryunits')
  double get inventoryunits;
  @JsonKey(name: 'discountedpriceperunit')
  double get discountedpriceperunit;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NoPackageModelCopyWith<NoPackageModel> get copyWith;
}

/// @nodoc
abstract class $NoPackageModelCopyWith<$Res> {
  factory $NoPackageModelCopyWith(
          NoPackageModel value, $Res Function(NoPackageModel) then) =
      _$NoPackageModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'unitmeasure') String unitmeasure,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'priceperunit') double priceperunit,
      @JsonKey(name: 'inventoryunits') double inventoryunits,
      @JsonKey(name: 'discountedpriceperunit') double discountedpriceperunit});
}

/// @nodoc
class _$NoPackageModelCopyWithImpl<$Res>
    implements $NoPackageModelCopyWith<$Res> {
  _$NoPackageModelCopyWithImpl(this._value, this._then);

  final NoPackageModel _value;
  // ignore: unused_field
  final $Res Function(NoPackageModel) _then;

  @override
  $Res call({
    Object unitmeasure = freezed,
    Object qty = freezed,
    Object priceperunit = freezed,
    Object inventoryunits = freezed,
    Object discountedpriceperunit = freezed,
  }) {
    return _then(_value.copyWith(
      unitmeasure:
          unitmeasure == freezed ? _value.unitmeasure : unitmeasure as String,
      qty: qty == freezed ? _value.qty : qty as int,
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
abstract class _$NoPackageModelCopyWith<$Res>
    implements $NoPackageModelCopyWith<$Res> {
  factory _$NoPackageModelCopyWith(
          _NoPackageModel value, $Res Function(_NoPackageModel) then) =
      __$NoPackageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'unitmeasure') String unitmeasure,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'priceperunit') double priceperunit,
      @JsonKey(name: 'inventoryunits') double inventoryunits,
      @JsonKey(name: 'discountedpriceperunit') double discountedpriceperunit});
}

/// @nodoc
class __$NoPackageModelCopyWithImpl<$Res>
    extends _$NoPackageModelCopyWithImpl<$Res>
    implements _$NoPackageModelCopyWith<$Res> {
  __$NoPackageModelCopyWithImpl(
      _NoPackageModel _value, $Res Function(_NoPackageModel) _then)
      : super(_value, (v) => _then(v as _NoPackageModel));

  @override
  _NoPackageModel get _value => super._value as _NoPackageModel;

  @override
  $Res call({
    Object unitmeasure = freezed,
    Object qty = freezed,
    Object priceperunit = freezed,
    Object inventoryunits = freezed,
    Object discountedpriceperunit = freezed,
  }) {
    return _then(_NoPackageModel(
      unitmeasure:
          unitmeasure == freezed ? _value.unitmeasure : unitmeasure as String,
      qty: qty == freezed ? _value.qty : qty as int,
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
class _$_NoPackageModel implements _NoPackageModel {
  _$_NoPackageModel(
      {@JsonKey(name: 'unitmeasure') this.unitmeasure,
      @JsonKey(name: 'qty') this.qty,
      @JsonKey(name: 'priceperunit') this.priceperunit,
      @JsonKey(name: 'inventoryunits') this.inventoryunits,
      @JsonKey(name: 'discountedpriceperunit') this.discountedpriceperunit});

  factory _$_NoPackageModel.fromJson(Map<String, dynamic> json) =>
      _$_$_NoPackageModelFromJson(json);

  @override
  @JsonKey(name: 'unitmeasure')
  final String unitmeasure;
  @override
  @JsonKey(name: 'qty')
  final int qty;
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
    return 'NoPackageModel(unitmeasure: $unitmeasure, qty: $qty, priceperunit: $priceperunit, inventoryunits: $inventoryunits, discountedpriceperunit: $discountedpriceperunit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoPackageModel &&
            (identical(other.unitmeasure, unitmeasure) ||
                const DeepCollectionEquality()
                    .equals(other.unitmeasure, unitmeasure)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
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
      const DeepCollectionEquality().hash(unitmeasure) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(priceperunit) ^
      const DeepCollectionEquality().hash(inventoryunits) ^
      const DeepCollectionEquality().hash(discountedpriceperunit);

  @JsonKey(ignore: true)
  @override
  _$NoPackageModelCopyWith<_NoPackageModel> get copyWith =>
      __$NoPackageModelCopyWithImpl<_NoPackageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NoPackageModelToJson(this);
  }
}

abstract class _NoPackageModel implements NoPackageModel {
  factory _NoPackageModel(
      {@JsonKey(name: 'unitmeasure')
          String unitmeasure,
      @JsonKey(name: 'qty')
          int qty,
      @JsonKey(name: 'priceperunit')
          double priceperunit,
      @JsonKey(name: 'inventoryunits')
          double inventoryunits,
      @JsonKey(name: 'discountedpriceperunit')
          double discountedpriceperunit}) = _$_NoPackageModel;

  factory _NoPackageModel.fromJson(Map<String, dynamic> json) =
      _$_NoPackageModel.fromJson;

  @override
  @JsonKey(name: 'unitmeasure')
  String get unitmeasure;
  @override
  @JsonKey(name: 'qty')
  int get qty;
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
  _$NoPackageModelCopyWith<_NoPackageModel> get copyWith;
}

PackageModel _$PackageModelFromJson(Map<String, dynamic> json) {
  return _PackageModel.fromJson(json);
}

/// @nodoc
class _$PackageModelTearOff {
  const _$PackageModelTearOff();

// ignore: unused_element
  _PackageModel call(
      {@JsonKey(name: 'packageid') String packageid,
      @JsonKey(name: 'barcodeid') String barcodeid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'listimages') List<String> listimages,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'inventoryunits') int inventoryunits}) {
    return _PackageModel(
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
  PackageModel fromJson(Map<String, Object> json) {
    return PackageModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageModel = _$PackageModelTearOff();

/// @nodoc
mixin _$PackageModel {
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
  $PackageModelCopyWith<PackageModel> get copyWith;
}

/// @nodoc
abstract class $PackageModelCopyWith<$Res> {
  factory $PackageModelCopyWith(
          PackageModel value, $Res Function(PackageModel) then) =
      _$PackageModelCopyWithImpl<$Res>;
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
class _$PackageModelCopyWithImpl<$Res> implements $PackageModelCopyWith<$Res> {
  _$PackageModelCopyWithImpl(this._value, this._then);

  final PackageModel _value;
  // ignore: unused_field
  final $Res Function(PackageModel) _then;

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
abstract class _$PackageModelCopyWith<$Res>
    implements $PackageModelCopyWith<$Res> {
  factory _$PackageModelCopyWith(
          _PackageModel value, $Res Function(_PackageModel) then) =
      __$PackageModelCopyWithImpl<$Res>;
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
class __$PackageModelCopyWithImpl<$Res> extends _$PackageModelCopyWithImpl<$Res>
    implements _$PackageModelCopyWith<$Res> {
  __$PackageModelCopyWithImpl(
      _PackageModel _value, $Res Function(_PackageModel) _then)
      : super(_value, (v) => _then(v as _PackageModel));

  @override
  _PackageModel get _value => super._value as _PackageModel;

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
    return _then(_PackageModel(
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
class _$_PackageModel implements _PackageModel {
  _$_PackageModel(
      {@JsonKey(name: 'packageid') this.packageid,
      @JsonKey(name: 'barcodeid') this.barcodeid,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'tileimage') this.tileimage,
      @JsonKey(name: 'listimages') this.listimages,
      @JsonKey(name: 'unit') this.unit,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'discountedprice') this.discountedprice,
      @JsonKey(name: 'inventoryunits') this.inventoryunits});

  factory _$_PackageModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PackageModelFromJson(json);

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
    return 'PackageModel(packageid: $packageid, barcodeid: $barcodeid, title: $title, tileimage: $tileimage, listimages: $listimages, unit: $unit, price: $price, discountedprice: $discountedprice, inventoryunits: $inventoryunits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PackageModel &&
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
  _$PackageModelCopyWith<_PackageModel> get copyWith =>
      __$PackageModelCopyWithImpl<_PackageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PackageModelToJson(this);
  }
}

abstract class _PackageModel implements PackageModel {
  factory _PackageModel(
      {@JsonKey(name: 'packageid') String packageid,
      @JsonKey(name: 'barcodeid') String barcodeid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'tileimage') String tileimage,
      @JsonKey(name: 'listimages') List<String> listimages,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'discountedprice') double discountedprice,
      @JsonKey(name: 'inventoryunits') int inventoryunits}) = _$_PackageModel;

  factory _PackageModel.fromJson(Map<String, dynamic> json) =
      _$_PackageModel.fromJson;

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
  _$PackageModelCopyWith<_PackageModel> get copyWith;
}

SizeAndColorModel _$SizeAndColorModelFromJson(Map<String, dynamic> json) {
  return _SizeAndColorModel.fromJson(json);
}

/// @nodoc
class _$SizeAndColorModelTearOff {
  const _$SizeAndColorModelTearOff();

// ignore: unused_element
  _SizeAndColorModel call(
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
    return _SizeAndColorModel(
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
  SizeAndColorModel fromJson(Map<String, Object> json) {
    return SizeAndColorModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SizeAndColorModel = _$SizeAndColorModelTearOff();

/// @nodoc
mixin _$SizeAndColorModel {
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
  $SizeAndColorModelCopyWith<SizeAndColorModel> get copyWith;
}

/// @nodoc
abstract class $SizeAndColorModelCopyWith<$Res> {
  factory $SizeAndColorModelCopyWith(
          SizeAndColorModel value, $Res Function(SizeAndColorModel) then) =
      _$SizeAndColorModelCopyWithImpl<$Res>;
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
class _$SizeAndColorModelCopyWithImpl<$Res>
    implements $SizeAndColorModelCopyWith<$Res> {
  _$SizeAndColorModelCopyWithImpl(this._value, this._then);

  final SizeAndColorModel _value;
  // ignore: unused_field
  final $Res Function(SizeAndColorModel) _then;

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
abstract class _$SizeAndColorModelCopyWith<$Res>
    implements $SizeAndColorModelCopyWith<$Res> {
  factory _$SizeAndColorModelCopyWith(
          _SizeAndColorModel value, $Res Function(_SizeAndColorModel) then) =
      __$SizeAndColorModelCopyWithImpl<$Res>;
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
class __$SizeAndColorModelCopyWithImpl<$Res>
    extends _$SizeAndColorModelCopyWithImpl<$Res>
    implements _$SizeAndColorModelCopyWith<$Res> {
  __$SizeAndColorModelCopyWithImpl(
      _SizeAndColorModel _value, $Res Function(_SizeAndColorModel) _then)
      : super(_value, (v) => _then(v as _SizeAndColorModel));

  @override
  _SizeAndColorModel get _value => super._value as _SizeAndColorModel;

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
    return _then(_SizeAndColorModel(
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
class _$_SizeAndColorModel implements _SizeAndColorModel {
  _$_SizeAndColorModel(
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

  factory _$_SizeAndColorModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SizeAndColorModelFromJson(json);

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
    return 'SizeAndColorModel(sizecolorid: $sizecolorid, barcodeid: $barcodeid, sizetype: $sizetype, size: $size, color: $color, price: $price, discountedprice: $discountedprice, tileimage: $tileimage, listimages: $listimages, unit: $unit, inventoryunits: $inventoryunits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SizeAndColorModel &&
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
  _$SizeAndColorModelCopyWith<_SizeAndColorModel> get copyWith =>
      __$SizeAndColorModelCopyWithImpl<_SizeAndColorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SizeAndColorModelToJson(this);
  }
}

abstract class _SizeAndColorModel implements SizeAndColorModel {
  factory _SizeAndColorModel(
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
      _$_SizeAndColorModel;

  factory _SizeAndColorModel.fromJson(Map<String, dynamic> json) =
      _$_SizeAndColorModel.fromJson;

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
  _$SizeAndColorModelCopyWith<_SizeAndColorModel> get copyWith;
}

CustomPackageModel _$CustomPackageModelFromJson(Map<String, dynamic> json) {
  return _CustomPackageModel.fromJson(json);
}

/// @nodoc
class _$CustomPackageModelTearOff {
  const _$CustomPackageModelTearOff();

// ignore: unused_element
  _CustomPackageModel call(
      {@JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'image1') String image1}) {
    return _CustomPackageModel(
      productid: productid,
      title: title,
      unit: unit,
      image1: image1,
    );
  }

// ignore: unused_element
  CustomPackageModel fromJson(Map<String, Object> json) {
    return CustomPackageModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CustomPackageModel = _$CustomPackageModelTearOff();

/// @nodoc
mixin _$CustomPackageModel {
  @JsonKey(name: 'productid')
  String get productid;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'unit')
  int get unit;
  @JsonKey(name: 'image1')
  String get image1;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CustomPackageModelCopyWith<CustomPackageModel> get copyWith;
}

/// @nodoc
abstract class $CustomPackageModelCopyWith<$Res> {
  factory $CustomPackageModelCopyWith(
          CustomPackageModel value, $Res Function(CustomPackageModel) then) =
      _$CustomPackageModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'image1') String image1});
}

/// @nodoc
class _$CustomPackageModelCopyWithImpl<$Res>
    implements $CustomPackageModelCopyWith<$Res> {
  _$CustomPackageModelCopyWithImpl(this._value, this._then);

  final CustomPackageModel _value;
  // ignore: unused_field
  final $Res Function(CustomPackageModel) _then;

  @override
  $Res call({
    Object productid = freezed,
    Object title = freezed,
    Object unit = freezed,
    Object image1 = freezed,
  }) {
    return _then(_value.copyWith(
      productid: productid == freezed ? _value.productid : productid as String,
      title: title == freezed ? _value.title : title as String,
      unit: unit == freezed ? _value.unit : unit as int,
      image1: image1 == freezed ? _value.image1 : image1 as String,
    ));
  }
}

/// @nodoc
abstract class _$CustomPackageModelCopyWith<$Res>
    implements $CustomPackageModelCopyWith<$Res> {
  factory _$CustomPackageModelCopyWith(
          _CustomPackageModel value, $Res Function(_CustomPackageModel) then) =
      __$CustomPackageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'image1') String image1});
}

/// @nodoc
class __$CustomPackageModelCopyWithImpl<$Res>
    extends _$CustomPackageModelCopyWithImpl<$Res>
    implements _$CustomPackageModelCopyWith<$Res> {
  __$CustomPackageModelCopyWithImpl(
      _CustomPackageModel _value, $Res Function(_CustomPackageModel) _then)
      : super(_value, (v) => _then(v as _CustomPackageModel));

  @override
  _CustomPackageModel get _value => super._value as _CustomPackageModel;

  @override
  $Res call({
    Object productid = freezed,
    Object title = freezed,
    Object unit = freezed,
    Object image1 = freezed,
  }) {
    return _then(_CustomPackageModel(
      productid: productid == freezed ? _value.productid : productid as String,
      title: title == freezed ? _value.title : title as String,
      unit: unit == freezed ? _value.unit : unit as int,
      image1: image1 == freezed ? _value.image1 : image1 as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CustomPackageModel implements _CustomPackageModel {
  _$_CustomPackageModel(
      {@JsonKey(name: 'productid') this.productid,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'unit') this.unit,
      @JsonKey(name: 'image1') this.image1});

  factory _$_CustomPackageModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomPackageModelFromJson(json);

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
  @JsonKey(name: 'image1')
  final String image1;

  @override
  String toString() {
    return 'CustomPackageModel(productid: $productid, title: $title, unit: $unit, image1: $image1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomPackageModel &&
            (identical(other.productid, productid) ||
                const DeepCollectionEquality()
                    .equals(other.productid, productid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.image1, image1) ||
                const DeepCollectionEquality().equals(other.image1, image1)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(image1);

  @JsonKey(ignore: true)
  @override
  _$CustomPackageModelCopyWith<_CustomPackageModel> get copyWith =>
      __$CustomPackageModelCopyWithImpl<_CustomPackageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomPackageModelToJson(this);
  }
}

abstract class _CustomPackageModel implements CustomPackageModel {
  factory _CustomPackageModel(
      {@JsonKey(name: 'productid') String productid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'unit') int unit,
      @JsonKey(name: 'image1') String image1}) = _$_CustomPackageModel;

  factory _CustomPackageModel.fromJson(Map<String, dynamic> json) =
      _$_CustomPackageModel.fromJson;

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
  @JsonKey(name: 'image1')
  String get image1;
  @override
  @JsonKey(ignore: true)
  _$CustomPackageModelCopyWith<_CustomPackageModel> get copyWith;
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

ContactDetailsModel _$ContactDetailsModelFromJson(Map<String, dynamic> json) {
  return _ContactDetailsModel.fromJson(json);
}

/// @nodoc
class _$ContactDetailsModelTearOff {
  const _$ContactDetailsModelTearOff();

// ignore: unused_element
  _ContactDetailsModel call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'phonenum') String phonenum,
      @JsonKey(name: 'sharephone') bool sharephone,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'shareemail') bool shareemail,
      @JsonKey(name: 'address') AddressDataModel address,
      @JsonKey(name: 'shareaddress') bool shareaddress}) {
    return _ContactDetailsModel(
      name: name,
      phonenum: phonenum,
      sharephone: sharephone,
      email: email,
      shareemail: shareemail,
      address: address,
      shareaddress: shareaddress,
    );
  }

// ignore: unused_element
  ContactDetailsModel fromJson(Map<String, Object> json) {
    return ContactDetailsModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ContactDetailsModel = _$ContactDetailsModelTearOff();

/// @nodoc
mixin _$ContactDetailsModel {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'phonenum')
  String get phonenum;
  @JsonKey(name: 'sharephone')
  bool get sharephone;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'shareemail')
  bool get shareemail;
  @JsonKey(name: 'address')
  AddressDataModel get address;
  @JsonKey(name: 'shareaddress')
  bool get shareaddress;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ContactDetailsModelCopyWith<ContactDetailsModel> get copyWith;
}

/// @nodoc
abstract class $ContactDetailsModelCopyWith<$Res> {
  factory $ContactDetailsModelCopyWith(
          ContactDetailsModel value, $Res Function(ContactDetailsModel) then) =
      _$ContactDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'phonenum') String phonenum,
      @JsonKey(name: 'sharephone') bool sharephone,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'shareemail') bool shareemail,
      @JsonKey(name: 'address') AddressDataModel address,
      @JsonKey(name: 'shareaddress') bool shareaddress});

  $AddressDataModelCopyWith<$Res> get address;
}

/// @nodoc
class _$ContactDetailsModelCopyWithImpl<$Res>
    implements $ContactDetailsModelCopyWith<$Res> {
  _$ContactDetailsModelCopyWithImpl(this._value, this._then);

  final ContactDetailsModel _value;
  // ignore: unused_field
  final $Res Function(ContactDetailsModel) _then;

  @override
  $Res call({
    Object name = freezed,
    Object phonenum = freezed,
    Object sharephone = freezed,
    Object email = freezed,
    Object shareemail = freezed,
    Object address = freezed,
    Object shareaddress = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      phonenum: phonenum == freezed ? _value.phonenum : phonenum as String,
      sharephone:
          sharephone == freezed ? _value.sharephone : sharephone as bool,
      email: email == freezed ? _value.email : email as String,
      shareemail:
          shareemail == freezed ? _value.shareemail : shareemail as bool,
      address:
          address == freezed ? _value.address : address as AddressDataModel,
      shareaddress:
          shareaddress == freezed ? _value.shareaddress : shareaddress as bool,
    ));
  }

  @override
  $AddressDataModelCopyWith<$Res> get address {
    if (_value.address == null) {
      return null;
    }
    return $AddressDataModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$ContactDetailsModelCopyWith<$Res>
    implements $ContactDetailsModelCopyWith<$Res> {
  factory _$ContactDetailsModelCopyWith(_ContactDetailsModel value,
          $Res Function(_ContactDetailsModel) then) =
      __$ContactDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'phonenum') String phonenum,
      @JsonKey(name: 'sharephone') bool sharephone,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'shareemail') bool shareemail,
      @JsonKey(name: 'address') AddressDataModel address,
      @JsonKey(name: 'shareaddress') bool shareaddress});

  @override
  $AddressDataModelCopyWith<$Res> get address;
}

/// @nodoc
class __$ContactDetailsModelCopyWithImpl<$Res>
    extends _$ContactDetailsModelCopyWithImpl<$Res>
    implements _$ContactDetailsModelCopyWith<$Res> {
  __$ContactDetailsModelCopyWithImpl(
      _ContactDetailsModel _value, $Res Function(_ContactDetailsModel) _then)
      : super(_value, (v) => _then(v as _ContactDetailsModel));

  @override
  _ContactDetailsModel get _value => super._value as _ContactDetailsModel;

  @override
  $Res call({
    Object name = freezed,
    Object phonenum = freezed,
    Object sharephone = freezed,
    Object email = freezed,
    Object shareemail = freezed,
    Object address = freezed,
    Object shareaddress = freezed,
  }) {
    return _then(_ContactDetailsModel(
      name: name == freezed ? _value.name : name as String,
      phonenum: phonenum == freezed ? _value.phonenum : phonenum as String,
      sharephone:
          sharephone == freezed ? _value.sharephone : sharephone as bool,
      email: email == freezed ? _value.email : email as String,
      shareemail:
          shareemail == freezed ? _value.shareemail : shareemail as bool,
      address:
          address == freezed ? _value.address : address as AddressDataModel,
      shareaddress:
          shareaddress == freezed ? _value.shareaddress : shareaddress as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ContactDetailsModel implements _ContactDetailsModel {
  _$_ContactDetailsModel(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'phonenum') this.phonenum,
      @JsonKey(name: 'sharephone') this.sharephone,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'shareemail') this.shareemail,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'shareaddress') this.shareaddress});

  factory _$_ContactDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactDetailsModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'phonenum')
  final String phonenum;
  @override
  @JsonKey(name: 'sharephone')
  final bool sharephone;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'shareemail')
  final bool shareemail;
  @override
  @JsonKey(name: 'address')
  final AddressDataModel address;
  @override
  @JsonKey(name: 'shareaddress')
  final bool shareaddress;

  @override
  String toString() {
    return 'ContactDetailsModel(name: $name, phonenum: $phonenum, sharephone: $sharephone, email: $email, shareemail: $shareemail, address: $address, shareaddress: $shareaddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactDetailsModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phonenum, phonenum) ||
                const DeepCollectionEquality()
                    .equals(other.phonenum, phonenum)) &&
            (identical(other.sharephone, sharephone) ||
                const DeepCollectionEquality()
                    .equals(other.sharephone, sharephone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.shareemail, shareemail) ||
                const DeepCollectionEquality()
                    .equals(other.shareemail, shareemail)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.shareaddress, shareaddress) ||
                const DeepCollectionEquality()
                    .equals(other.shareaddress, shareaddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phonenum) ^
      const DeepCollectionEquality().hash(sharephone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(shareemail) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(shareaddress);

  @JsonKey(ignore: true)
  @override
  _$ContactDetailsModelCopyWith<_ContactDetailsModel> get copyWith =>
      __$ContactDetailsModelCopyWithImpl<_ContactDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactDetailsModelToJson(this);
  }
}

abstract class _ContactDetailsModel implements ContactDetailsModel {
  factory _ContactDetailsModel(
          {@JsonKey(name: 'name') String name,
          @JsonKey(name: 'phonenum') String phonenum,
          @JsonKey(name: 'sharephone') bool sharephone,
          @JsonKey(name: 'email') String email,
          @JsonKey(name: 'shareemail') bool shareemail,
          @JsonKey(name: 'address') AddressDataModel address,
          @JsonKey(name: 'shareaddress') bool shareaddress}) =
      _$_ContactDetailsModel;

  factory _ContactDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ContactDetailsModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'phonenum')
  String get phonenum;
  @override
  @JsonKey(name: 'sharephone')
  bool get sharephone;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'shareemail')
  bool get shareemail;
  @override
  @JsonKey(name: 'address')
  AddressDataModel get address;
  @override
  @JsonKey(name: 'shareaddress')
  bool get shareaddress;
  @override
  @JsonKey(ignore: true)
  _$ContactDetailsModelCopyWith<_ContactDetailsModel> get copyWith;
}

AddressDataModel _$AddressDataModelFromJson(Map<String, dynamic> json) {
  return _AddressDataModel.fromJson(json);
}

/// @nodoc
class _$AddressDataModelTearOff {
  const _$AddressDataModelTearOff();

// ignore: unused_element
  _AddressDataModel call(
      {@JsonKey(name: 'country') String country,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'town_village') String town_village,
      @JsonKey(name: 'area_sector') String area_sector,
      @JsonKey(name: 'societyname') String societyname,
      @JsonKey(name: 'addressline') String addressline,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude}) {
    return _AddressDataModel(
      country: country,
      state: state,
      district: district,
      town_village: town_village,
      area_sector: area_sector,
      societyname: societyname,
      addressline: addressline,
      latitude: latitude,
      longitude: longitude,
    );
  }

// ignore: unused_element
  AddressDataModel fromJson(Map<String, Object> json) {
    return AddressDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddressDataModel = _$AddressDataModelTearOff();

/// @nodoc
mixin _$AddressDataModel {
  @JsonKey(name: 'country')
  String get country;
  @JsonKey(name: 'state')
  String get state;
  @JsonKey(name: 'district')
  String get district;
  @JsonKey(name: 'town_village')
  String get town_village;
  @JsonKey(name: 'area_sector')
  String get area_sector;
  @JsonKey(name: 'societyname')
  String get societyname;
  @JsonKey(name: 'addressline')
  String get addressline;
  @JsonKey(name: 'latitude')
  double get latitude;
  @JsonKey(name: 'longitude')
  double get longitude;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AddressDataModelCopyWith<AddressDataModel> get copyWith;
}

/// @nodoc
abstract class $AddressDataModelCopyWith<$Res> {
  factory $AddressDataModelCopyWith(
          AddressDataModel value, $Res Function(AddressDataModel) then) =
      _$AddressDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'country') String country,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'town_village') String town_village,
      @JsonKey(name: 'area_sector') String area_sector,
      @JsonKey(name: 'societyname') String societyname,
      @JsonKey(name: 'addressline') String addressline,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class _$AddressDataModelCopyWithImpl<$Res>
    implements $AddressDataModelCopyWith<$Res> {
  _$AddressDataModelCopyWithImpl(this._value, this._then);

  final AddressDataModel _value;
  // ignore: unused_field
  final $Res Function(AddressDataModel) _then;

  @override
  $Res call({
    Object country = freezed,
    Object state = freezed,
    Object district = freezed,
    Object town_village = freezed,
    Object area_sector = freezed,
    Object societyname = freezed,
    Object addressline = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed ? _value.country : country as String,
      state: state == freezed ? _value.state : state as String,
      district: district == freezed ? _value.district : district as String,
      town_village: town_village == freezed
          ? _value.town_village
          : town_village as String,
      area_sector:
          area_sector == freezed ? _value.area_sector : area_sector as String,
      societyname:
          societyname == freezed ? _value.societyname : societyname as String,
      addressline:
          addressline == freezed ? _value.addressline : addressline as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

/// @nodoc
abstract class _$AddressDataModelCopyWith<$Res>
    implements $AddressDataModelCopyWith<$Res> {
  factory _$AddressDataModelCopyWith(
          _AddressDataModel value, $Res Function(_AddressDataModel) then) =
      __$AddressDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'country') String country,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'town_village') String town_village,
      @JsonKey(name: 'area_sector') String area_sector,
      @JsonKey(name: 'societyname') String societyname,
      @JsonKey(name: 'addressline') String addressline,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class __$AddressDataModelCopyWithImpl<$Res>
    extends _$AddressDataModelCopyWithImpl<$Res>
    implements _$AddressDataModelCopyWith<$Res> {
  __$AddressDataModelCopyWithImpl(
      _AddressDataModel _value, $Res Function(_AddressDataModel) _then)
      : super(_value, (v) => _then(v as _AddressDataModel));

  @override
  _AddressDataModel get _value => super._value as _AddressDataModel;

  @override
  $Res call({
    Object country = freezed,
    Object state = freezed,
    Object district = freezed,
    Object town_village = freezed,
    Object area_sector = freezed,
    Object societyname = freezed,
    Object addressline = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_AddressDataModel(
      country: country == freezed ? _value.country : country as String,
      state: state == freezed ? _value.state : state as String,
      district: district == freezed ? _value.district : district as String,
      town_village: town_village == freezed
          ? _value.town_village
          : town_village as String,
      area_sector:
          area_sector == freezed ? _value.area_sector : area_sector as String,
      societyname:
          societyname == freezed ? _value.societyname : societyname as String,
      addressline:
          addressline == freezed ? _value.addressline : addressline as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddressDataModel implements _AddressDataModel {
  _$_AddressDataModel(
      {@JsonKey(name: 'country') this.country,
      @JsonKey(name: 'state') this.state,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'town_village') this.town_village,
      @JsonKey(name: 'area_sector') this.area_sector,
      @JsonKey(name: 'societyname') this.societyname,
      @JsonKey(name: 'addressline') this.addressline,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude});

  factory _$_AddressDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AddressDataModelFromJson(json);

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
  @JsonKey(name: 'town_village')
  final String town_village;
  @override
  @JsonKey(name: 'area_sector')
  final String area_sector;
  @override
  @JsonKey(name: 'societyname')
  final String societyname;
  @override
  @JsonKey(name: 'addressline')
  final String addressline;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  @override
  String toString() {
    return 'AddressDataModel(country: $country, state: $state, district: $district, town_village: $town_village, area_sector: $area_sector, societyname: $societyname, addressline: $addressline, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressDataModel &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.town_village, town_village) ||
                const DeepCollectionEquality()
                    .equals(other.town_village, town_village)) &&
            (identical(other.area_sector, area_sector) ||
                const DeepCollectionEquality()
                    .equals(other.area_sector, area_sector)) &&
            (identical(other.societyname, societyname) ||
                const DeepCollectionEquality()
                    .equals(other.societyname, societyname)) &&
            (identical(other.addressline, addressline) ||
                const DeepCollectionEquality()
                    .equals(other.addressline, addressline)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(town_village) ^
      const DeepCollectionEquality().hash(area_sector) ^
      const DeepCollectionEquality().hash(societyname) ^
      const DeepCollectionEquality().hash(addressline) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$AddressDataModelCopyWith<_AddressDataModel> get copyWith =>
      __$AddressDataModelCopyWithImpl<_AddressDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddressDataModelToJson(this);
  }
}

abstract class _AddressDataModel implements AddressDataModel {
  factory _AddressDataModel(
      {@JsonKey(name: 'country') String country,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'district') String district,
      @JsonKey(name: 'town_village') String town_village,
      @JsonKey(name: 'area_sector') String area_sector,
      @JsonKey(name: 'societyname') String societyname,
      @JsonKey(name: 'addressline') String addressline,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude}) = _$_AddressDataModel;

  factory _AddressDataModel.fromJson(Map<String, dynamic> json) =
      _$_AddressDataModel.fromJson;

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
  @JsonKey(name: 'town_village')
  String get town_village;
  @override
  @JsonKey(name: 'area_sector')
  String get area_sector;
  @override
  @JsonKey(name: 'societyname')
  String get societyname;
  @override
  @JsonKey(name: 'addressline')
  String get addressline;
  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$AddressDataModelCopyWith<_AddressDataModel> get copyWith;
}
