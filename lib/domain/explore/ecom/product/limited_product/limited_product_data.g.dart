// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limited_product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LimitedPetData _$_$LimitedPetDataFromJson(Map<String, dynamic> json) {
  return _$LimitedPetData(
    docid: json['docid'] as String,
    petclass: json['petclass'] as String,
    name: json['name'] as String,
    breed: json['breed'] as String,
    gender: json['gender'] as String,
    animalclass: json['animalclass'] as String,
    age: json['age'] as int,
    tileimage: json['tileimage'] as String,
    price: (json['price'] as num)?.toDouble(),
    postedon: JsonHelper.fromJsonTimeStamp(json['postedon'] as Timestamp),
    addressarea: json['addressarea'] == null
        ? null
        : Addressmodel.fromJson(json['addressarea'] as Map<String, dynamic>),
    serviceproviderid: json['serviceproviderid'] as String,
  );
}

Map<String, dynamic> _$_$LimitedPetDataToJson(_$LimitedPetData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('docid', instance.docid);
  writeNotNull('petclass', instance.petclass);
  writeNotNull('name', instance.name);
  writeNotNull('breed', instance.breed);
  writeNotNull('gender', instance.gender);
  writeNotNull('animalclass', instance.animalclass);
  writeNotNull('age', instance.age);
  writeNotNull('tileimage', instance.tileimage);
  writeNotNull('price', instance.price);
  writeNotNull('postedon', JsonHelper.toJsonTimeStamp(instance.postedon));
  writeNotNull('addressarea', instance.addressarea?.toJson());
  writeNotNull('serviceproviderid', instance.serviceproviderid);
  return val;
}

_$LimitedPackageData _$_$LimitedPackageDataFromJson(Map<String, dynamic> json) {
  return _$LimitedPackageData(
    itemid: json['itemid'] as String,
    desc: json['desc'] as String,
    origprice: (json['origprice'] as num)?.toDouble(),
    discountedprice: (json['discountedprice'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$LimitedPackageDataToJson(
    _$LimitedPackageData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('itemid', instance.itemid);
  writeNotNull('desc', instance.desc);
  writeNotNull('origprice', instance.origprice);
  writeNotNull('discountedprice', instance.discountedprice);
  return val;
}

_$LimitedProductData _$_$LimitedProductDataFromJson(Map<String, dynamic> json) {
  return _$LimitedProductData(
    id: json['id'] as String,
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
    contenttype: json['contenttype'] as String,
  );
}

Map<String, dynamic> _$_$LimitedProductDataToJson(
    _$LimitedProductData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('tileimage', instance.tileimage);
  writeNotNull('reqqty', instance.reqqty);
  writeNotNull('isvegetarian', instance.isvegetarian);
  writeNotNull('spicetype', instance.spicetype);
  writeNotNull('ispackage', instance.ispackage);
  writeNotNull('unitmeasure', instance.unitmeasure);
  writeNotNull('origprice', instance.origprice);
  writeNotNull('discountedprice', instance.discountedprice);
  writeNotNull('varianttype', instance.varianttype);
  writeNotNull(
      'packdata', instance.packdata?.map((e) => e?.toJson())?.toList());
  writeNotNull('contenttype', instance.contenttype);
  return val;
}

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
    postedon: JsonHelper.fromJsonTimeStamp(json['postedon'] as Timestamp),
    addressarea: json['addressarea'] == null
        ? null
        : Addressmodel.fromJson(json['addressarea'] as Map<String, dynamic>),
    serviceproviderid: json['serviceproviderid'] as String,
  );
}

Map<String, dynamic> _$_$LimitedVehicleDataToJson(
    _$LimitedVehicleData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('productid', instance.productid);
  writeNotNull('title', instance.title);
  writeNotNull('vehicletype', instance.vehicletype);
  writeNotNull('make', instance.make);
  writeNotNull('model', instance.model);
  writeNotNull('yearmade', instance.yearmade);
  writeNotNull('milage', instance.milage);
  writeNotNull('price', instance.price);
  writeNotNull('tileimage', instance.tileimage);
  writeNotNull('postedon', JsonHelper.toJsonTimeStamp(instance.postedon));
  writeNotNull('addressarea', instance.addressarea?.toJson());
  writeNotNull('serviceproviderid', instance.serviceproviderid);
  return val;
}

_$LimitedRealEstateData _$_$LimitedRealEstateDataFromJson(
    Map<String, dynamic> json) {
  return _$LimitedRealEstateData(
    productid: json['productid'] as String,
    listingtype: json['listingtype'] as String,
    propertytype: json['propertytype'] as String,
    numbedroom: json['numbedroom'] as int,
    numbathroom: json['numbathroom'] as int,
    sharingallowed: json['sharingallowed'] as bool,
    sqrfootage: json['sqrfootage'] as int,
    floorNumber: json['floorNumber'] as int,
    price: (json['price'] as num)?.toDouble(),
    addressarea: json['addressarea'] == null
        ? null
        : Addressmodel.fromJson(json['addressarea'] as Map<String, dynamic>),
    postedon: JsonHelper.fromJsonTimeStamp(json['postedon'] as Timestamp),
    tileimage: json['tileimage'] as String,
    serviceproviderid: json['serviceproviderid'] as String,
  );
}

Map<String, dynamic> _$_$LimitedRealEstateDataToJson(
    _$LimitedRealEstateData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('productid', instance.productid);
  writeNotNull('listingtype', instance.listingtype);
  writeNotNull('propertytype', instance.propertytype);
  writeNotNull('numbedroom', instance.numbedroom);
  writeNotNull('numbathroom', instance.numbathroom);
  writeNotNull('sharingallowed', instance.sharingallowed);
  writeNotNull('sqrfootage', instance.sqrfootage);
  writeNotNull('floorNumber', instance.floorNumber);
  writeNotNull('price', instance.price);
  writeNotNull('addressarea', instance.addressarea?.toJson());
  writeNotNull('postedon', JsonHelper.toJsonTimeStamp(instance.postedon));
  writeNotNull('tileimage', instance.tileimage);
  writeNotNull('serviceproviderid', instance.serviceproviderid);
  return val;
}

_$LimitedJobData _$_$LimitedJobDataFromJson(Map<String, dynamic> json) {
  return _$LimitedJobData(
    productid: json['productid'] as String,
    title: json['title'] as String,
    companyname: json['companyname'] as String,
    companyicon: json['companyicon'] as String,
    salaryrange: json['salaryrange'] as String,
    addressarea: json['addressarea'] == null
        ? null
        : Addressmodel.fromJson(json['addressarea'] as Map<String, dynamic>),
    jobtype: json['jobtype'] as String,
    postedon: JsonHelper.fromJsonTimeStamp(json['postedon'] as Timestamp),
  );
}

Map<String, dynamic> _$_$LimitedJobDataToJson(_$LimitedJobData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('productid', instance.productid);
  writeNotNull('title', instance.title);
  writeNotNull('companyname', instance.companyname);
  writeNotNull('companyicon', instance.companyicon);
  writeNotNull('salaryrange', instance.salaryrange);
  writeNotNull('addressarea', instance.addressarea?.toJson());
  writeNotNull('jobtype', instance.jobtype);
  writeNotNull('postedon', JsonHelper.toJsonTimeStamp(instance.postedon));
  return val;
}

_$LimitedPetList _$_$LimitedPetListFromJson(Map<String, dynamic> json) {
  return _$LimitedPetList(
    pets: (json['pets'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedPetData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$LimitedPetListToJson(_$LimitedPetList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pets', instance.pets?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    _$LimitedVehicleList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'vehicles', instance.vehicles?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    _$LimitedRealEstateList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'properties', instance.properties?.map((e) => e?.toJson())?.toList());
  return val;
}

_$LimitedJobList _$_$LimitedJobListFromJson(Map<String, dynamic> json) {
  return _$LimitedJobList(
    jobs: (json['jobs'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedJobData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$LimitedJobListToJson(_$LimitedJobList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jobs', instance.jobs?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    _$LimitedProductList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'products', instance.products?.map((e) => e?.toJson())?.toList());
  return val;
}

_$LimitedEmptyList _$_$LimitedEmptyListFromJson(Map<String, dynamic> json) {
  return _$LimitedEmptyList();
}

Map<String, dynamic> _$_$LimitedEmptyListToJson(_$LimitedEmptyList instance) =>
    <String, dynamic>{};
