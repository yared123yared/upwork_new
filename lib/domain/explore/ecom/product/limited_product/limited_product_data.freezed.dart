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
      {String docid,
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
          String serviceproviderid}) {
    return LimitedPetData(
      docid: docid,
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
            String docid,
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
        String docid,
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
      {String docid,
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
    Object docid = freezed,
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
      docid: docid == freezed ? _value.docid : docid as String,
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
      {this.docid,
      @JsonKey(name: 'petclass')
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
  final String docid;
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
    return 'LimitedData.pet(docid: $docid, petclass: $petclass, name: $name, breed: $breed, gender: $gender, animalclass: $animalclass, age: $age, tileimage: $tileimage, price: $price, postedon: $postedon, addressarea: $addressarea, serviceproviderid: $serviceproviderid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LimitedPetData &&
            (identical(other.docid, docid) ||
                const DeepCollectionEquality().equals(other.docid, docid)) &&
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
      const DeepCollectionEquality().hash(docid) ^
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
            String docid,
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
    return pet(docid, petclass, name, breed, gender, animalclass, age,
        tileimage, price, postedon, addressarea, serviceproviderid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pet(
        String docid,
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
      return pet(docid, petclass, name, breed, gender, animalclass, age,
          tileimage, price, postedon, addressarea, serviceproviderid);
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
      {String docid,
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
          String serviceproviderid}) = _$LimitedPetData;

  factory LimitedPetData.fromJson(Map<String, dynamic> json) =
      _$LimitedPetData.fromJson;

  String get docid;
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
            String docid,
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
        String docid,
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
            String docid,
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
        String docid,
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
            String docid,
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
        String docid,
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
            String docid,
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
        String docid,
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
            String docid,
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
        String docid,
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
