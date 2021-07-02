// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ExplorePageRelatedModels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DimData _$_$_DimDataFromJson(Map<String, dynamic> json) {
  return _$_DimData(
    dimname: json['dimname'] as String,
    fieldvalues: (json['fieldvalues'] as List)
        ?.map((e) =>
            e == null ? null : DimItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DimDataToJson(_$_DimData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dimname', instance.dimname);
  writeNotNull(
      'fieldvalues', instance.fieldvalues?.map((e) => e?.toJson())?.toList());
  return val;
}

_$_DimItem _$_$_DimItemFromJson(Map<String, dynamic> json) {
  return _$_DimItem(
    fieldvalue: json['fieldvalue'] as String,
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$_$_DimItemToJson(_$_DimItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fieldvalue', instance.fieldvalue);
  writeNotNull('count', instance.count);
  return val;
}

_$_AreaInfo _$_$_AreaInfoFromJson(Map<String, dynamic> json) {
  return _$_AreaInfo(
    state: json['state'] as String,
    district: json['district'] as String,
    areaname: json['areaname'] as String,
    zipcode: json['zipcode'] as int,
  );
}

Map<String, dynamic> _$_$_AreaInfoToJson(_$_AreaInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('district', instance.district);
  writeNotNull('areaname', instance.areaname);
  writeNotNull('zipcode', instance.zipcode);
  return val;
}

_$_Categoryinfo _$_$_CategoryinfoFromJson(Map<String, dynamic> json) {
  return _$_Categoryinfo(
    category: json['category'] as String,
    pricerange: (json['pricerange'] as List)?.map((e) => e as int)?.toList(),
    priceareadependent: json['priceareadependent'] as bool,
    iconpath: json['iconpath'] as String,
    imagepath: json['imagepath'] as String,
    dynamicpropertiesidentifier: json['dynamicpropertiesidentifier'] as String,
    childcategory: (json['childcategory'] as List)
        ?.map((e) =>
            e == null ? null : Categoryinfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CategoryinfoToJson(_$_Categoryinfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category', instance.category);
  writeNotNull('pricerange', instance.pricerange);
  writeNotNull('priceareadependent', instance.priceareadependent);
  writeNotNull('iconpath', instance.iconpath);
  writeNotNull('imagepath', instance.imagepath);
  writeNotNull(
      'dynamicpropertiesidentifier', instance.dynamicpropertiesidentifier);
  writeNotNull('childcategory',
      instance.childcategory?.map((e) => e?.toJson())?.toList());
  return val;
}

_$_productinorder _$_$_productinorderFromJson(Map<String, dynamic> json) {
  return _$_productinorder(
    id: json['id'] as String,
    productid: json['productid'] as String,
    itemid: json['itemid'] as String,
    tileimage: json['tileimage'] as String,
    title: json['title'] as String,
    unit: json['unit'] as String,
    unitprice: json['unitprice'] as String,
    qty: (json['qty'] as num)?.toDouble(),
    price: (json['price'] as num)?.toDouble(),
    discountedprice: (json['discountedprice'] as num)?.toDouble(),
    taxid: json['taxid'] as String,
    totalprice: (json['totalprice'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_productinorderToJson(_$_productinorder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('productid', instance.productid);
  writeNotNull('itemid', instance.itemid);
  writeNotNull('tileimage', instance.tileimage);
  writeNotNull('title', instance.title);
  writeNotNull('unit', instance.unit);
  writeNotNull('unitprice', instance.unitprice);
  writeNotNull('qty', instance.qty);
  writeNotNull('price', instance.price);
  writeNotNull('discountedprice', instance.discountedprice);
  writeNotNull('taxid', instance.taxid);
  writeNotNull('totalprice', instance.totalprice);
  return val;
}

_$_orderinfomodel _$_$_orderinfomodelFromJson(Map<String, dynamic> json) {
  return _$_orderinfomodel(
    custaddress: json['custaddress'] == null
        ? null
        : Addressmodel.fromJson(json['custaddress'] as Map<String, dynamic>),
    customerid: json['customerid'] as String,
    custuserid: json['custuserid'] as String,
    custname: json['custname'] as String,
    advanceamount: (json['advanceamount'] as num)?.toDouble(),
    productlist: (json['productlist'] as List)
        ?.map((e) => e == null
            ? null
            : productinorder.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totaltax: (json['totaltax'] as num)?.toDouble(),
    totalcalculatedprice: (json['totalcalculatedprice'] as num)?.toDouble(),
    extradiscount: (json['extradiscount'] as num)?.toDouble(),
    askedprice: (json['askedprice'] as num)?.toDouble(),
    orderdate: JsonHelper.fromJsonTimeStamp(json['orderdate'] as Timestamp),
    orderstate: json['orderstate'] as String,
    serviceproviderid: json['serviceproviderid'] as String,
    custphonenum: json['custphonenum'] as String,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_orderinfomodelToJson(_$_orderinfomodel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('custaddress', instance.custaddress?.toJson());
  writeNotNull('customerid', instance.customerid);
  writeNotNull('custuserid', instance.custuserid);
  writeNotNull('custname', instance.custname);
  writeNotNull('advanceamount', instance.advanceamount);
  writeNotNull(
      'productlist', instance.productlist?.map((e) => e?.toJson())?.toList());
  writeNotNull('totaltax', instance.totaltax);
  writeNotNull('totalcalculatedprice', instance.totalcalculatedprice);
  writeNotNull('extradiscount', instance.extradiscount);
  writeNotNull('askedprice', instance.askedprice);
  writeNotNull('orderdate', JsonHelper.toJsonTimeStamp(instance.orderdate));
  writeNotNull('orderstate', instance.orderstate);
  writeNotNull('serviceproviderid', instance.serviceproviderid);
  writeNotNull('custphonenum', instance.custphonenum);
  writeNotNull('id', instance.id);
  return val;
}

_$_ProductSuggestionData _$_$_ProductSuggestionDataFromJson(
    Map<String, dynamic> json) {
  return _$_ProductSuggestionData(
    pid: json['pid'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$_$_ProductSuggestionDataToJson(
    _$_ProductSuggestionData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pid', instance.pid);
  writeNotNull('text', instance.text);
  return val;
}

_$_Sortfielddata _$_$_SortfielddataFromJson(Map<String, dynamic> json) {
  return _$_Sortfielddata(
    fieldname: json['fieldname'] as String,
    desc: json['desc'] as bool,
  );
}

Map<String, dynamic> _$_$_SortfielddataToJson(_$_Sortfielddata instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fieldname', instance.fieldname);
  writeNotNull('desc', instance.desc);
  return val;
}

_$_NumericFilterData _$_$_NumericFilterDataFromJson(Map<String, dynamic> json) {
  return _$_NumericFilterData(
    fieldname: json['fieldname'] as String,
    minval: (json['minval'] as num)?.toDouble(),
    maxval: (json['maxval'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_NumericFilterDataToJson(
    _$_NumericFilterData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fieldname', instance.fieldname);
  writeNotNull('minval', instance.minval);
  writeNotNull('maxval', instance.maxval);
  return val;
}

_$_FacetParaFilter _$_$_FacetParaFilterFromJson(Map<String, dynamic> json) {
  return _$_FacetParaFilter(
    paraname: json['paraname'] as String,
    fieldvalues:
        (json['fieldvalues'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_FacetParaFilterToJson(_$_FacetParaFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('paraname', instance.paraname);
  writeNotNull('fieldvalues', instance.fieldvalues);
  return val;
}

_$_ProductFilterModel _$_$_ProductFilterModelFromJson(
    Map<String, dynamic> json) {
  return _$_ProductFilterModel(
    filtertype: json['filtertype'] as int,
    psc: json['psc'] == null
        ? null
        : ProductSearchInformationConfig.fromJson(
            json['psc'] as Map<String, dynamic>),
    categorytype: json['categorytype'] as String,
    reqfacet: json['reqfacet'] as bool,
    offset: json['offset'] as int,
    termquery: json['termquery'] as String,
    sortf: json['sortf'] == null
        ? null
        : Sortfielddata.fromJson(json['sortf'] as Map<String, dynamic>),
    filters: (json['filters'] as List)
        ?.map((e) => e == null
            ? null
            : NumericFilterData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    facetparalist: (json['facetparalist'] as List)
        ?.map((e) => e == null
            ? null
            : FacetParaFilter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ProductFilterModelToJson(
    _$_ProductFilterModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filtertype', instance.filtertype);
  writeNotNull('psc', instance.psc?.toJson());
  writeNotNull('categorytype', instance.categorytype);
  writeNotNull('reqfacet', instance.reqfacet);
  writeNotNull('offset', instance.offset);
  writeNotNull('termquery', instance.termquery);
  writeNotNull('sortf', instance.sortf?.toJson());
  writeNotNull('filters', instance.filters?.map((e) => e?.toJson())?.toList());
  writeNotNull('facetparalist',
      instance.facetparalist?.map((e) => e?.toJson())?.toList());
  return val;
}

_$_Customerinfo _$_$_CustomerinfoFromJson(Map<String, dynamic> json) {
  return _$_Customerinfo(
    infotype: json['infotype'] as int,
    customerid: json['customerid'] as String,
    customeruserid: json['customeruserid'] as String,
    name: json['name'] as String,
    maddr: json['maddr'] == null
        ? null
        : Addressmodel.fromJson(json['maddr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CustomerinfoToJson(_$_Customerinfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('infotype', instance.infotype);
  writeNotNull('customerid', instance.customerid);
  writeNotNull('customeruserid', instance.customeruserid);
  writeNotNull('name', instance.name);
  writeNotNull('maddr', instance.maddr?.toJson());
  return val;
}

_$_Addressmodel _$_$_AddressmodelFromJson(Map<String, dynamic> json) {
  return _$_Addressmodel(
    id: json['id'] as String,
    country: json['country'] as String,
    state: json['state'] as String,
    district: json['district'] as String,
    village: json['village'] as String,
    areaname: json['areaname'] as String,
    addressinfo: json['addressinfo'] as String,
    lati: (json['lati'] as num)?.toDouble(),
    longi: (json['longi'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_AddressmodelToJson(_$_Addressmodel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('country', instance.country);
  writeNotNull('state', instance.state);
  writeNotNull('district', instance.district);
  writeNotNull('village', instance.village);
  writeNotNull('areaname', instance.areaname);
  writeNotNull('addressinfo', instance.addressinfo);
  writeNotNull('lati', instance.lati);
  writeNotNull('longi', instance.longi);
  return val;
}

_$_ProductFilterResultModel _$_$_ProductFilterResultModelFromJson(
    Map<String, dynamic> json) {
  return _$_ProductFilterResultModel(
    totalcount: json['totalcount'] as int,
    serviceproviderid: json['serviceproviderid'] as String,
    docwithdata1: json['docwithdata1'] as List,
    docwithdata2: json['docwithdata2'] as List,
    docwithdata3: json['docwithdata3'] as List,
    docwithdata4: json['docwithdata4'] as List,
    docwithdata5: json['docwithdata5'] as List,
    pidlist: (json['pidlist'] as List)?.map((e) => e as String)?.toList(),
    diminfo: (json['diminfo'] as List)
        ?.map((e) =>
            e == null ? null : DimData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    catinfo: (json['catinfo'] as List)
        ?.map((e) =>
            e == null ? null : Categoryinfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    topleveltiletype: json['topleveltiletype'] as String,
    hasmoreresults: json['hasmoreresults'] as bool,
  );
}

Map<String, dynamic> _$_$_ProductFilterResultModelToJson(
    _$_ProductFilterResultModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('totalcount', instance.totalcount);
  writeNotNull('serviceproviderid', instance.serviceproviderid);
  writeNotNull('docwithdata1', instance.docwithdata1);
  writeNotNull('docwithdata2', instance.docwithdata2);
  writeNotNull('docwithdata3', instance.docwithdata3);
  writeNotNull('docwithdata4', instance.docwithdata4);
  writeNotNull('docwithdata5', instance.docwithdata5);
  writeNotNull('pidlist', instance.pidlist);
  writeNotNull('diminfo', instance.diminfo?.map((e) => e?.toJson())?.toList());
  writeNotNull('catinfo', instance.catinfo?.map((e) => e?.toJson())?.toList());
  writeNotNull('topleveltiletype', instance.topleveltiletype);
  writeNotNull('hasmoreresults', instance.hasmoreresults);
  return val;
}

_$_SpatialData _$_$_SpatialDataFromJson(Map<String, dynamic> json) {
  return _$_SpatialData(
    locationname: (json['locationname'] as List)
        ?.map((e) =>
            e == null ? null : AreaInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    curStatename: json['curstatename'] as String,
    statename: json['statename'] as String,
    lati: (json['lati'] as num)?.toDouble(),
    longi: (json['longi'] as num)?.toDouble(),
    radius: json['radius'] as int,
    type: json['type'] as int,
  );
}

Map<String, dynamic> _$_$_SpatialDataToJson(_$_SpatialData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'locationname', instance.locationname?.map((e) => e?.toJson())?.toList());
  writeNotNull('curstatename', instance.curStatename);
  writeNotNull('statename', instance.statename);
  writeNotNull('lati', instance.lati);
  writeNotNull('longi', instance.longi);
  writeNotNull('radius', instance.radius);
  writeNotNull('type', instance.type);
  return val;
}

_$_ServiceFilterParameter _$_$_ServiceFilterParameterFromJson(
    Map<String, dynamic> json) {
  return _$_ServiceFilterParameter(
    serviceofferedselectedvalues: json['serviceofferedselectedvalues'] == null
        ? null
        : ProductSearchInformationConfig.fromJson(
            json['serviceofferedselectedvalues'] as Map<String, dynamic>),
    textsearch: json['textsearch'] as String,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$_$_ServiceFilterParameterToJson(
    _$_ServiceFilterParameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('serviceofferedselectedvalues',
      instance.serviceofferedselectedvalues?.toJson());
  writeNotNull('textsearch', instance.textsearch);
  writeNotNull('offset', instance.offset);
  return val;
}

_$_ExplorePageAd _$_$_ExplorePageAdFromJson(Map<String, dynamic> json) {
  return _$_ExplorePageAd(
    imagepath: json['imagepath'] as String,
    message: json['message'] as String,
    lm: json['lm'] == null
        ? null
        : LimitedServiceModel.fromJson(json['lm'] as Map<String, dynamic>),
    lpd: json['lpd'],
  );
}

Map<String, dynamic> _$_$_ExplorePageAdToJson(_$_ExplorePageAd instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imagepath', instance.imagepath);
  writeNotNull('message', instance.message);
  writeNotNull('lm', instance.lm?.toJson());
  writeNotNull('lpd', instance.lpd);
  return val;
}

_$_ServiceFilterResultData _$_$_ServiceFilterResultDataFromJson(
    Map<String, dynamic> json) {
  return _$_ServiceFilterResultData(
    smlist: (json['smlist'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedServiceModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    smidlist: (json['smidlist'] as List)?.map((e) => e as String)?.toList(),
    totcount: json['totcount'] as int,
    curads: (json['curads'] as List)
        ?.map((e) => e == null
            ? null
            : ExplorePageAd.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ServiceFilterResultDataToJson(
    _$_ServiceFilterResultData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('smlist', instance.smlist?.map((e) => e?.toJson())?.toList());
  writeNotNull('smidlist', instance.smidlist);
  writeNotNull('totcount', instance.totcount);
  writeNotNull('curads', instance.curads?.map((e) => e?.toJson())?.toList());
  return val;
}

_$_LimitedServiceModel _$_$_LimitedServiceModelFromJson(
    Map<String, dynamic> json) {
  return _$_LimitedServiceModel(
    phone: (json['phone'] as List)?.map((e) => e as String)?.toList(),
    servicetype:
        (json['servicetype'] as List)?.map((e) => e as String)?.toList(),
    address: json['address'] as String,
    email: json['email'] as String,
    photo1: json['photo1'] as String,
    serviceName: json['servicename'] as String,
    timeinfo: json['timeinfo'] as String,
    serviceID: json['serviceid'] as String,
    ratingcount: json['ratingcount'] as int,
    totalratings: json['totalratings'] as int,
    hasapt: json['hasapt'] as bool,
    hasadhoctrips: json['hasadhoctrips'] as bool,
    hasecom: json['hasecom'] as bool,
    hasproductcatalog: json['hasproductcatalog'] as bool,
    lati: (json['lati'] as num)?.toDouble(),
    longi: (json['longi'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_LimitedServiceModelToJson(
    _$_LimitedServiceModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone', instance.phone);
  writeNotNull('servicetype', instance.servicetype);
  writeNotNull('address', instance.address);
  writeNotNull('email', instance.email);
  writeNotNull('photo1', instance.photo1);
  writeNotNull('servicename', instance.serviceName);
  writeNotNull('timeinfo', instance.timeinfo);
  writeNotNull('serviceid', instance.serviceID);
  writeNotNull('ratingcount', instance.ratingcount);
  writeNotNull('totalratings', instance.totalratings);
  writeNotNull('hasapt', instance.hasapt);
  writeNotNull('hasadhoctrips', instance.hasadhoctrips);
  writeNotNull('hasecom', instance.hasecom);
  writeNotNull('hasproductcatalog', instance.hasproductcatalog);
  writeNotNull('lati', instance.lati);
  writeNotNull('longi', instance.longi);
  return val;
}

_$_ProductSearchInformationConfig _$_$_ProductSearchInformationConfigFromJson(
    Map<String, dynamic> json) {
  return _$_ProductSearchInformationConfig(
    lsm: json['lsm'] == null
        ? null
        : LimitedServiceModel.fromJson(json['lsm'] as Map<String, dynamic>),
    servicetype: json['servicetype'] as String,
    grouptype: json['grouptype'] as String,
    isshop: json['isshop'] as bool,
    sp: json['sp'] == null
        ? null
        : SpatialData.fromJson(json['sp'] as Map<String, dynamic>),
    cust: json['cust'] == null
        ? null
        : Customerinfo.fromJson(json['cust'] as Map<String, dynamic>),
    entrypoint: json['entrypoint'] as int,
    servicesselected:
        (json['servicesselected'] as List)?.map((e) => e as String)?.toList(),
    spoffset: json['spoffset'] as int,
  );
}

Map<String, dynamic> _$_$_ProductSearchInformationConfigToJson(
    _$_ProductSearchInformationConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lsm', instance.lsm?.toJson());
  writeNotNull('servicetype', instance.servicetype);
  writeNotNull('grouptype', instance.grouptype);
  writeNotNull('isshop', instance.isshop);
  writeNotNull('sp', instance.sp?.toJson());
  writeNotNull('cust', instance.cust?.toJson());
  writeNotNull('entrypoint', instance.entrypoint);
  writeNotNull('servicesselected', instance.servicesselected);
  writeNotNull('spoffset', instance.spoffset);
  return val;
}

_$_SPCustomerModel _$_$_SPCustomerModelFromJson(Map<String, dynamic> json) {
  return _$_SPCustomerModel(
    customerId: json['customerid'] as String,
    userId: json['userid'] as String,
    phoneNum: json['phonenum'] as String,
    email: json['email'] as String,
    names: (json['names'] as List)
        ?.map((e) => (e as List)
            ?.map((e) => e == null
                ? null
                : CustomerNameAgeIngo.fromJson(e as Map<String, dynamic>))
            ?.toList())
        ?.toList(),
    addressInfolist: (json['addressinfolist'] as List)
        ?.map((e) =>
            e == null ? null : Addressmodel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_SPCustomerModelToJson(_$_SPCustomerModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customerid', instance.customerId);
  writeNotNull('userid', instance.userId);
  writeNotNull('phonenum', instance.phoneNum);
  writeNotNull('email', instance.email);
  writeNotNull(
      'names',
      instance.names
          ?.map((e) => e?.map((e) => e?.toJson())?.toList())
          ?.toList());
  writeNotNull('addressinfolist',
      instance.addressInfolist?.map((e) => e?.toJson())?.toList());
  return val;
}

_$_CustomerNameAgeIngo _$_$_CustomerNameAgeIngoFromJson(
    Map<String, dynamic> json) {
  return _$_CustomerNameAgeIngo(
    name: json['name'] as String,
    dob: JsonHelper.fromJsonTimeStamp(json['dob'] as Timestamp),
    gender: json['gender'] as String,
  );
}

Map<String, dynamic> _$_$_CustomerNameAgeIngoToJson(
    _$_CustomerNameAgeIngo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('dob', JsonHelper.toJsonTimeStamp(instance.dob));
  writeNotNull('gender', instance.gender);
  return val;
}

_$_ServiceGroup _$_$_ServiceGroupFromJson(Map<String, dynamic> json) {
  return _$_ServiceGroup(
    sectionname: json['sectionname'] as String,
    icon: json['icon'] as String,
    displaylist: json['displaylist'] as String,
    ordernum: json['ordernum'] as int,
    type: json['type'] as String,
    servicetypelist: (json['servicetypelist'] as List)
        ?.map((e) =>
            e == null ? null : ServiceType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ServiceGroupToJson(_$_ServiceGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sectionname', instance.sectionname);
  writeNotNull('icon', instance.icon);
  writeNotNull('displaylist', instance.displaylist);
  writeNotNull('ordernum', instance.ordernum);
  writeNotNull('type', instance.type);
  writeNotNull('servicetypelist',
      instance.servicetypelist?.map((e) => e?.toJson())?.toList());
  return val;
}

_$_ServiceType _$_$_ServiceTypeFromJson(Map<String, dynamic> json) {
  return _$_ServiceType(
    servicetype: json['servicetype'] as String,
    querystr: json['querystr'] as String,
    icon: json['icon'] as String,
    displaylist: json['displaylist'] as String,
    ordernum: json['ordernum'] as int,
    childservicetype: (json['childservicetype'] as List)
        ?.map((e) =>
            e == null ? null : ServiceType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    filtertype: json['filtertype'] as String,
    filterdata: json['filterdata'] == null
        ? null
        : ServiceTypeFilterData.fromJson(
            json['filterdata'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ServiceTypeToJson(_$_ServiceType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('servicetype', instance.servicetype);
  writeNotNull('querystr', instance.querystr);
  writeNotNull('icon', instance.icon);
  writeNotNull('displaylist', instance.displaylist);
  writeNotNull('ordernum', instance.ordernum);
  writeNotNull('childservicetype',
      instance.childservicetype?.map((e) => e?.toJson())?.toList());
  writeNotNull('filtertype', instance.filtertype);
  writeNotNull('filterdata', instance.filterdata?.toJson());
  return val;
}

_$_ServiceTypeFilterData _$_$_ServiceTypeFilterDataFromJson(
    Map<String, dynamic> json) {
  return _$_ServiceTypeFilterData(
    filterheading:
        (json['filterheading'] as List)?.map((e) => e as String)?.toList(),
    depth: json['depth'] as int,
    values: (json['values'] as List)
        ?.map((e) => e == null
            ? null
            : ServiceTypeFilterValues.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ServiceTypeFilterDataToJson(
    _$_ServiceTypeFilterData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filterheading', instance.filterheading);
  writeNotNull('depth', instance.depth);
  writeNotNull('values', instance.values?.map((e) => e?.toJson())?.toList());
  return val;
}

_$_ServiceTypeFilterValues _$_$_ServiceTypeFilterValuesFromJson(
    Map<String, dynamic> json) {
  return _$_ServiceTypeFilterValues(
    value: json['value'] as String,
    childvalues:
        (json['childvalues'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_ServiceTypeFilterValuesToJson(
    _$_ServiceTypeFilterValues instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('childvalues', instance.childvalues);
  return val;
}

_$_ExplorePageParameters _$_$_ExplorePageParametersFromJson(
    Map<String, dynamic> json) {
  return _$_ExplorePageParameters(
    adlist: (json['adlist'] as List)
        ?.map((e) => e == null
            ? null
            : ExplorePageAd.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    favsplist: (json['favsplist'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedServiceModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ExplorePageParametersToJson(
    _$_ExplorePageParameters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('adlist', instance.adlist?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'favsplist', instance.favsplist?.map((e) => e?.toJson())?.toList());
  return val;
}
