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
        _$CompleteRealEstate instance) =>
    <String, dynamic>{
      'docid': instance.docId,
      'dt': instance.dt,
      'serviceproviderid': instance.serviceId,
      'userid': instance.userId,
      'adata': instance.data?.toJson(),
    };

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

Map<String, dynamic> _$_$CompleteJobToJson(_$CompleteJob instance) =>
    <String, dynamic>{
      'docid': instance.docId,
      'dt': instance.dt,
      'serviceproviderid': instance.serviceId,
      'userid': instance.userId,
      'adata': instance.data?.toJson(),
    };

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

Map<String, dynamic> _$_$CompletePetToJson(_$CompletePet instance) =>
    <String, dynamic>{
      'docid': instance.docId,
      'dt': instance.dt,
      'serviceproviderid': instance.serviceId,
      'userid': instance.userId,
      'adata': instance.data?.toJson(),
    };

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

Map<String, dynamic> _$_$CompleteVehicleToJson(_$CompleteVehicle instance) =>
    <String, dynamic>{
      'docid': instance.docId,
      'dt': instance.dt,
      'serviceproviderid': instance.serviceId,
      'userid': instance.userId,
      'adata': instance.data?.toJson(),
    };

_$CompleteProduct _$_$CompleteProductFromJson(Map<String, dynamic> json) {
  return _$CompleteProduct(
    docId: json['docid'] as String ?? '',
    dt: json['dt'] as String,
    serviceId: json['serviceproviderid'] as String ?? '',
    userId: json['userid'] as String ?? '',
    data: json['adata'] == null
        ? null
        : ProductData.fromJson(json['adata'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$CompleteProductToJson(_$CompleteProduct instance) =>
    <String, dynamic>{
      'docid': instance.docId,
      'dt': instance.dt,
      'serviceproviderid': instance.serviceId,
      'userid': instance.userId,
      'adata': instance.data?.toJson(),
    };

_$CompletePetList _$_$CompletePetListFromJson(Map<String, dynamic> json) {
  return _$CompletePetList(
    pets: (json['pets'] as List)
        ?.map((e) =>
            e == null ? null : CompletePet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CompletePetListToJson(_$CompletePetList instance) =>
    <String, dynamic>{
      'pets': instance.pets?.map((e) => e?.toJson())?.toList(),
    };

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
        _$CompleteVehicleList instance) =>
    <String, dynamic>{
      'vehicles': instance.vehicles?.map((e) => e?.toJson())?.toList(),
    };

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
        _$CompleteRealEstateList instance) =>
    <String, dynamic>{
      'properties': instance.properties?.map((e) => e?.toJson())?.toList(),
    };

_$CompleteJobList _$_$CompleteJobListFromJson(Map<String, dynamic> json) {
  return _$CompleteJobList(
    jobs: (json['jobs'] as List)
        ?.map((e) =>
            e == null ? null : CompleteJob.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CompleteJobListToJson(_$CompleteJobList instance) =>
    <String, dynamic>{
      'jobs': instance.jobs?.map((e) => e?.toJson())?.toList(),
    };

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
        _$CompleteProductList instance) =>
    <String, dynamic>{
      'products': instance.products?.map((e) => e?.toJson())?.toList(),
    };

_$CompleteProductDataEmptyList _$_$CompleteProductDataEmptyListFromJson(
    Map<String, dynamic> json) {
  return _$CompleteProductDataEmptyList();
}

Map<String, dynamic> _$_$CompleteProductDataEmptyListToJson(
        _$CompleteProductDataEmptyList instance) =>
    <String, dynamic>{};

_$_ProductData _$_$_ProductDataFromJson(Map<String, dynamic> json) {
  return _$_ProductData(
    productid: json['productid'] as String ?? '',
    title: json['title'] as String,
    description: json['description'] as String,
    brand: json['brand'] as String,
    category: json['category'] as String,
    tilePhoto: json['tilephoto'] as String ?? '',
    imagelist: (json['imagelist'] as List)?.map((e) => e as String)?.toList(),
    price: (json['price'] as num)?.toDouble(),
    discountedprice: (json['discountedprice'] as num)?.toDouble() ?? 0,
    ptype: json['ptype'] as int ?? 0,
    dynamicproperties: (json['dynamicproperties'] as List)
            ?.map((e) => e == null
                ? null
                : DynamicProperty.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    varinattype: json['varinattype'] as String,
    nopackagedata: json['nopackagedata'] == null
        ? null
        : NoPackageData.fromJson(json['nopackagedata'] as Map<String, dynamic>),
    packagedata: (json['packagedata'] as List)
            ?.map((e) => e == null
                ? null
                : PackageData.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    sizeandcolordata: (json['sizeandcolordata'] as List)
            ?.map((e) => e == null
                ? null
                : SizeAndColorData.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    custompackagedata: (json['custompackagedata'] as List)
            ?.map((e) => e == null
                ? null
                : CustomPackageData.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_ProductDataToJson(_$_ProductData instance) =>
    <String, dynamic>{
      'productid': instance.productid,
      'title': instance.title,
      'description': instance.description,
      'brand': instance.brand,
      'category': instance.category,
      'tilephoto': instance.tilePhoto,
      'imagelist': instance.imagelist,
      'price': instance.price,
      'discountedprice': instance.discountedprice,
      'ptype': instance.ptype,
      'dynamicproperties':
          instance.dynamicproperties?.map((e) => e?.toJson())?.toList(),
      'varinattype': instance.varinattype,
      'nopackagedata': instance.nopackagedata?.toJson(),
      'packagedata': instance.packagedata?.map((e) => e?.toJson())?.toList(),
      'sizeandcolordata':
          instance.sizeandcolordata?.map((e) => e?.toJson())?.toList(),
      'custompackagedata':
          instance.custompackagedata?.map((e) => e?.toJson())?.toList(),
    };

_$_NoPackageData _$_$_NoPackageDataFromJson(Map<String, dynamic> json) {
  return _$_NoPackageData(
    unit: json['unit'] as String ?? '',
    priceperunit: (json['priceperunit'] as num)?.toDouble(),
    inventoryunits: (json['inventoryunits'] as num)?.toDouble(),
    discountedpriceperunit: (json['discountedpriceperunit'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_NoPackageDataToJson(_$_NoPackageData instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'priceperunit': instance.priceperunit,
      'inventoryunits': instance.inventoryunits,
      'discountedpriceperunit': instance.discountedpriceperunit,
    };

_$_PackageData _$_$_PackageDataFromJson(Map<String, dynamic> json) {
  return _$_PackageData(
    packageid: json['packageid'] as String,
    barcodeid: json['barcodeid'] as String,
    title: json['title'] as String,
    tileimage: json['tileimage'] as String,
    listimages: (json['listimages'] as List)?.map((e) => e as String)?.toList(),
    unit: json['unit'] as int ?? '',
    price: (json['price'] as num)?.toDouble(),
    discountedprice: (json['discountedprice'] as num)?.toDouble() ?? 0,
    inventoryunits: json['inventoryunits'] as int,
  );
}

Map<String, dynamic> _$_$_PackageDataToJson(_$_PackageData instance) =>
    <String, dynamic>{
      'packageid': instance.packageid,
      'barcodeid': instance.barcodeid,
      'title': instance.title,
      'tileimage': instance.tileimage,
      'listimages': instance.listimages,
      'unit': instance.unit,
      'price': instance.price,
      'discountedprice': instance.discountedprice,
      'inventoryunits': instance.inventoryunits,
    };

_$_SizeAndColorData _$_$_SizeAndColorDataFromJson(Map<String, dynamic> json) {
  return _$_SizeAndColorData(
    sizecolorid: json['sizecolorid'] as String,
    barcodeid: json['barcodeid'] as String,
    sizetype: json['sizetype'] as String ?? '',
    size: json['size'] as String,
    color: json['color'] as String,
    price: (json['price'] as num)?.toDouble(),
    discountedprice: (json['discountedprice'] as num)?.toDouble() ?? 0,
    tileimage: json['tileimage'] as String,
    listimages: (json['listimages'] as List)?.map((e) => e as String)?.toList(),
    unit: json['unit'] as int ?? '',
    inventoryunits: json['inventoryunits'] as int,
  );
}

Map<String, dynamic> _$_$_SizeAndColorDataToJson(
        _$_SizeAndColorData instance) =>
    <String, dynamic>{
      'sizecolorid': instance.sizecolorid,
      'barcodeid': instance.barcodeid,
      'sizetype': instance.sizetype,
      'size': instance.size,
      'color': instance.color,
      'price': instance.price,
      'discountedprice': instance.discountedprice,
      'tileimage': instance.tileimage,
      'listimages': instance.listimages,
      'unit': instance.unit,
      'inventoryunits': instance.inventoryunits,
    };

_$_CustomPackageData _$_$_CustomPackageDataFromJson(Map<String, dynamic> json) {
  return _$_CustomPackageData(
    productid: json['productid'] as String ?? '',
    title: json['title'] as String,
    unit: json['unit'] as int ?? '',
  );
}

Map<String, dynamic> _$_$_CustomPackageDataToJson(
        _$_CustomPackageData instance) =>
    <String, dynamic>{
      'productid': instance.productid,
      'title': instance.title,
      'unit': instance.unit,
    };

_$_DynamicProperty _$_$_DynamicPropertyFromJson(Map<String, dynamic> json) {
  return _$_DynamicProperty(
    propertyname: json['propertyname'] as String,
    values: (json['values'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_DynamicPropertyToJson(_$_DynamicProperty instance) =>
    <String, dynamic>{
      'propertyname': instance.propertyname,
      'values': instance.values,
    };

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

Map<String, dynamic> _$_$_PetDataToJson(_$_PetData instance) =>
    <String, dynamic>{
      'animaltype': instance.animaltype,
      'age': instance.age,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'petname': instance.petname,
      'gender': instance.gender,
      'tileimage': instance.tileimage,
      'imagelist': instance.imagelist,
      'title': instance.title,
      'description': instance.description,
      'listingownertype': instance.listingownertype,
      'contactdetails': instance.contactdetails?.toJson(),
      'breed': instance.breed,
      'vaccinated': instance.vaccinated,
      'ismilking': instance.ismilking,
      'milkqty': instance.milkqty,
      'price': instance.price,
    };

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

Map<String, dynamic> _$_$_JobDataToJson(_$_JobData instance) =>
    <String, dynamic>{
      'arefreshersallowed': instance.arefreshersallowed,
      'companylogo': instance.companylogo,
      'companyname': instance.companyname,
      'contactdetails': instance.contactdetails?.toJson(),
      'description': instance.description,
      'educationqualification': instance.educationqualification,
      'isparttime': instance.isparttime,
      'listingownertype': instance.listingownertype,
      'maxsalaryrange': instance.maxsalaryrange,
      'minsalaryrange': instance.minsalaryrange,
      'minyearexperience': instance.minyearexperience,
      'title': instance.title,
      'worktype': instance.worktype,
    };

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

Map<String, dynamic> _$_$_RealEstateDataToJson(_$_RealEstateData instance) =>
    <String, dynamic>{
      'servicetype': instance.servicetype,
      'usagetype': instance.usagetype,
      'propertytype': instance.propertytype,
      'tileimage': instance.tileimage,
      'imagelist': instance.imagelist,
      'constructionstatus': instance.constructionstatus,
      'saletype': instance.saletype,
      'discountstartdate':
          JsonHelper.toJsonTimeStamp(instance.discountstartdate),
      'discountenddate': JsonHelper.toJsonTimeStamp(instance.discountenddate),
      'occupancytype': instance.occupancytype,
      'tenantgenderfamilypreference': instance.tenantgenderfamilypreference,
      'ownershiptype': instance.ownershiptype,
      'sqfeetarea': instance.sqfeetarea,
      'numrooms': instance.numrooms,
      'numbath': instance.numbath,
      'furnishedstatus': instance.furnishedstatus,
      'haspowerbackup': instance.haspowerbackup,
      'hasclubhouse': instance.hasclubhouse,
      'hassecurity': instance.hassecurity,
      'has24hrwater': instance.has24hrwater,
      'hasgaspipeline': instance.hasgaspipeline,
      'hasparking': instance.hasparking,
      'hasgreenarea': instance.hasgreenarea,
      'hasinternet': instance.hasinternet,
      'hasairconditioner': instance.hasairconditioner,
      'hascooler': instance.hascooler,
      'hasfridge': instance.hasfridge,
      'hastv': instance.hastv,
      'haslift': instance.haslift,
      'creationdate': JsonHelper.toJsonTimeStamp(instance.creationdate),
      'title': instance.title,
      'description': instance.description,
      'listingownertype': instance.listingownertype,
      'price': instance.price,
      'contactdetails': instance.contactdetails?.toJson(),
    };

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

Map<String, dynamic> _$_$_VehicleDataToJson(_$_VehicleData instance) =>
    <String, dynamic>{
      'servicetype': instance.servicetype,
      'vehicletype': instance.vehicletype,
      'propertytype': instance.propertytype,
      'tileimage': instance.tileimage,
      'imagelist': instance.imagelist,
      'title': instance.title,
      'description': instance.description,
      'listingownertype': instance.listingownertype,
      'contactdetails': instance.contactdetails?.toJson(),
      'make': instance.make,
      'model': instance.model,
      'yearbuild': instance.yearbuild,
      'milage': instance.milage,
      'exteriorcolor': instance.exteriorcolor,
      'interiorcolor': instance.interiorcolor,
      'cylinder': instance.cylinder,
      'fueltype': instance.fueltype,
      'bodytype': instance.bodytype,
      'drivetype': instance.drivetype,
      'transmission': instance.transmission,
      'ownershiptransfer': instance.ownershiptransfer,
      'price': instance.price,
    };
