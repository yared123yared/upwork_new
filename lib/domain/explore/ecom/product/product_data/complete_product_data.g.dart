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
  return val;
}

_$CompleteVehicle _$_$CompleteVehicleFromJson(Map<String, dynamic> json) {
  return _$CompleteVehicle(
    docId: json['docid'] as String,
    dt: json['dt'] as String,
    serviceId: json['serviceproviderid'] as String ?? '',
    userId: json['userid'] as String ?? '',
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
  return val;
}

_$CompleteProduct _$_$CompleteProductFromJson(Map<String, dynamic> json) {
  return _$CompleteProduct(
    docId: json['docid'] as String,
    dt: json['dt'] as String,
    serviceId: json['serviceproviderid'] as String ?? '',
    userId: json['userid'] as String ?? '',
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

_$LimitedProductList _$_$LimitedProductListFromJson(Map<String, dynamic> json) {
  return _$LimitedProductList(
    products: (json['products'] as List)
        ?.map((e) => e == null
            ? null
            : CompleteProduct.fromJson(e as Map<String, dynamic>))
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

_$CompleteProductDataEmptyList _$_$CompleteProductDataEmptyListFromJson(
    Map<String, dynamic> json) {
  return _$CompleteProductDataEmptyList();
}

Map<String, dynamic> _$_$CompleteProductDataEmptyListToJson(
        _$CompleteProductDataEmptyList instance) =>
    <String, dynamic>{};

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
    educationqualification: json['educationqualification'] as String,
    isparttime: json['isparttime'] as bool,
    listingownertype: json['listingownertype'] as String ?? 'OWNER',
    maxsalaryrange: json['maxsalaryrange'] as int,
    minsalaryrange: json['minsalaryrange'] as int,
    minyearexperience: json['minyearexperience'] as int,
    title: json['title'] as String,
    worktype: json['worktype'] as String ?? '',
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
