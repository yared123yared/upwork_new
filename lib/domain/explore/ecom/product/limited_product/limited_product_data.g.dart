// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limited_product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LimitedPetData _$_$LimitedPetDataFromJson(Map<String, dynamic> json) {
  return _$LimitedPetData(
    petclass: json['petclass'] as String,
    name: json['name'] as String,
    breed: json['breed'] as String,
    gender: json['gender'] as String,
    animalclass: json['animalclass'] as String,
    age: json['age'] as int,
    tileimage: json['tileimage'] as String,
    title: json['title'] as String,
    price: (json['price'] as num)?.toDouble(),
    postedon: JsonHelper.fromJsonTimeStamp(json['postedon']),
    addressarea: json['addressarea'],
    serviceproviderid: json['serviceproviderid'] as String,
    userid: json['userid'] as String,
    productid: json['productid'] as String,
  );
}

Map<String, dynamic> _$_$LimitedPetDataToJson(_$LimitedPetData instance) =>
    <String, dynamic>{
      'petclass': instance.petclass,
      'name': instance.name,
      'breed': instance.breed,
      'gender': instance.gender,
      'animalclass': instance.animalclass,
      'age': instance.age,
      'tileimage': instance.tileimage,
      'title': instance.title,
      'price': instance.price,
      'postedon': JsonHelper.toJsonTimeStamp(instance.postedon),
      'addressarea': instance.addressarea,
      'serviceproviderid': instance.serviceproviderid,
      'userid': instance.userid,
      'productid': instance.productid,
    };

_$LimitedPackageData _$_$LimitedPackageDataFromJson(Map<String, dynamic> json) {
  return _$LimitedPackageData(
    itemid: json['itemid'] as String,
    desc: json['desc'] as String,
    origprice: (json['origprice'] as num)?.toDouble(),
    discountedprice: (json['discountedprice'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$LimitedPackageDataToJson(
        _$LimitedPackageData instance) =>
    <String, dynamic>{
      'itemid': instance.itemid,
      'desc': instance.desc,
      'origprice': instance.origprice,
      'discountedprice': instance.discountedprice,
    };

_$LimitedProductData _$_$LimitedProductDataFromJson(Map<String, dynamic> json) {
  return _$LimitedProductData(
    productid: json['productid'] as String,
    title: json['title'] as String,
    tileimage: json['tileimage'] as String,
    reqqty: json['reqqty'] as bool,
    isvegetarian: json['isvegetarian'] as bool,
    spicetype: json['spicetype'] as int,
    ispackage: json['ispackage'] as bool,
    unitmeasure: json['unitmeasure'] as String,
    origprice: (json['origprice'] as num)?.toDouble(),
    discountedprice: (json['discountedprice'] as num)?.toDouble(),
    varianttype: json['varianttype'] as String,
    packdata: (json['packdata'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedPackageData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    userid: json['userid'] as String,
    serviceproviderid: json['serviceproviderid'] as String,
    contenttype: json['contenttype'] as String,
    addressarea: json['addressarea'],
  );
}

Map<String, dynamic> _$_$LimitedProductDataToJson(
        _$LimitedProductData instance) =>
    <String, dynamic>{
      'productid': instance.productid,
      'title': instance.title,
      'tileimage': instance.tileimage,
      'reqqty': instance.reqqty,
      'isvegetarian': instance.isvegetarian,
      'spicetype': instance.spicetype,
      'ispackage': instance.ispackage,
      'unitmeasure': instance.unitmeasure,
      'origprice': instance.origprice,
      'discountedprice': instance.discountedprice,
      'varianttype': instance.varianttype,
      'packdata': instance.packdata,
      'userid': instance.userid,
      'serviceproviderid': instance.serviceproviderid,
      'contenttype': instance.contenttype,
      'addressarea': instance.addressarea,
    };

_$LimitedVehicleData _$_$LimitedVehicleDataFromJson(Map<String, dynamic> json) {
  return _$LimitedVehicleData(
    productid: json['productid'] as String,
    title: json['title'] as String,
    vehicletype: json['vehicletype'] as String,
    make: json['make'] as String,
    model: json['model'] as String,
    yearmade: json['yearmade'] as int,
    milage: json['milage'] as int,
    price: (json['price'] as num)?.toDouble(),
    tileimage: json['tileimage'] as String,
    postedon: JsonHelper.fromJsonTimeStamp(json['postedon']),
    addressarea: json['addressarea'],
    serviceproviderid: json['serviceproviderid'] as String,
    userid: json['userid'] as String,
  );
}

Map<String, dynamic> _$_$LimitedVehicleDataToJson(
        _$LimitedVehicleData instance) =>
    <String, dynamic>{
      'productid': instance.productid,
      'title': instance.title,
      'vehicletype': instance.vehicletype,
      'make': instance.make,
      'model': instance.model,
      'yearmade': instance.yearmade,
      'milage': instance.milage,
      'price': instance.price,
      'tileimage': instance.tileimage,
      'postedon': JsonHelper.toJsonTimeStamp(instance.postedon),
      'addressarea': instance.addressarea,
      'serviceproviderid': instance.serviceproviderid,
      'userid': instance.userid,
    };

_$LimitedRealEstateData _$_$LimitedRealEstateDataFromJson(
    Map<String, dynamic> json) {
  return _$LimitedRealEstateData(
    productid: json['productid'] as String,
    listingtype: json['listingtype'] as String,
    propertytype: json['propertytype'] as String,
    numbedroom: json['numbedroom'] as int,
    numbathroom: json['numbathroom'] as int,
    sharingallowed: json['sharingallowed'] as String,
    sqrfootage: json['sqrfootage'] as int,
    price: (json['price'] as num)?.toDouble(),
    title: json['title'] as String,
    addressarea: json['addressarea'],
    postedon: JsonHelper.fromJsonTimeStamp(json['postedon']),
    tileimage: json['tileimage'] as String,
    serviceprovidername: json['serviceprovidername'] as String,
    serviceproviderid: json['serviceproviderid'] as String,
    userid: json['userid'] as String,
  );
}

Map<String, dynamic> _$_$LimitedRealEstateDataToJson(
        _$LimitedRealEstateData instance) =>
    <String, dynamic>{
      'productid': instance.productid,
      'listingtype': instance.listingtype,
      'propertytype': instance.propertytype,
      'numbedroom': instance.numbedroom,
      'numbathroom': instance.numbathroom,
      'sharingallowed': instance.sharingallowed,
      'sqrfootage': instance.sqrfootage,
      'price': instance.price,
      'title': instance.title,
      'addressarea': instance.addressarea,
      'postedon': JsonHelper.toJsonTimeStamp(instance.postedon),
      'tileimage': instance.tileimage,
      'serviceprovidername': instance.serviceprovidername,
      'serviceproviderid': instance.serviceproviderid,
      'userid': instance.userid,
    };

_$LimitedJobData _$_$LimitedJobDataFromJson(Map<String, dynamic> json) {
  return _$LimitedJobData(
    productid: json['productid'] as String,
    title: json['title'] as String,
    companyname: json['companyname'] as String,
    salaryrange: json['salaryrange'] as String,
    addressarea: json['addressarea'],
    jobtype: json['jobtype'] as String,
    postedon: JsonHelper.fromJsonTimeStamp(json['postedon']),
    serviceproviderid: json['serviceproviderid'] as String,
    userid: json['userid'] as String,
  );
}

Map<String, dynamic> _$_$LimitedJobDataToJson(_$LimitedJobData instance) =>
    <String, dynamic>{
      'productid': instance.productid,
      'title': instance.title,
      'companyname': instance.companyname,
      'salaryrange': instance.salaryrange,
      'addressarea': instance.addressarea,
      'jobtype': instance.jobtype,
      'postedon': JsonHelper.toJsonTimeStamp(instance.postedon),
      'serviceproviderid': instance.serviceproviderid,
      'userid': instance.userid,
    };

_$LimitedPetList _$_$LimitedPetListFromJson(Map<String, dynamic> json) {
  return _$LimitedPetList(
    pets: (json['pets'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedPetData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$LimitedPetListToJson(_$LimitedPetList instance) =>
    <String, dynamic>{
      'pets': instance.pets,
    };

_$LimitedVehicleList _$_$LimitedVehicleListFromJson(Map<String, dynamic> json) {
  return _$LimitedVehicleList(
    vehicles: (json['vehicles'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedVehicleData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$LimitedVehicleListToJson(
        _$LimitedVehicleList instance) =>
    <String, dynamic>{
      'vehicles': instance.vehicles,
    };

_$LimitedRealEstateList _$_$LimitedRealEstateListFromJson(
    Map<String, dynamic> json) {
  return _$LimitedRealEstateList(
    properties: (json['properties'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedRealEstateData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$LimitedRealEstateListToJson(
        _$LimitedRealEstateList instance) =>
    <String, dynamic>{
      'properties': instance.properties,
    };

_$LimitedJobList _$_$LimitedJobListFromJson(Map<String, dynamic> json) {
  return _$LimitedJobList(
    jobs: (json['jobs'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedJobData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$LimitedJobListToJson(_$LimitedJobList instance) =>
    <String, dynamic>{
      'jobs': instance.jobs,
    };

_$LimitedProductList _$_$LimitedProductListFromJson(Map<String, dynamic> json) {
  return _$LimitedProductList(
    products: (json['products'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedProductData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$LimitedProductListToJson(
        _$LimitedProductList instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$LimitedEmptyList _$_$LimitedEmptyListFromJson(Map<String, dynamic> json) {
  return _$LimitedEmptyList();
}

Map<String, dynamic> _$_$LimitedEmptyListToJson(_$LimitedEmptyList instance) =>
    <String, dynamic>{};
