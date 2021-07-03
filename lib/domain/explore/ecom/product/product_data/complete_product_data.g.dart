// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompleteRealEstate _$_$CompleteRealEstateFromJson(Map<String, dynamic> json) {
  return _$CompleteRealEstate(
    docId: json['docid'] as String,
    dt: json['dt'] as String,
    serviceId: json['serviceproviderid'] as String ?? '',
    userId: json['userid'] as String ?? '',
    data: json['adata'] == null
        ? null
        : RealEstateData.fromJson(json['adata'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$CompleteRealEstateToJson(
    _$CompleteRealEstate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('docid', instance.docId);
  writeNotNull('dt', instance.dt);
  writeNotNull('serviceproviderid', instance.serviceId);
  writeNotNull('userid', instance.userId);
  writeNotNull('adata', instance.data?.toJson());
  return val;
}

_$CompleteJob _$_$CompleteJobFromJson(Map<String, dynamic> json) {
  return _$CompleteJob(
    docId: json['docid'] as String,
    dt: json['dt'] as String,
    serviceId: json['serviceproviderid'] as String ?? '',
    userId: json['userid'] as String ?? '',
    data: json['adata'] == null
        ? null
        : JobData.fromJson(json['adata'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$CompleteJobToJson(_$CompleteJob instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('docid', instance.docId);
  writeNotNull('dt', instance.dt);
  writeNotNull('serviceproviderid', instance.serviceId);
  writeNotNull('userid', instance.userId);
  writeNotNull('adata', instance.data?.toJson());
  return val;
}

_$CompletePet _$_$CompletePetFromJson(Map<String, dynamic> json) {
  return _$CompletePet(
    docId: json['docid'] as String,
    dt: json['dt'] as String,
    serviceId: json['serviceproviderid'] as String ?? '',
    userId: json['userid'] as String ?? '',
    data: json['adata'] == null
        ? null
        : PetData.fromJson(json['adata'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$CompletePetToJson(_$CompletePet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('docid', instance.docId);
  writeNotNull('dt', instance.dt);
  writeNotNull('serviceproviderid', instance.serviceId);
  writeNotNull('userid', instance.userId);
  writeNotNull('adata', instance.data?.toJson());
  return val;
}

_$CompleteVehicle _$_$CompleteVehicleFromJson(Map<String, dynamic> json) {
  return _$CompleteVehicle(
    docId: json['docid'] as String,
    dt: json['dt'] as String,
    serviceId: json['serviceproviderid'] as String ?? '',
    userId: json['userid'] as String ?? '',
    data: json['adata'] == null
        ? null
        : VehicleData.fromJson(json['adata'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$CompleteVehicleToJson(_$CompleteVehicle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('docid', instance.docId);
  writeNotNull('dt', instance.dt);
  writeNotNull('serviceproviderid', instance.serviceId);
  writeNotNull('userid', instance.userId);
  writeNotNull('adata', instance.data?.toJson());
  return val;
}

_$CompleteProduct _$_$CompleteProductFromJson(Map<String, dynamic> json) {
  return _$CompleteProduct(
    docId: json['docid'] as String,
    dt: json['dt'] as String,
    serviceId: json['serviceproviderid'] as String ?? '',
    userId: json['userid'] as String ?? '',
    data: json['adata'] == null
        ? null
        : ProductData.fromJson(json['adata'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$CompleteProductToJson(_$CompleteProduct instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('docid', instance.docId);
  writeNotNull('dt', instance.dt);
  writeNotNull('serviceproviderid', instance.serviceId);
  writeNotNull('userid', instance.userId);
  writeNotNull('adata', instance.data?.toJson());
  return val;
}

_$CompletePetList _$_$CompletePetListFromJson(Map<String, dynamic> json) {
  return _$CompletePetList(
    pets: (json['pets'] as List)
        ?.map((e) =>
            e == null ? null : CompletePet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CompletePetListToJson(_$CompletePetList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pets', instance.pets?.map((e) => e?.toJson())?.toList());
  return val;
}

_$CompleteVehicleList _$_$CompleteVehicleListFromJson(
    Map<String, dynamic> json) {
  return _$CompleteVehicleList(
    vehicles: (json['vehicles'] as List)
        ?.map((e) => e == null
            ? null
            : CompleteVehicle.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CompleteVehicleListToJson(
    _$CompleteVehicleList instance) {
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

_$CompleteRealEstateList _$_$CompleteRealEstateListFromJson(
    Map<String, dynamic> json) {
  return _$CompleteRealEstateList(
    properties: (json['properties'] as List)
        ?.map((e) => e == null
            ? null
            : CompleteRealEstate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CompleteRealEstateListToJson(
    _$CompleteRealEstateList instance) {
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

_$CompleteJobList _$_$CompleteJobListFromJson(Map<String, dynamic> json) {
  return _$CompleteJobList(
    jobs: (json['jobs'] as List)
        ?.map((e) =>
            e == null ? null : CompleteJob.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CompleteJobListToJson(_$CompleteJobList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jobs', instance.jobs?.map((e) => e?.toJson())?.toList());
  return val;
}

_$CompleteProductList _$_$CompleteProductListFromJson(
    Map<String, dynamic> json) {
  return _$CompleteProductList(
    products: (json['products'] as List)
        ?.map((e) => e == null
            ? null
            : CompleteProduct.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CompleteProductListToJson(
    _$CompleteProductList instance) {
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

_$CompleteProductDataEmptyList _$_$CompleteProductDataEmptyListFromJson(
    Map<String, dynamic> json) {
  return _$CompleteProductDataEmptyList();
}

Map<String, dynamic> _$_$CompleteProductDataEmptyListToJson(
        _$CompleteProductDataEmptyList instance) =>
    <String, dynamic>{};

_$_ProductData _$_$_ProductDataFromJson(Map<String, dynamic> json) {
  return _$_ProductData(
    productid: json['productid'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    brand: json['brand'] as String,
    category: json['category'] as String,
    tilephoto: json['tilephoto'] as String,
    imagelist: (json['imagelist'] as List)?.map((e) => e as String)?.toList(),
    price: (json['price'] as num)?.toDouble(),
    discountedprice: (json['discountedprice'] as num)?.toDouble(),
    ptype: json['ptype'] as int,
    dynamicproperties: (json['dynamicproperties'] as List)
        ?.map((e) =>
            e == null ? null : dynaproperty.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    varinattype: json['varinattype'] as String,
    nopackagedata: json['nopackagedata'] == null
        ? null
        : NoPackageData.fromJson(json['nopackagedata'] as Map<String, dynamic>),
    packagedata: (json['packagedata'] as List)
        ?.map((e) =>
            e == null ? null : PackageData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sizeandcolordata: (json['sizeandcolordata'] as List)
        ?.map((e) => e == null
            ? null
            : SizeAndColorData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    custompackagedata: (json['custompackagedata'] as List)
        ?.map((e) => e == null
            ? null
            : CustomPackageData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ProductDataToJson(_$_ProductData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('productid', instance.productid);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('brand', instance.brand);
  writeNotNull('category', instance.category);
  writeNotNull('tilephoto', instance.tilephoto);
  writeNotNull('imagelist', instance.imagelist);
  writeNotNull('price', instance.price);
  writeNotNull('discountedprice', instance.discountedprice);
  writeNotNull('ptype', instance.ptype);
  writeNotNull('dynamicproperties',
      instance.dynamicproperties?.map((e) => e?.toJson())?.toList());
  writeNotNull('varinattype', instance.varinattype);
  writeNotNull('nopackagedata', instance.nopackagedata?.toJson());
  writeNotNull(
      'packagedata', instance.packagedata?.map((e) => e?.toJson())?.toList());
  writeNotNull('sizeandcolordata',
      instance.sizeandcolordata?.map((e) => e?.toJson())?.toList());
  writeNotNull('custompackagedata',
      instance.custompackagedata?.map((e) => e?.toJson())?.toList());
  return val;
}

_$_NoPackageData _$_$_NoPackageDataFromJson(Map<String, dynamic> json) {
  return _$_NoPackageData(
    unit: json['unit'] as String,
    priceperunit: (json['priceperunit'] as num)?.toDouble(),
    inventoryunits: (json['inventoryunits'] as num)?.toDouble(),
    discountedpriceperunit: (json['discountedpriceperunit'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_NoPackageDataToJson(_$_NoPackageData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unit', instance.unit);
  writeNotNull('priceperunit', instance.priceperunit);
  writeNotNull('inventoryunits', instance.inventoryunits);
  writeNotNull('discountedpriceperunit', instance.discountedpriceperunit);
  return val;
}

_$_PackageData _$_$_PackageDataFromJson(Map<String, dynamic> json) {
  return _$_PackageData(
    packageid: json['packageid'] as String,
    barcodeid: json['barcodeid'] as String,
    title: json['title'] as String,
    tileimage: json['tileimage'] as String,
    listimages: (json['listimages'] as List)?.map((e) => e as String)?.toList(),
    unit: json['unit'] as int,
    price: (json['price'] as num)?.toDouble(),
    discountedprice: (json['discountedprice'] as num)?.toDouble(),
    inventoryunits: json['inventoryunits'] as int,
  );
}

Map<String, dynamic> _$_$_PackageDataToJson(_$_PackageData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('packageid', instance.packageid);
  writeNotNull('barcodeid', instance.barcodeid);
  writeNotNull('title', instance.title);
  writeNotNull('tileimage', instance.tileimage);
  writeNotNull('listimages', instance.listimages);
  writeNotNull('unit', instance.unit);
  writeNotNull('price', instance.price);
  writeNotNull('discountedprice', instance.discountedprice);
  writeNotNull('inventoryunits', instance.inventoryunits);
  return val;
}

_$_SizeAndColorData _$_$_SizeAndColorDataFromJson(Map<String, dynamic> json) {
  return _$_SizeAndColorData(
    sizecolorid: json['sizecolorid'] as String,
    barcodeid: json['barcodeid'] as String,
    sizetype: json['sizetype'] as String,
    size: json['size'] as String,
    color: json['color'] as String,
    price: (json['price'] as num)?.toDouble(),
    discountedprice: (json['discountedprice'] as num)?.toDouble(),
    tileimage: json['tileimage'] as String,
    listimages: (json['listimages'] as List)?.map((e) => e as String)?.toList(),
    unit: json['unit'] as int,
    inventoryunits: json['inventoryunits'] as int,
  );
}

Map<String, dynamic> _$_$_SizeAndColorDataToJson(_$_SizeAndColorData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sizecolorid', instance.sizecolorid);
  writeNotNull('barcodeid', instance.barcodeid);
  writeNotNull('sizetype', instance.sizetype);
  writeNotNull('size', instance.size);
  writeNotNull('color', instance.color);
  writeNotNull('price', instance.price);
  writeNotNull('discountedprice', instance.discountedprice);
  writeNotNull('tileimage', instance.tileimage);
  writeNotNull('listimages', instance.listimages);
  writeNotNull('unit', instance.unit);
  writeNotNull('inventoryunits', instance.inventoryunits);
  return val;
}

_$_CustomPackageData _$_$_CustomPackageDataFromJson(Map<String, dynamic> json) {
  return _$_CustomPackageData(
    productid: json['productid'] as String,
    title: json['title'] as String,
    unit: json['unit'] as int,
  );
}

Map<String, dynamic> _$_$_CustomPackageDataToJson(
    _$_CustomPackageData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('productid', instance.productid);
  writeNotNull('title', instance.title);
  writeNotNull('unit', instance.unit);
  return val;
}

_$_dynaproperty _$_$_dynapropertyFromJson(Map<String, dynamic> json) {
  return _$_dynaproperty(
    propertyname: json['propertyname'] as String,
    values: (json['values'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_dynapropertyToJson(_$_dynaproperty instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('propertyname', instance.propertyname);
  writeNotNull('values', instance.values);
  return val;
}

_$_PetData _$_$_PetDataFromJson(Map<String, dynamic> json) {
  return _$_PetData(
    animaltype: json['animaltype'] as String,
    age: json['age'] as int,
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
    petname: json['petname'] as String,
    gender: json['gender'] as String,
    tileimage: json['tileimage'] as String,
    imagelist: (json['imagelist'] as List)?.map((e) => e as String)?.toList(),
    title: json['title'] as String,
    description: json['description'] as String,
    listingownertype: json['listingownertype'] as String,
    contactdetails: json['contactdetails'] == null
        ? null
        : ContactDetails.fromJson(
            json['contactdetails'] as Map<String, dynamic>),
    breed: json['breed'] as String,
    vaccinated: json['vaccinated'] as bool,
    ismilking: json['ismilking'] as bool,
    milkqty: json['milkqty'] as int,
    price: json['price'] as int,
  );
}

Map<String, dynamic> _$_$_PetDataToJson(_$_PetData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('animaltype', instance.animaltype);
  writeNotNull('age', instance.age);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('petname', instance.petname);
  writeNotNull('gender', instance.gender);
  writeNotNull('tileimage', instance.tileimage);
  writeNotNull('imagelist', instance.imagelist);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('listingownertype', instance.listingownertype);
  writeNotNull('contactdetails', instance.contactdetails?.toJson());
  writeNotNull('breed', instance.breed);
  writeNotNull('vaccinated', instance.vaccinated);
  writeNotNull('ismilking', instance.ismilking);
  writeNotNull('milkqty', instance.milkqty);
  writeNotNull('price', instance.price);
  return val;
}

_$_JobData _$_$_JobDataFromJson(Map<String, dynamic> json) {
  return _$_JobData(
    arefreshersallowed: json['arefreshersallowed'] as bool,
    companylogo: json['companylogo'] as String,
    companyname: json['companyname'] as String,
    contactdetails: json['contactdetails'] == null
        ? null
        : ContactDetails.fromJson(
            json['contactdetails'] as Map<String, dynamic>),
    description: json['description'] as String,
    educationqualification: json['educationqualification'] as String ?? 'N/A',
    isparttime: json['isparttime'] as bool,
    listingownertype: json['listingownertype'] as String ?? 'N/A',
    maxsalaryrange: json['maxsalaryrange'] as int,
    minsalaryrange: json['minsalaryrange'] as int,
    minyearexperience: json['minyearexperience'] as int,
    title: json['title'] as String,
    worktype: json['worktype'] as String ?? 'N/A',
  );
}

Map<String, dynamic> _$_$_JobDataToJson(_$_JobData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('arefreshersallowed', instance.arefreshersallowed);
  writeNotNull('companylogo', instance.companylogo);
  writeNotNull('companyname', instance.companyname);
  writeNotNull('contactdetails', instance.contactdetails?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('educationqualification', instance.educationqualification);
  writeNotNull('isparttime', instance.isparttime);
  writeNotNull('listingownertype', instance.listingownertype);
  writeNotNull('maxsalaryrange', instance.maxsalaryrange);
  writeNotNull('minsalaryrange', instance.minsalaryrange);
  writeNotNull('minyearexperience', instance.minyearexperience);
  writeNotNull('title', instance.title);
  writeNotNull('worktype', instance.worktype);
  return val;
}

_$_RealEstateData _$_$_RealEstateDataFromJson(Map<String, dynamic> json) {
  return _$_RealEstateData(
    servicetype: json['servicetype'] as String,
    usagetype: json['usagetype'] as String,
    propertytype: json['propertytype'] as String,
    tileimage: json['tileimage'] as String,
    imagelist:
        (json['imagelist'] as List)?.map((e) => e as String)?.toList() ?? [],
    constructionstatus: json['constructionstatus'] as String,
    saletype: json['saletype'] as String,
    discountstartdate:
        JsonHelper.fromJsonTimeStamp(json['discountstartdate'] as Timestamp),
    discountenddate:
        JsonHelper.fromJsonTimeStamp(json['discountenddate'] as Timestamp),
    occupancytype: json['occupancytype'] as String ?? '',
    tenantgenderfamilypreference: (json['tenantgenderfamilypreference'] as List)
            ?.map((e) => e as String)
            ?.toList() ??
        [],
    ownershiptype: json['ownershiptype'] as String,
    sqfeetarea: json['sqfeetarea'] as int,
    numrooms: json['numrooms'] as int,
    numbath: json['numbath'] as int,
    furnishedstatus: json['furnishedstatus'] as String ?? 'N/A',
    haspowerbackup: json['haspowerbackup'] as bool ?? false,
    hasclubhouse: json['hasclubhouse'] as bool,
    hassecurity: json['hassecurity'] as bool,
    has24hrwater: json['has24hrwater'] as bool,
    hasgaspipeline: json['hasgaspipeline'] as bool ?? false,
    hasparking: json['hasparking'] as bool,
    hasgreenarea: json['hasgreenarea'] as bool,
    hasinternet: json['hasinternet'] as bool ?? false,
    hasairconditioner: json['hasairconditioner'] as bool,
    hascooler: json['hascooler'] as bool,
    hasfridge: json['hasfridge'] as bool,
    hastv: json['hastv'] as bool,
    haslift: json['haslift'] as bool,
    creationdate:
        JsonHelper.fromJsonTimeStamp(json['creationdate'] as Timestamp),
    title: json['title'] as String,
    description: json['description'] as String,
    listingownertype: json['listingownertype'] as String,
    price: json['price'] as int,
    contactdetails: json['contactdetails'] == null
        ? null
        : ContactDetails.fromJson(
            json['contactdetails'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_RealEstateDataToJson(_$_RealEstateData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('servicetype', instance.servicetype);
  writeNotNull('usagetype', instance.usagetype);
  writeNotNull('propertytype', instance.propertytype);
  writeNotNull('tileimage', instance.tileimage);
  writeNotNull('imagelist', instance.imagelist);
  writeNotNull('constructionstatus', instance.constructionstatus);
  writeNotNull('saletype', instance.saletype);
  writeNotNull('discountstartdate',
      JsonHelper.toJsonTimeStamp(instance.discountstartdate));
  writeNotNull(
      'discountenddate', JsonHelper.toJsonTimeStamp(instance.discountenddate));
  writeNotNull('occupancytype', instance.occupancytype);
  writeNotNull(
      'tenantgenderfamilypreference', instance.tenantgenderfamilypreference);
  writeNotNull('ownershiptype', instance.ownershiptype);
  writeNotNull('sqfeetarea', instance.sqfeetarea);
  writeNotNull('numrooms', instance.numrooms);
  writeNotNull('numbath', instance.numbath);
  writeNotNull('furnishedstatus', instance.furnishedstatus);
  writeNotNull('haspowerbackup', instance.haspowerbackup);
  writeNotNull('hasclubhouse', instance.hasclubhouse);
  writeNotNull('hassecurity', instance.hassecurity);
  writeNotNull('has24hrwater', instance.has24hrwater);
  writeNotNull('hasgaspipeline', instance.hasgaspipeline);
  writeNotNull('hasparking', instance.hasparking);
  writeNotNull('hasgreenarea', instance.hasgreenarea);
  writeNotNull('hasinternet', instance.hasinternet);
  writeNotNull('hasairconditioner', instance.hasairconditioner);
  writeNotNull('hascooler', instance.hascooler);
  writeNotNull('hasfridge', instance.hasfridge);
  writeNotNull('hastv', instance.hastv);
  writeNotNull('haslift', instance.haslift);
  writeNotNull(
      'creationdate', JsonHelper.toJsonTimeStamp(instance.creationdate));
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('listingownertype', instance.listingownertype);
  writeNotNull('price', instance.price);
  writeNotNull('contactdetails', instance.contactdetails?.toJson());
  return val;
}

_$_VehicleData _$_$_VehicleDataFromJson(Map<String, dynamic> json) {
  return _$_VehicleData(
    servicetype: json['servicetype'] as String,
    vehicletype: json['vehicletype'] as String,
    propertytype: json['propertytype'] as String,
    tileimage: json['tileimage'] as String ?? '',
    imagelist: (json['imagelist'] as List)?.map((e) => e as String)?.toList(),
    title: json['title'] as String,
    description: json['description'] as String,
    listingownertype: json['listingownertype'] as String,
    contactdetails: json['contactdetails'] == null
        ? null
        : ContactDetails.fromJson(
            json['contactdetails'] as Map<String, dynamic>),
    make: json['make'] as String,
    model: json['model'] as String,
    yearbuild: json['yearbuild'] as int,
    milage: json['milage'] as int,
    exteriorcolor: json['exteriorcolor'] as String,
    interiorcolor: json['interiorcolor'] as String ?? '',
    cylinder: json['cylinder'] as int ?? 0,
    fueltype: json['fueltype'] as String,
    bodytype: json['bodytype'] as String,
    drivetype: json['drivetype'] as String,
    transmission: json['transmission'] as String,
    ownershiptransfer: json['ownershiptransfer'] as String,
    price: json['price'] as int,
  );
}

Map<String, dynamic> _$_$_VehicleDataToJson(_$_VehicleData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('servicetype', instance.servicetype);
  writeNotNull('vehicletype', instance.vehicletype);
  writeNotNull('propertytype', instance.propertytype);
  writeNotNull('tileimage', instance.tileimage);
  writeNotNull('imagelist', instance.imagelist);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('listingownertype', instance.listingownertype);
  writeNotNull('contactdetails', instance.contactdetails?.toJson());
  writeNotNull('make', instance.make);
  writeNotNull('model', instance.model);
  writeNotNull('yearbuild', instance.yearbuild);
  writeNotNull('milage', instance.milage);
  writeNotNull('exteriorcolor', instance.exteriorcolor);
  writeNotNull('interiorcolor', instance.interiorcolor);
  writeNotNull('cylinder', instance.cylinder);
  writeNotNull('fueltype', instance.fueltype);
  writeNotNull('bodytype', instance.bodytype);
  writeNotNull('drivetype', instance.drivetype);
  writeNotNull('transmission', instance.transmission);
  writeNotNull('ownershiptransfer', instance.ownershiptransfer);
  writeNotNull('price', instance.price);
  return val;
}
