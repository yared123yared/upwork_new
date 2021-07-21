// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'limited_product_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
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
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'docid')
          String docid}) {
    return LimitedPetData(
      petclass: petclass,
      name: name,
      breed: breed,
      gender: gender,
      animalclass: animalclass,
      age: age,
      tileimage: tileimage,
      title: title,
      price: price,
      postedon: postedon,
      addressarea: addressarea,
      serviceproviderid: serviceproviderid,
      userid: userid,
      docid: docid,
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
      @JsonKey(name: 'userid') String userid,
      @JsonKey(name: 'serviceproviderid') String serviceproviderid,
      @JsonKey(name: 'contenttype') String contenttype,
      @JsonKey(name: 'addressarea') ContactDetailsModel addressarea}) {
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
      userid: userid,
      serviceproviderid: serviceproviderid,
      contenttype: contenttype,
      addressarea: addressarea,
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
          ContactDetailsModel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid}) {
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
      userid: userid,
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
          String sharingallowed,
      @JsonKey(name: 'sqrfootage')
          int sqrfootage,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'serviceprovidername')
          String serviceprovidername,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid}) {
    return LimitedRealEstateData(
      productid: productid,
      listingtype: listingtype,
      propertytype: propertytype,
      numbedroom: numbedroom,
      numbathroom: numbathroom,
      sharingallowed: sharingallowed,
      sqrfootage: sqrfootage,
      price: price,
      title: title,
      addressarea: addressarea,
      postedon: postedon,
      tileimage: tileimage,
      serviceprovidername: serviceprovidername,
      serviceproviderid: serviceproviderid,
      userid: userid,
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
      @JsonKey(name: 'salaryrange')
          String salaryrange,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'jobtype')
          String jobtype,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid}) {
    return LimitedJobData(
      productid: productid,
      title: title,
      companyname: companyname,
      salaryrange: salaryrange,
      addressarea: addressarea,
      jobtype: jobtype,
      postedon: postedon,
      serviceproviderid: serviceproviderid,
      userid: userid,
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
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid,
            @JsonKey(name: 'docid')
                String docid),
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
            @JsonKey(name: 'userid') String userid,
            @JsonKey(name: 'serviceproviderid') String serviceproviderid,
            @JsonKey(name: 'contenttype') String contenttype,
            @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
                String sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceprovidername')
                String serviceprovidername,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid,
        @JsonKey(name: 'docid')
            String docid),
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
        @JsonKey(name: 'userid') String userid,
        @JsonKey(name: 'serviceproviderid') String serviceproviderid,
        @JsonKey(name: 'contenttype') String contenttype,
        @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
            String sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceprovidername')
            String serviceprovidername,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'docid')
          String docid});

  $ContactDetailsModelCopyWith<$Res> get addressarea;
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
    Object title = freezed,
    Object price = freezed,
    Object postedon = freezed,
    Object addressarea = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
    Object docid = freezed,
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
      title: title == freezed ? _value.title : title as String,
      price: price == freezed ? _value.price : price as double,
      postedon: postedon == freezed ? _value.postedon : postedon as DateTime,
      addressarea: addressarea == freezed
          ? _value.addressarea
          : addressarea as ContactDetailsModel,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
      docid: docid == freezed ? _value.docid : docid as String,
    ));
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
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'price')
          this.price,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.postedon,
      @JsonKey(name: 'addressarea')
          this.addressarea,
      @JsonKey(name: 'serviceproviderid')
          this.serviceproviderid,
      @JsonKey(name: 'userid')
          this.userid,
      @JsonKey(name: 'docid')
          this.docid});

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
  @JsonKey(name: 'title')
  final String title;
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
  final ContactDetailsModel addressarea;
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
  String toString() {
    return 'LimitedData.pet(petclass: $petclass, name: $name, breed: $breed, gender: $gender, animalclass: $animalclass, age: $age, tileimage: $tileimage, title: $title, price: $price, postedon: $postedon, addressarea: $addressarea, serviceproviderid: $serviceproviderid, userid: $userid, docid: $docid)';
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
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
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
                    .equals(other.serviceproviderid, serviceproviderid)) &&
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)) &&
            (identical(other.docid, docid) ||
                const DeepCollectionEquality().equals(other.docid, docid)));
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
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(postedon) ^
      const DeepCollectionEquality().hash(addressarea) ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(userid) ^
      const DeepCollectionEquality().hash(docid);

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
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid,
            @JsonKey(name: 'docid')
                String docid),
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
            @JsonKey(name: 'userid') String userid,
            @JsonKey(name: 'serviceproviderid') String serviceproviderid,
            @JsonKey(name: 'contenttype') String contenttype,
            @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
                String sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceprovidername')
                String serviceprovidername,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return pet(petclass, name, breed, gender, animalclass, age, tileimage,
        title, price, postedon, addressarea, serviceproviderid, userid, docid);
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
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid,
        @JsonKey(name: 'docid')
            String docid),
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
        @JsonKey(name: 'userid') String userid,
        @JsonKey(name: 'serviceproviderid') String serviceproviderid,
        @JsonKey(name: 'contenttype') String contenttype,
        @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
            String sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceprovidername')
            String serviceprovidername,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pet != null) {
      return pet(
          petclass,
          name,
          breed,
          gender,
          animalclass,
          age,
          tileimage,
          title,
          price,
          postedon,
          addressarea,
          serviceproviderid,
          userid,
          docid);
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
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'docid')
          String docid}) = _$LimitedPetData;

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
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'price')
  double get price;
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get postedon;
  @JsonKey(name: 'addressarea')
  ContactDetailsModel get addressarea;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'userid')
  String get userid;
  @JsonKey(name: 'docid')
  String get docid;
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
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid,
            @JsonKey(name: 'docid')
                String docid),
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
            @JsonKey(name: 'userid') String userid,
            @JsonKey(name: 'serviceproviderid') String serviceproviderid,
            @JsonKey(name: 'contenttype') String contenttype,
            @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
                String sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceprovidername')
                String serviceprovidername,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid,
        @JsonKey(name: 'docid')
            String docid),
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
        @JsonKey(name: 'userid') String userid,
        @JsonKey(name: 'serviceproviderid') String serviceproviderid,
        @JsonKey(name: 'contenttype') String contenttype,
        @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
            String sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceprovidername')
            String serviceprovidername,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
      @JsonKey(name: 'userid') String userid,
      @JsonKey(name: 'serviceproviderid') String serviceproviderid,
      @JsonKey(name: 'contenttype') String contenttype,
      @JsonKey(name: 'addressarea') ContactDetailsModel addressarea});

  $ContactDetailsModelCopyWith<$Res> get addressarea;
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
    Object userid = freezed,
    Object serviceproviderid = freezed,
    Object contenttype = freezed,
    Object addressarea = freezed,
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
      userid: userid == freezed ? _value.userid : userid as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      contenttype:
          contenttype == freezed ? _value.contenttype : contenttype as String,
      addressarea: addressarea == freezed
          ? _value.addressarea
          : addressarea as ContactDetailsModel,
    ));
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
      @JsonKey(name: 'userid') this.userid,
      @JsonKey(name: 'serviceproviderid') this.serviceproviderid,
      @JsonKey(name: 'contenttype') this.contenttype,
      @JsonKey(name: 'addressarea') this.addressarea});

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
  @JsonKey(name: 'userid')
  final String userid;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'contenttype')
  final String contenttype;
  @override
  @JsonKey(name: 'addressarea')
  final ContactDetailsModel addressarea;

  @override
  String toString() {
    return 'LimitedData.product(id: $id, title: $title, tileimage: $tileimage, reqqty: $reqqty, isvegetarian: $isvegetarian, spicetype: $spicetype, ispackage: $ispackage, unitmeasure: $unitmeasure, origprice: $origprice, discountedprice: $discountedprice, varianttype: $varianttype, packdata: $packdata, userid: $userid, serviceproviderid: $serviceproviderid, contenttype: $contenttype, addressarea: $addressarea)';
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
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)) &&
            (identical(other.serviceproviderid, serviceproviderid) ||
                const DeepCollectionEquality()
                    .equals(other.serviceproviderid, serviceproviderid)) &&
            (identical(other.contenttype, contenttype) ||
                const DeepCollectionEquality()
                    .equals(other.contenttype, contenttype)) &&
            (identical(other.addressarea, addressarea) ||
                const DeepCollectionEquality()
                    .equals(other.addressarea, addressarea)));
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
      const DeepCollectionEquality().hash(userid) ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(contenttype) ^
      const DeepCollectionEquality().hash(addressarea);

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
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid,
            @JsonKey(name: 'docid')
                String docid),
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
            @JsonKey(name: 'userid') String userid,
            @JsonKey(name: 'serviceproviderid') String serviceproviderid,
            @JsonKey(name: 'contenttype') String contenttype,
            @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
                String sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceprovidername')
                String serviceprovidername,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
        userid,
        serviceproviderid,
        contenttype,
        addressarea);
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
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid,
        @JsonKey(name: 'docid')
            String docid),
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
        @JsonKey(name: 'userid') String userid,
        @JsonKey(name: 'serviceproviderid') String serviceproviderid,
        @JsonKey(name: 'contenttype') String contenttype,
        @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
            String sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceprovidername')
            String serviceprovidername,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
          userid,
          serviceproviderid,
          contenttype,
          addressarea);
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
          @JsonKey(name: 'userid') String userid,
          @JsonKey(name: 'serviceproviderid') String serviceproviderid,
          @JsonKey(name: 'contenttype') String contenttype,
          @JsonKey(name: 'addressarea') ContactDetailsModel addressarea}) =
      _$LimitedProductData;

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
  @JsonKey(name: 'userid')
  String get userid;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'contenttype')
  String get contenttype;
  @JsonKey(name: 'addressarea')
  ContactDetailsModel get addressarea;
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
          ContactDetailsModel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid});

  $ContactDetailsModelCopyWith<$Res> get addressarea;
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
    Object userid = freezed,
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
          : addressarea as ContactDetailsModel,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
    ));
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
          this.serviceproviderid,
      @JsonKey(name: 'userid')
          this.userid});

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
  final ContactDetailsModel addressarea;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  final String userid;

  @override
  String toString() {
    return 'LimitedData.vehicle(productid: $productid, title: $title, vehicletype: $vehicletype, make: $make, model: $model, yearmade: $yearmade, milage: $milage, price: $price, tileimage: $tileimage, postedon: $postedon, addressarea: $addressarea, serviceproviderid: $serviceproviderid, userid: $userid)';
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
                    .equals(other.serviceproviderid, serviceproviderid)) &&
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)));
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
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(userid);

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
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid,
            @JsonKey(name: 'docid')
                String docid),
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
            @JsonKey(name: 'userid') String userid,
            @JsonKey(name: 'serviceproviderid') String serviceproviderid,
            @JsonKey(name: 'contenttype') String contenttype,
            @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
                String sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceprovidername')
                String serviceprovidername,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return vehicle(productid, title, vehicletype, make, model, yearmade, milage,
        price, tileimage, postedon, addressarea, serviceproviderid, userid);
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
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid,
        @JsonKey(name: 'docid')
            String docid),
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
        @JsonKey(name: 'userid') String userid,
        @JsonKey(name: 'serviceproviderid') String serviceproviderid,
        @JsonKey(name: 'contenttype') String contenttype,
        @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
            String sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceprovidername')
            String serviceprovidername,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (vehicle != null) {
      return vehicle(
          productid,
          title,
          vehicletype,
          make,
          model,
          yearmade,
          milage,
          price,
          tileimage,
          postedon,
          addressarea,
          serviceproviderid,
          userid);
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
          ContactDetailsModel addressarea,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid}) = _$LimitedVehicleData;

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
  ContactDetailsModel get addressarea;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'userid')
  String get userid;
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
          String sharingallowed,
      @JsonKey(name: 'sqrfootage')
          int sqrfootage,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'serviceprovidername')
          String serviceprovidername,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid});

  $ContactDetailsModelCopyWith<$Res> get addressarea;
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
    Object price = freezed,
    Object title = freezed,
    Object addressarea = freezed,
    Object postedon = freezed,
    Object tileimage = freezed,
    Object serviceprovidername = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
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
          : sharingallowed as String,
      sqrfootage: sqrfootage == freezed ? _value.sqrfootage : sqrfootage as int,
      price: price == freezed ? _value.price : price as double,
      title: title == freezed ? _value.title : title as String,
      addressarea: addressarea == freezed
          ? _value.addressarea
          : addressarea as ContactDetailsModel,
      postedon: postedon == freezed ? _value.postedon : postedon as DateTime,
      tileimage: tileimage == freezed ? _value.tileimage : tileimage as String,
      serviceprovidername: serviceprovidername == freezed
          ? _value.serviceprovidername
          : serviceprovidername as String,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
    ));
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
      @JsonKey(name: 'price')
          this.price,
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'addressarea')
          this.addressarea,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.postedon,
      @JsonKey(name: 'tileimage')
          this.tileimage,
      @JsonKey(name: 'serviceprovidername')
          this.serviceprovidername,
      @JsonKey(name: 'serviceproviderid')
          this.serviceproviderid,
      @JsonKey(name: 'userid')
          this.userid});

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
  final String sharingallowed;
  @override
  @JsonKey(name: 'sqrfootage')
  final int sqrfootage;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'addressarea')
  final ContactDetailsModel addressarea;
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
  @JsonKey(name: 'serviceprovidername')
  final String serviceprovidername;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  final String userid;

  @override
  String toString() {
    return 'LimitedData.realEstate(productid: $productid, listingtype: $listingtype, propertytype: $propertytype, numbedroom: $numbedroom, numbathroom: $numbathroom, sharingallowed: $sharingallowed, sqrfootage: $sqrfootage, price: $price, title: $title, addressarea: $addressarea, postedon: $postedon, tileimage: $tileimage, serviceprovidername: $serviceprovidername, serviceproviderid: $serviceproviderid, userid: $userid)';
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
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.addressarea, addressarea) ||
                const DeepCollectionEquality()
                    .equals(other.addressarea, addressarea)) &&
            (identical(other.postedon, postedon) ||
                const DeepCollectionEquality()
                    .equals(other.postedon, postedon)) &&
            (identical(other.tileimage, tileimage) ||
                const DeepCollectionEquality()
                    .equals(other.tileimage, tileimage)) &&
            (identical(other.serviceprovidername, serviceprovidername) ||
                const DeepCollectionEquality()
                    .equals(other.serviceprovidername, serviceprovidername)) &&
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
      const DeepCollectionEquality().hash(listingtype) ^
      const DeepCollectionEquality().hash(propertytype) ^
      const DeepCollectionEquality().hash(numbedroom) ^
      const DeepCollectionEquality().hash(numbathroom) ^
      const DeepCollectionEquality().hash(sharingallowed) ^
      const DeepCollectionEquality().hash(sqrfootage) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(addressarea) ^
      const DeepCollectionEquality().hash(postedon) ^
      const DeepCollectionEquality().hash(tileimage) ^
      const DeepCollectionEquality().hash(serviceprovidername) ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(userid);

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
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid,
            @JsonKey(name: 'docid')
                String docid),
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
            @JsonKey(name: 'userid') String userid,
            @JsonKey(name: 'serviceproviderid') String serviceproviderid,
            @JsonKey(name: 'contenttype') String contenttype,
            @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
                String sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceprovidername')
                String serviceprovidername,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
        price,
        title,
        addressarea,
        postedon,
        tileimage,
        serviceprovidername,
        serviceproviderid,
        userid);
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
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid,
        @JsonKey(name: 'docid')
            String docid),
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
        @JsonKey(name: 'userid') String userid,
        @JsonKey(name: 'serviceproviderid') String serviceproviderid,
        @JsonKey(name: 'contenttype') String contenttype,
        @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
            String sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceprovidername')
            String serviceprovidername,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
          price,
          title,
          addressarea,
          postedon,
          tileimage,
          serviceprovidername,
          serviceproviderid,
          userid);
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
          String sharingallowed,
      @JsonKey(name: 'sqrfootage')
          int sqrfootage,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'tileimage')
          String tileimage,
      @JsonKey(name: 'serviceprovidername')
          String serviceprovidername,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid}) = _$LimitedRealEstateData;

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
  String get sharingallowed;
  @JsonKey(name: 'sqrfootage')
  int get sqrfootage;
  @JsonKey(name: 'price')
  double get price;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'addressarea')
  ContactDetailsModel get addressarea;
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get postedon;
  @JsonKey(name: 'tileimage')
  String get tileimage;
  @JsonKey(name: 'serviceprovidername')
  String get serviceprovidername;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'userid')
  String get userid;
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
      @JsonKey(name: 'salaryrange')
          String salaryrange,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'jobtype')
          String jobtype,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid});

  $ContactDetailsModelCopyWith<$Res> get addressarea;
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
    Object salaryrange = freezed,
    Object addressarea = freezed,
    Object jobtype = freezed,
    Object postedon = freezed,
    Object serviceproviderid = freezed,
    Object userid = freezed,
  }) {
    return _then(LimitedJobData(
      productid: productid == freezed ? _value.productid : productid as String,
      title: title == freezed ? _value.title : title as String,
      companyname:
          companyname == freezed ? _value.companyname : companyname as String,
      salaryrange:
          salaryrange == freezed ? _value.salaryrange : salaryrange as String,
      addressarea: addressarea == freezed
          ? _value.addressarea
          : addressarea as ContactDetailsModel,
      jobtype: jobtype == freezed ? _value.jobtype : jobtype as String,
      postedon: postedon == freezed ? _value.postedon : postedon as DateTime,
      serviceproviderid: serviceproviderid == freezed
          ? _value.serviceproviderid
          : serviceproviderid as String,
      userid: userid == freezed ? _value.userid : userid as String,
    ));
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
      @JsonKey(name: 'salaryrange')
          this.salaryrange,
      @JsonKey(name: 'addressarea')
          this.addressarea,
      @JsonKey(name: 'jobtype')
          this.jobtype,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.postedon,
      @JsonKey(name: 'serviceproviderid')
          this.serviceproviderid,
      @JsonKey(name: 'userid')
          this.userid});

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
  @JsonKey(name: 'salaryrange')
  final String salaryrange;
  @override
  @JsonKey(name: 'addressarea')
  final ContactDetailsModel addressarea;
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
  @JsonKey(name: 'serviceproviderid')
  final String serviceproviderid;
  @override
  @JsonKey(name: 'userid')
  final String userid;

  @override
  String toString() {
    return 'LimitedData.job(productid: $productid, title: $title, companyname: $companyname, salaryrange: $salaryrange, addressarea: $addressarea, jobtype: $jobtype, postedon: $postedon, serviceproviderid: $serviceproviderid, userid: $userid)';
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
                    .equals(other.postedon, postedon)) &&
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
      const DeepCollectionEquality().hash(companyname) ^
      const DeepCollectionEquality().hash(salaryrange) ^
      const DeepCollectionEquality().hash(addressarea) ^
      const DeepCollectionEquality().hash(jobtype) ^
      const DeepCollectionEquality().hash(postedon) ^
      const DeepCollectionEquality().hash(serviceproviderid) ^
      const DeepCollectionEquality().hash(userid);

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
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid,
            @JsonKey(name: 'docid')
                String docid),
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
            @JsonKey(name: 'userid') String userid,
            @JsonKey(name: 'serviceproviderid') String serviceproviderid,
            @JsonKey(name: 'contenttype') String contenttype,
            @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
                ContactDetailsModel addressarea,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
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
                String sharingallowed,
            @JsonKey(name: 'sqrfootage')
                int sqrfootage,
            @JsonKey(name: 'price')
                double price,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'tileimage')
                String tileimage,
            @JsonKey(name: 'serviceprovidername')
                String serviceprovidername,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
    @required
        TResult job(
            @JsonKey(name: 'productid')
                String productid,
            @JsonKey(name: 'title')
                String title,
            @JsonKey(name: 'companyname')
                String companyname,
            @JsonKey(name: 'salaryrange')
                String salaryrange,
            @JsonKey(name: 'addressarea')
                ContactDetailsModel addressarea,
            @JsonKey(name: 'jobtype')
                String jobtype,
            @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
                DateTime postedon,
            @JsonKey(name: 'serviceproviderid')
                String serviceproviderid,
            @JsonKey(name: 'userid')
                String userid),
  }) {
    assert(pet != null);
    assert(package != null);
    assert(product != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    return job(productid, title, companyname, salaryrange, addressarea, jobtype,
        postedon, serviceproviderid, userid);
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
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid,
        @JsonKey(name: 'docid')
            String docid),
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
        @JsonKey(name: 'userid') String userid,
        @JsonKey(name: 'serviceproviderid') String serviceproviderid,
        @JsonKey(name: 'contenttype') String contenttype,
        @JsonKey(name: 'addressarea') ContactDetailsModel addressarea),
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
            ContactDetailsModel addressarea,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
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
            String sharingallowed,
        @JsonKey(name: 'sqrfootage')
            int sqrfootage,
        @JsonKey(name: 'price')
            double price,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'tileimage')
            String tileimage,
        @JsonKey(name: 'serviceprovidername')
            String serviceprovidername,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
    TResult job(
        @JsonKey(name: 'productid')
            String productid,
        @JsonKey(name: 'title')
            String title,
        @JsonKey(name: 'companyname')
            String companyname,
        @JsonKey(name: 'salaryrange')
            String salaryrange,
        @JsonKey(name: 'addressarea')
            ContactDetailsModel addressarea,
        @JsonKey(name: 'jobtype')
            String jobtype,
        @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
            DateTime postedon,
        @JsonKey(name: 'serviceproviderid')
            String serviceproviderid,
        @JsonKey(name: 'userid')
            String userid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (job != null) {
      return job(productid, title, companyname, salaryrange, addressarea,
          jobtype, postedon, serviceproviderid, userid);
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
      @JsonKey(name: 'salaryrange')
          String salaryrange,
      @JsonKey(name: 'addressarea')
          ContactDetailsModel addressarea,
      @JsonKey(name: 'jobtype')
          String jobtype,
      @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime postedon,
      @JsonKey(name: 'serviceproviderid')
          String serviceproviderid,
      @JsonKey(name: 'userid')
          String userid}) = _$LimitedJobData;

  factory LimitedJobData.fromJson(Map<String, dynamic> json) =
      _$LimitedJobData.fromJson;

  @JsonKey(name: 'productid')
  String get productid;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'companyname')
  String get companyname;
  @JsonKey(name: 'salaryrange')
  String get salaryrange;
  @JsonKey(name: 'addressarea')
  ContactDetailsModel get addressarea;
  @JsonKey(name: 'jobtype')
  String get jobtype;
  @JsonKey(
      name: 'postedon',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get postedon;
  @JsonKey(name: 'serviceproviderid')
  String get serviceproviderid;
  @JsonKey(name: 'userid')
  String get userid;
  @JsonKey(ignore: true)
  $LimitedJobDataCopyWith<LimitedJobData> get copyWith;
}

LimitedDataList _$LimitedDataListFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'pet':
      return LimitedPetList.fromJson(json);
    case 'vehicle':
      return LimitedVehicleList.fromJson(json);
    case 'realEstate':
      return LimitedRealEstateList.fromJson(json);
    case 'job':
      return LimitedJobList.fromJson(json);
    case 'product':
      return LimitedProductList.fromJson(json);
    case 'empty':
      return LimitedEmptyList.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$LimitedDataListTearOff {
  const _$LimitedDataListTearOff();

// ignore: unused_element
  LimitedPetList pet({@required List<LimitedPetData> pets}) {
    return LimitedPetList(
      pets: pets,
    );
  }

// ignore: unused_element
  LimitedVehicleList vehicle({@required List<LimitedVehicleData> vehicles}) {
    return LimitedVehicleList(
      vehicles: vehicles,
    );
  }

// ignore: unused_element
  LimitedRealEstateList realEstate(
      {@required List<LimitedRealEstateData> properties}) {
    return LimitedRealEstateList(
      properties: properties,
    );
  }

// ignore: unused_element
  LimitedJobList job({@required List<LimitedJobData> jobs}) {
    return LimitedJobList(
      jobs: jobs,
    );
  }

// ignore: unused_element
  LimitedProductList product({@required List<LimitedProductData> products}) {
    return LimitedProductList(
      products: products,
    );
  }

// ignore: unused_element
  LimitedEmptyList empty() {
    return const LimitedEmptyList();
  }

// ignore: unused_element
  LimitedDataList fromJson(Map<String, Object> json) {
    return LimitedDataList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LimitedDataList = _$LimitedDataListTearOff();

/// @nodoc
mixin _$LimitedDataList {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<LimitedPetData> pets),
    @required TResult vehicle(List<LimitedVehicleData> vehicles),
    @required TResult realEstate(List<LimitedRealEstateData> properties),
    @required TResult job(List<LimitedJobData> jobs),
    @required TResult product(List<LimitedProductData> products),
    @required TResult empty(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(List<LimitedPetData> pets),
    TResult vehicle(List<LimitedVehicleData> vehicles),
    TResult realEstate(List<LimitedRealEstateData> properties),
    TResult job(List<LimitedJobData> jobs),
    TResult product(List<LimitedProductData> products),
    TResult empty(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(LimitedPetList value),
    @required TResult vehicle(LimitedVehicleList value),
    @required TResult realEstate(LimitedRealEstateList value),
    @required TResult job(LimitedJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(LimitedEmptyList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(LimitedPetList value),
    TResult vehicle(LimitedVehicleList value),
    TResult realEstate(LimitedRealEstateList value),
    TResult job(LimitedJobList value),
    TResult product(LimitedProductList value),
    TResult empty(LimitedEmptyList value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $LimitedDataListCopyWith<$Res> {
  factory $LimitedDataListCopyWith(
          LimitedDataList value, $Res Function(LimitedDataList) then) =
      _$LimitedDataListCopyWithImpl<$Res>;
}

/// @nodoc
class _$LimitedDataListCopyWithImpl<$Res>
    implements $LimitedDataListCopyWith<$Res> {
  _$LimitedDataListCopyWithImpl(this._value, this._then);

  final LimitedDataList _value;
  // ignore: unused_field
  final $Res Function(LimitedDataList) _then;
}

/// @nodoc
abstract class $LimitedPetListCopyWith<$Res> {
  factory $LimitedPetListCopyWith(
          LimitedPetList value, $Res Function(LimitedPetList) then) =
      _$LimitedPetListCopyWithImpl<$Res>;
  $Res call({List<LimitedPetData> pets});
}

/// @nodoc
class _$LimitedPetListCopyWithImpl<$Res>
    extends _$LimitedDataListCopyWithImpl<$Res>
    implements $LimitedPetListCopyWith<$Res> {
  _$LimitedPetListCopyWithImpl(
      LimitedPetList _value, $Res Function(LimitedPetList) _then)
      : super(_value, (v) => _then(v as LimitedPetList));

  @override
  LimitedPetList get _value => super._value as LimitedPetList;

  @override
  $Res call({
    Object pets = freezed,
  }) {
    return _then(LimitedPetList(
      pets: pets == freezed ? _value.pets : pets as List<LimitedPetData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedPetList implements LimitedPetList {
  const _$LimitedPetList({@required this.pets}) : assert(pets != null);

  factory _$LimitedPetList.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedPetListFromJson(json);

  @override
  final List<LimitedPetData> pets;

  @override
  String toString() {
    return 'LimitedDataList.pet(pets: $pets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedPetList &&
            (identical(other.pets, pets) ||
                const DeepCollectionEquality().equals(other.pets, pets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pets);

  @JsonKey(ignore: true)
  @override
  $LimitedPetListCopyWith<LimitedPetList> get copyWith =>
      _$LimitedPetListCopyWithImpl<LimitedPetList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<LimitedPetData> pets),
    @required TResult vehicle(List<LimitedVehicleData> vehicles),
    @required TResult realEstate(List<LimitedRealEstateData> properties),
    @required TResult job(List<LimitedJobData> jobs),
    @required TResult product(List<LimitedProductData> products),
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
    TResult pet(List<LimitedPetData> pets),
    TResult vehicle(List<LimitedVehicleData> vehicles),
    TResult realEstate(List<LimitedRealEstateData> properties),
    TResult job(List<LimitedJobData> jobs),
    TResult product(List<LimitedProductData> products),
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
    @required TResult pet(LimitedPetList value),
    @required TResult vehicle(LimitedVehicleList value),
    @required TResult realEstate(LimitedRealEstateList value),
    @required TResult job(LimitedJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(LimitedEmptyList value),
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
    TResult pet(LimitedPetList value),
    TResult vehicle(LimitedVehicleList value),
    TResult realEstate(LimitedRealEstateList value),
    TResult job(LimitedJobList value),
    TResult product(LimitedProductList value),
    TResult empty(LimitedEmptyList value),
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
    return _$_$LimitedPetListToJson(this)..['runtimeType'] = 'pet';
  }
}

abstract class LimitedPetList implements LimitedDataList {
  const factory LimitedPetList({@required List<LimitedPetData> pets}) =
      _$LimitedPetList;

  factory LimitedPetList.fromJson(Map<String, dynamic> json) =
      _$LimitedPetList.fromJson;

  List<LimitedPetData> get pets;
  @JsonKey(ignore: true)
  $LimitedPetListCopyWith<LimitedPetList> get copyWith;
}

/// @nodoc
abstract class $LimitedVehicleListCopyWith<$Res> {
  factory $LimitedVehicleListCopyWith(
          LimitedVehicleList value, $Res Function(LimitedVehicleList) then) =
      _$LimitedVehicleListCopyWithImpl<$Res>;
  $Res call({List<LimitedVehicleData> vehicles});
}

/// @nodoc
class _$LimitedVehicleListCopyWithImpl<$Res>
    extends _$LimitedDataListCopyWithImpl<$Res>
    implements $LimitedVehicleListCopyWith<$Res> {
  _$LimitedVehicleListCopyWithImpl(
      LimitedVehicleList _value, $Res Function(LimitedVehicleList) _then)
      : super(_value, (v) => _then(v as LimitedVehicleList));

  @override
  LimitedVehicleList get _value => super._value as LimitedVehicleList;

  @override
  $Res call({
    Object vehicles = freezed,
  }) {
    return _then(LimitedVehicleList(
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles as List<LimitedVehicleData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedVehicleList implements LimitedVehicleList {
  const _$LimitedVehicleList({@required this.vehicles})
      : assert(vehicles != null);

  factory _$LimitedVehicleList.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedVehicleListFromJson(json);

  @override
  final List<LimitedVehicleData> vehicles;

  @override
  String toString() {
    return 'LimitedDataList.vehicle(vehicles: $vehicles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedVehicleList &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vehicles);

  @JsonKey(ignore: true)
  @override
  $LimitedVehicleListCopyWith<LimitedVehicleList> get copyWith =>
      _$LimitedVehicleListCopyWithImpl<LimitedVehicleList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<LimitedPetData> pets),
    @required TResult vehicle(List<LimitedVehicleData> vehicles),
    @required TResult realEstate(List<LimitedRealEstateData> properties),
    @required TResult job(List<LimitedJobData> jobs),
    @required TResult product(List<LimitedProductData> products),
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
    TResult pet(List<LimitedPetData> pets),
    TResult vehicle(List<LimitedVehicleData> vehicles),
    TResult realEstate(List<LimitedRealEstateData> properties),
    TResult job(List<LimitedJobData> jobs),
    TResult product(List<LimitedProductData> products),
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
    @required TResult pet(LimitedPetList value),
    @required TResult vehicle(LimitedVehicleList value),
    @required TResult realEstate(LimitedRealEstateList value),
    @required TResult job(LimitedJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(LimitedEmptyList value),
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
    TResult pet(LimitedPetList value),
    TResult vehicle(LimitedVehicleList value),
    TResult realEstate(LimitedRealEstateList value),
    TResult job(LimitedJobList value),
    TResult product(LimitedProductList value),
    TResult empty(LimitedEmptyList value),
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
    return _$_$LimitedVehicleListToJson(this)..['runtimeType'] = 'vehicle';
  }
}

abstract class LimitedVehicleList implements LimitedDataList {
  const factory LimitedVehicleList(
      {@required List<LimitedVehicleData> vehicles}) = _$LimitedVehicleList;

  factory LimitedVehicleList.fromJson(Map<String, dynamic> json) =
      _$LimitedVehicleList.fromJson;

  List<LimitedVehicleData> get vehicles;
  @JsonKey(ignore: true)
  $LimitedVehicleListCopyWith<LimitedVehicleList> get copyWith;
}

/// @nodoc
abstract class $LimitedRealEstateListCopyWith<$Res> {
  factory $LimitedRealEstateListCopyWith(LimitedRealEstateList value,
          $Res Function(LimitedRealEstateList) then) =
      _$LimitedRealEstateListCopyWithImpl<$Res>;
  $Res call({List<LimitedRealEstateData> properties});
}

/// @nodoc
class _$LimitedRealEstateListCopyWithImpl<$Res>
    extends _$LimitedDataListCopyWithImpl<$Res>
    implements $LimitedRealEstateListCopyWith<$Res> {
  _$LimitedRealEstateListCopyWithImpl(
      LimitedRealEstateList _value, $Res Function(LimitedRealEstateList) _then)
      : super(_value, (v) => _then(v as LimitedRealEstateList));

  @override
  LimitedRealEstateList get _value => super._value as LimitedRealEstateList;

  @override
  $Res call({
    Object properties = freezed,
  }) {
    return _then(LimitedRealEstateList(
      properties: properties == freezed
          ? _value.properties
          : properties as List<LimitedRealEstateData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedRealEstateList implements LimitedRealEstateList {
  const _$LimitedRealEstateList({@required this.properties})
      : assert(properties != null);

  factory _$LimitedRealEstateList.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedRealEstateListFromJson(json);

  @override
  final List<LimitedRealEstateData> properties;

  @override
  String toString() {
    return 'LimitedDataList.realEstate(properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedRealEstateList &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(properties);

  @JsonKey(ignore: true)
  @override
  $LimitedRealEstateListCopyWith<LimitedRealEstateList> get copyWith =>
      _$LimitedRealEstateListCopyWithImpl<LimitedRealEstateList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<LimitedPetData> pets),
    @required TResult vehicle(List<LimitedVehicleData> vehicles),
    @required TResult realEstate(List<LimitedRealEstateData> properties),
    @required TResult job(List<LimitedJobData> jobs),
    @required TResult product(List<LimitedProductData> products),
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
    TResult pet(List<LimitedPetData> pets),
    TResult vehicle(List<LimitedVehicleData> vehicles),
    TResult realEstate(List<LimitedRealEstateData> properties),
    TResult job(List<LimitedJobData> jobs),
    TResult product(List<LimitedProductData> products),
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
    @required TResult pet(LimitedPetList value),
    @required TResult vehicle(LimitedVehicleList value),
    @required TResult realEstate(LimitedRealEstateList value),
    @required TResult job(LimitedJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(LimitedEmptyList value),
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
    TResult pet(LimitedPetList value),
    TResult vehicle(LimitedVehicleList value),
    TResult realEstate(LimitedRealEstateList value),
    TResult job(LimitedJobList value),
    TResult product(LimitedProductList value),
    TResult empty(LimitedEmptyList value),
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
    return _$_$LimitedRealEstateListToJson(this)
      ..['runtimeType'] = 'realEstate';
  }
}

abstract class LimitedRealEstateList implements LimitedDataList {
  const factory LimitedRealEstateList(
          {@required List<LimitedRealEstateData> properties}) =
      _$LimitedRealEstateList;

  factory LimitedRealEstateList.fromJson(Map<String, dynamic> json) =
      _$LimitedRealEstateList.fromJson;

  List<LimitedRealEstateData> get properties;
  @JsonKey(ignore: true)
  $LimitedRealEstateListCopyWith<LimitedRealEstateList> get copyWith;
}

/// @nodoc
abstract class $LimitedJobListCopyWith<$Res> {
  factory $LimitedJobListCopyWith(
          LimitedJobList value, $Res Function(LimitedJobList) then) =
      _$LimitedJobListCopyWithImpl<$Res>;
  $Res call({List<LimitedJobData> jobs});
}

/// @nodoc
class _$LimitedJobListCopyWithImpl<$Res>
    extends _$LimitedDataListCopyWithImpl<$Res>
    implements $LimitedJobListCopyWith<$Res> {
  _$LimitedJobListCopyWithImpl(
      LimitedJobList _value, $Res Function(LimitedJobList) _then)
      : super(_value, (v) => _then(v as LimitedJobList));

  @override
  LimitedJobList get _value => super._value as LimitedJobList;

  @override
  $Res call({
    Object jobs = freezed,
  }) {
    return _then(LimitedJobList(
      jobs: jobs == freezed ? _value.jobs : jobs as List<LimitedJobData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$LimitedJobList implements LimitedJobList {
  const _$LimitedJobList({@required this.jobs}) : assert(jobs != null);

  factory _$LimitedJobList.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedJobListFromJson(json);

  @override
  final List<LimitedJobData> jobs;

  @override
  String toString() {
    return 'LimitedDataList.job(jobs: $jobs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedJobList &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(jobs);

  @JsonKey(ignore: true)
  @override
  $LimitedJobListCopyWith<LimitedJobList> get copyWith =>
      _$LimitedJobListCopyWithImpl<LimitedJobList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<LimitedPetData> pets),
    @required TResult vehicle(List<LimitedVehicleData> vehicles),
    @required TResult realEstate(List<LimitedRealEstateData> properties),
    @required TResult job(List<LimitedJobData> jobs),
    @required TResult product(List<LimitedProductData> products),
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
    TResult pet(List<LimitedPetData> pets),
    TResult vehicle(List<LimitedVehicleData> vehicles),
    TResult realEstate(List<LimitedRealEstateData> properties),
    TResult job(List<LimitedJobData> jobs),
    TResult product(List<LimitedProductData> products),
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
    @required TResult pet(LimitedPetList value),
    @required TResult vehicle(LimitedVehicleList value),
    @required TResult realEstate(LimitedRealEstateList value),
    @required TResult job(LimitedJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(LimitedEmptyList value),
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
    TResult pet(LimitedPetList value),
    TResult vehicle(LimitedVehicleList value),
    TResult realEstate(LimitedRealEstateList value),
    TResult job(LimitedJobList value),
    TResult product(LimitedProductList value),
    TResult empty(LimitedEmptyList value),
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
    return _$_$LimitedJobListToJson(this)..['runtimeType'] = 'job';
  }
}

abstract class LimitedJobList implements LimitedDataList {
  const factory LimitedJobList({@required List<LimitedJobData> jobs}) =
      _$LimitedJobList;

  factory LimitedJobList.fromJson(Map<String, dynamic> json) =
      _$LimitedJobList.fromJson;

  List<LimitedJobData> get jobs;
  @JsonKey(ignore: true)
  $LimitedJobListCopyWith<LimitedJobList> get copyWith;
}

/// @nodoc
abstract class $LimitedProductListCopyWith<$Res> {
  factory $LimitedProductListCopyWith(
          LimitedProductList value, $Res Function(LimitedProductList) then) =
      _$LimitedProductListCopyWithImpl<$Res>;
  $Res call({List<LimitedProductData> products});
}

/// @nodoc
class _$LimitedProductListCopyWithImpl<$Res>
    extends _$LimitedDataListCopyWithImpl<$Res>
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
          : products as List<LimitedProductData>,
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
  final List<LimitedProductData> products;

  @override
  String toString() {
    return 'LimitedDataList.product(products: $products)';
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
    @required TResult pet(List<LimitedPetData> pets),
    @required TResult vehicle(List<LimitedVehicleData> vehicles),
    @required TResult realEstate(List<LimitedRealEstateData> properties),
    @required TResult job(List<LimitedJobData> jobs),
    @required TResult product(List<LimitedProductData> products),
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
    TResult pet(List<LimitedPetData> pets),
    TResult vehicle(List<LimitedVehicleData> vehicles),
    TResult realEstate(List<LimitedRealEstateData> properties),
    TResult job(List<LimitedJobData> jobs),
    TResult product(List<LimitedProductData> products),
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
    @required TResult pet(LimitedPetList value),
    @required TResult vehicle(LimitedVehicleList value),
    @required TResult realEstate(LimitedRealEstateList value),
    @required TResult job(LimitedJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(LimitedEmptyList value),
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
    TResult pet(LimitedPetList value),
    TResult vehicle(LimitedVehicleList value),
    TResult realEstate(LimitedRealEstateList value),
    TResult job(LimitedJobList value),
    TResult product(LimitedProductList value),
    TResult empty(LimitedEmptyList value),
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

abstract class LimitedProductList implements LimitedDataList {
  const factory LimitedProductList(
      {@required List<LimitedProductData> products}) = _$LimitedProductList;

  factory LimitedProductList.fromJson(Map<String, dynamic> json) =
      _$LimitedProductList.fromJson;

  List<LimitedProductData> get products;
  @JsonKey(ignore: true)
  $LimitedProductListCopyWith<LimitedProductList> get copyWith;
}

/// @nodoc
abstract class $LimitedEmptyListCopyWith<$Res> {
  factory $LimitedEmptyListCopyWith(
          LimitedEmptyList value, $Res Function(LimitedEmptyList) then) =
      _$LimitedEmptyListCopyWithImpl<$Res>;
}

/// @nodoc
class _$LimitedEmptyListCopyWithImpl<$Res>
    extends _$LimitedDataListCopyWithImpl<$Res>
    implements $LimitedEmptyListCopyWith<$Res> {
  _$LimitedEmptyListCopyWithImpl(
      LimitedEmptyList _value, $Res Function(LimitedEmptyList) _then)
      : super(_value, (v) => _then(v as LimitedEmptyList));

  @override
  LimitedEmptyList get _value => super._value as LimitedEmptyList;
}

@JsonSerializable()

/// @nodoc
class _$LimitedEmptyList implements LimitedEmptyList {
  const _$LimitedEmptyList();

  factory _$LimitedEmptyList.fromJson(Map<String, dynamic> json) =>
      _$_$LimitedEmptyListFromJson(json);

  @override
  String toString() {
    return 'LimitedDataList.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LimitedEmptyList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(List<LimitedPetData> pets),
    @required TResult vehicle(List<LimitedVehicleData> vehicles),
    @required TResult realEstate(List<LimitedRealEstateData> properties),
    @required TResult job(List<LimitedJobData> jobs),
    @required TResult product(List<LimitedProductData> products),
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
    TResult pet(List<LimitedPetData> pets),
    TResult vehicle(List<LimitedVehicleData> vehicles),
    TResult realEstate(List<LimitedRealEstateData> properties),
    TResult job(List<LimitedJobData> jobs),
    TResult product(List<LimitedProductData> products),
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
    @required TResult pet(LimitedPetList value),
    @required TResult vehicle(LimitedVehicleList value),
    @required TResult realEstate(LimitedRealEstateList value),
    @required TResult job(LimitedJobList value),
    @required TResult product(LimitedProductList value),
    @required TResult empty(LimitedEmptyList value),
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
    TResult pet(LimitedPetList value),
    TResult vehicle(LimitedVehicleList value),
    TResult realEstate(LimitedRealEstateList value),
    TResult job(LimitedJobList value),
    TResult product(LimitedProductList value),
    TResult empty(LimitedEmptyList value),
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
    return _$_$LimitedEmptyListToJson(this)..['runtimeType'] = 'empty';
  }
}

abstract class LimitedEmptyList implements LimitedDataList {
  const factory LimitedEmptyList() = _$LimitedEmptyList;

  factory LimitedEmptyList.fromJson(Map<String, dynamic> json) =
      _$LimitedEmptyList.fromJson;
}

/// @nodoc
class _$EcomProductTypeTearOff {
  const _$EcomProductTypeTearOff();

// ignore: unused_element
  _PetType pet() {
    return const _PetType();
  }

// ignore: unused_element
  _VehicleType vehicle() {
    return const _VehicleType();
  }

// ignore: unused_element
  _RealEstateType realEstate() {
    return const _RealEstateType();
  }

// ignore: unused_element
  _JobType job() {
    return const _JobType();
  }

// ignore: unused_element
  _ProductType product() {
    return const _ProductType();
  }
}

/// @nodoc
// ignore: unused_element
const $EcomProductType = _$EcomProductTypeTearOff();

/// @nodoc
mixin _$EcomProductType {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(),
    @required TResult vehicle(),
    @required TResult realEstate(),
    @required TResult job(),
    @required TResult product(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(),
    TResult vehicle(),
    TResult realEstate(),
    TResult job(),
    TResult product(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(_PetType value),
    @required TResult vehicle(_VehicleType value),
    @required TResult realEstate(_RealEstateType value),
    @required TResult job(_JobType value),
    @required TResult product(_ProductType value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(_PetType value),
    TResult vehicle(_VehicleType value),
    TResult realEstate(_RealEstateType value),
    TResult job(_JobType value),
    TResult product(_ProductType value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EcomProductTypeCopyWith<$Res> {
  factory $EcomProductTypeCopyWith(
          EcomProductType value, $Res Function(EcomProductType) then) =
      _$EcomProductTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$EcomProductTypeCopyWithImpl<$Res>
    implements $EcomProductTypeCopyWith<$Res> {
  _$EcomProductTypeCopyWithImpl(this._value, this._then);

  final EcomProductType _value;
  // ignore: unused_field
  final $Res Function(EcomProductType) _then;
}

/// @nodoc
abstract class _$PetTypeCopyWith<$Res> {
  factory _$PetTypeCopyWith(_PetType value, $Res Function(_PetType) then) =
      __$PetTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$PetTypeCopyWithImpl<$Res> extends _$EcomProductTypeCopyWithImpl<$Res>
    implements _$PetTypeCopyWith<$Res> {
  __$PetTypeCopyWithImpl(_PetType _value, $Res Function(_PetType) _then)
      : super(_value, (v) => _then(v as _PetType));

  @override
  _PetType get _value => super._value as _PetType;
}

/// @nodoc
class _$_PetType implements _PetType {
  const _$_PetType();

  @override
  String toString() {
    return 'EcomProductType.pet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PetType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(),
    @required TResult vehicle(),
    @required TResult realEstate(),
    @required TResult job(),
    @required TResult product(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    return pet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(),
    TResult vehicle(),
    TResult realEstate(),
    TResult job(),
    TResult product(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pet != null) {
      return pet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(_PetType value),
    @required TResult vehicle(_VehicleType value),
    @required TResult realEstate(_RealEstateType value),
    @required TResult job(_JobType value),
    @required TResult product(_ProductType value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    return pet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(_PetType value),
    TResult vehicle(_VehicleType value),
    TResult realEstate(_RealEstateType value),
    TResult job(_JobType value),
    TResult product(_ProductType value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pet != null) {
      return pet(this);
    }
    return orElse();
  }
}

abstract class _PetType implements EcomProductType {
  const factory _PetType() = _$_PetType;
}

/// @nodoc
abstract class _$VehicleTypeCopyWith<$Res> {
  factory _$VehicleTypeCopyWith(
          _VehicleType value, $Res Function(_VehicleType) then) =
      __$VehicleTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$VehicleTypeCopyWithImpl<$Res>
    extends _$EcomProductTypeCopyWithImpl<$Res>
    implements _$VehicleTypeCopyWith<$Res> {
  __$VehicleTypeCopyWithImpl(
      _VehicleType _value, $Res Function(_VehicleType) _then)
      : super(_value, (v) => _then(v as _VehicleType));

  @override
  _VehicleType get _value => super._value as _VehicleType;
}

/// @nodoc
class _$_VehicleType implements _VehicleType {
  const _$_VehicleType();

  @override
  String toString() {
    return 'EcomProductType.vehicle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VehicleType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(),
    @required TResult vehicle(),
    @required TResult realEstate(),
    @required TResult job(),
    @required TResult product(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    return vehicle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(),
    TResult vehicle(),
    TResult realEstate(),
    TResult job(),
    TResult product(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (vehicle != null) {
      return vehicle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(_PetType value),
    @required TResult vehicle(_VehicleType value),
    @required TResult realEstate(_RealEstateType value),
    @required TResult job(_JobType value),
    @required TResult product(_ProductType value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    return vehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(_PetType value),
    TResult vehicle(_VehicleType value),
    TResult realEstate(_RealEstateType value),
    TResult job(_JobType value),
    TResult product(_ProductType value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (vehicle != null) {
      return vehicle(this);
    }
    return orElse();
  }
}

abstract class _VehicleType implements EcomProductType {
  const factory _VehicleType() = _$_VehicleType;
}

/// @nodoc
abstract class _$RealEstateTypeCopyWith<$Res> {
  factory _$RealEstateTypeCopyWith(
          _RealEstateType value, $Res Function(_RealEstateType) then) =
      __$RealEstateTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$RealEstateTypeCopyWithImpl<$Res>
    extends _$EcomProductTypeCopyWithImpl<$Res>
    implements _$RealEstateTypeCopyWith<$Res> {
  __$RealEstateTypeCopyWithImpl(
      _RealEstateType _value, $Res Function(_RealEstateType) _then)
      : super(_value, (v) => _then(v as _RealEstateType));

  @override
  _RealEstateType get _value => super._value as _RealEstateType;
}

/// @nodoc
class _$_RealEstateType implements _RealEstateType {
  const _$_RealEstateType();

  @override
  String toString() {
    return 'EcomProductType.realEstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RealEstateType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(),
    @required TResult vehicle(),
    @required TResult realEstate(),
    @required TResult job(),
    @required TResult product(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    return realEstate();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(),
    TResult vehicle(),
    TResult realEstate(),
    TResult job(),
    TResult product(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (realEstate != null) {
      return realEstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(_PetType value),
    @required TResult vehicle(_VehicleType value),
    @required TResult realEstate(_RealEstateType value),
    @required TResult job(_JobType value),
    @required TResult product(_ProductType value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    return realEstate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(_PetType value),
    TResult vehicle(_VehicleType value),
    TResult realEstate(_RealEstateType value),
    TResult job(_JobType value),
    TResult product(_ProductType value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (realEstate != null) {
      return realEstate(this);
    }
    return orElse();
  }
}

abstract class _RealEstateType implements EcomProductType {
  const factory _RealEstateType() = _$_RealEstateType;
}

/// @nodoc
abstract class _$JobTypeCopyWith<$Res> {
  factory _$JobTypeCopyWith(_JobType value, $Res Function(_JobType) then) =
      __$JobTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$JobTypeCopyWithImpl<$Res> extends _$EcomProductTypeCopyWithImpl<$Res>
    implements _$JobTypeCopyWith<$Res> {
  __$JobTypeCopyWithImpl(_JobType _value, $Res Function(_JobType) _then)
      : super(_value, (v) => _then(v as _JobType));

  @override
  _JobType get _value => super._value as _JobType;
}

/// @nodoc
class _$_JobType implements _JobType {
  const _$_JobType();

  @override
  String toString() {
    return 'EcomProductType.job()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _JobType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(),
    @required TResult vehicle(),
    @required TResult realEstate(),
    @required TResult job(),
    @required TResult product(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    return job();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(),
    TResult vehicle(),
    TResult realEstate(),
    TResult job(),
    TResult product(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (job != null) {
      return job();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(_PetType value),
    @required TResult vehicle(_VehicleType value),
    @required TResult realEstate(_RealEstateType value),
    @required TResult job(_JobType value),
    @required TResult product(_ProductType value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    return job(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(_PetType value),
    TResult vehicle(_VehicleType value),
    TResult realEstate(_RealEstateType value),
    TResult job(_JobType value),
    TResult product(_ProductType value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (job != null) {
      return job(this);
    }
    return orElse();
  }
}

abstract class _JobType implements EcomProductType {
  const factory _JobType() = _$_JobType;
}

/// @nodoc
abstract class _$ProductTypeCopyWith<$Res> {
  factory _$ProductTypeCopyWith(
          _ProductType value, $Res Function(_ProductType) then) =
      __$ProductTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProductTypeCopyWithImpl<$Res>
    extends _$EcomProductTypeCopyWithImpl<$Res>
    implements _$ProductTypeCopyWith<$Res> {
  __$ProductTypeCopyWithImpl(
      _ProductType _value, $Res Function(_ProductType) _then)
      : super(_value, (v) => _then(v as _ProductType));

  @override
  _ProductType get _value => super._value as _ProductType;
}

/// @nodoc
class _$_ProductType implements _ProductType {
  const _$_ProductType();

  @override
  String toString() {
    return 'EcomProductType.product()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProductType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pet(),
    @required TResult vehicle(),
    @required TResult realEstate(),
    @required TResult job(),
    @required TResult product(),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    return product();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(),
    TResult vehicle(),
    TResult realEstate(),
    TResult job(),
    TResult product(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (product != null) {
      return product();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pet(_PetType value),
    @required TResult vehicle(_VehicleType value),
    @required TResult realEstate(_RealEstateType value),
    @required TResult job(_JobType value),
    @required TResult product(_ProductType value),
  }) {
    assert(pet != null);
    assert(vehicle != null);
    assert(realEstate != null);
    assert(job != null);
    assert(product != null);
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pet(_PetType value),
    TResult vehicle(_VehicleType value),
    TResult realEstate(_RealEstateType value),
    TResult job(_JobType value),
    TResult product(_ProductType value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (product != null) {
      return product(this);
    }
    return orElse();
  }
}

abstract class _ProductType implements EcomProductType {
  const factory _ProductType() = _$_ProductType;
}
