// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ExplorePageRelatedModels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductActionModel _$_$_ProductActionModelFromJson(
    Map<String, dynamic> json) {
  return _$_ProductActionModel(
    qtype: json['qtype'] as String,
    action: json['action'] as String,
    origin: json['origin'] as String,
    serviceid: json['serviceid'] as String,
    userid: json['userid'] as String,
    producttype: json['producttype'] as String,
    classifiedtype: json['classifiedtype'] as String,
    realestatemodel: json['realestatemodel'],
    petmodel: json['petmodel'],
    productmodel: json['productmodel'],
    vehiclemodel: json['vehiclemodel'],
    jobrequestmodel: json['jobrequestmodel'],
  );
}

Map<String, dynamic> _$_$_ProductActionModelToJson(
        _$_ProductActionModel instance) =>
    <String, dynamic>{
      'qtype': instance.qtype,
      'action': instance.action,
      'origin': instance.origin,
      'serviceid': instance.serviceid,
      'userid': instance.userid,
      'producttype': instance.producttype,
      'classifiedtype': instance.classifiedtype,
      'realestatemodel': instance.realestatemodel,
      'petmodel': instance.petmodel,
      'productmodel': instance.productmodel,
      'vehiclemodel': instance.vehiclemodel,
      'jobrequestmodel': instance.jobrequestmodel,
    };

_$_ProductActionResponse _$_$_ProductActionResponseFromJson(
    Map<String, dynamic> json) {
  return _$_ProductActionResponse(
    errorid: json['errorid'] as int,
    errormsg: json['errormsg'] as String,
    productid: json['productid'] as String,
  );
}

Map<String, dynamic> _$_$_ProductActionResponseToJson(
        _$_ProductActionResponse instance) =>
    <String, dynamic>{
      'errorid': instance.errorid,
      'errormsg': instance.errormsg,
      'productid': instance.productid,
    };

_$_DimData _$_$_DimDataFromJson(Map<String, dynamic> json) {
  return _$_DimData(
    dimname: json['dimname'] as String,
    fieldvalues: (json['fieldvalues'] as List)
        ?.map((e) =>
            e == null ? null : DimItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DimDataToJson(_$_DimData instance) =>
    <String, dynamic>{
      'dimname': instance.dimname,
      'fieldvalues': instance.fieldvalues,
    };

_$_DimItem _$_$_DimItemFromJson(Map<String, dynamic> json) {
  return _$_DimItem(
    fieldvalue: json['fieldvalue'] as String,
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$_$_DimItemToJson(_$_DimItem instance) =>
    <String, dynamic>{
      'fieldvalue': instance.fieldvalue,
      'count': instance.count,
    };

_$_AreaInfo _$_$_AreaInfoFromJson(Map<String, dynamic> json) {
  return _$_AreaInfo(
    state: json['state'] as String,
    district: json['district'] as String,
    areaname: json['areaname'] as String,
    zipcode: json['zipcode'] as int,
  );
}

Map<String, dynamic> _$_$_AreaInfoToJson(_$_AreaInfo instance) =>
    <String, dynamic>{
      'state': instance.state,
      'district': instance.district,
      'areaname': instance.areaname,
      'zipcode': instance.zipcode,
    };

_$_Categoryinfo _$_$_CategoryinfoFromJson(Map<String, dynamic> json) {
  return _$_Categoryinfo(
    category: json['category'] as String,
    count: json['count'] as int,
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

Map<String, dynamic> _$_$_CategoryinfoToJson(_$_Categoryinfo instance) =>
    <String, dynamic>{
      'category': instance.category,
      'count': instance.count,
      'pricerange': instance.pricerange,
      'priceareadependent': instance.priceareadependent,
      'iconpath': instance.iconpath,
      'imagepath': instance.imagepath,
      'dynamicpropertiesidentifier': instance.dynamicpropertiesidentifier,
      'childcategory': instance.childcategory,
    };

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

Map<String, dynamic> _$_$_productinorderToJson(_$_productinorder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productid': instance.productid,
      'itemid': instance.itemid,
      'tileimage': instance.tileimage,
      'title': instance.title,
      'unit': instance.unit,
      'unitprice': instance.unitprice,
      'qty': instance.qty,
      'price': instance.price,
      'discountedprice': instance.discountedprice,
      'taxid': instance.taxid,
      'totalprice': instance.totalprice,
    };

_$_orderinfomodel _$_$_orderinfomodelFromJson(Map<String, dynamic> json) {
  return _$_orderinfomodel(
    custaddress: json['custaddress'] == null
        ? null
        : AddressModel.fromJson(json['custaddress'] as Map<String, dynamic>),
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

Map<String, dynamic> _$_$_orderinfomodelToJson(_$_orderinfomodel instance) =>
    <String, dynamic>{
      'custaddress': instance.custaddress,
      'customerid': instance.customerid,
      'custuserid': instance.custuserid,
      'custname': instance.custname,
      'advanceamount': instance.advanceamount,
      'productlist': instance.productlist,
      'totaltax': instance.totaltax,
      'totalcalculatedprice': instance.totalcalculatedprice,
      'extradiscount': instance.extradiscount,
      'askedprice': instance.askedprice,
      'orderdate': JsonHelper.toJsonTimeStamp(instance.orderdate),
      'orderstate': instance.orderstate,
      'serviceproviderid': instance.serviceproviderid,
      'custphonenum': instance.custphonenum,
      'id': instance.id,
    };

_$_LuceneSearchSuggestionData _$_$_LuceneSearchSuggestionDataFromJson(
    Map<String, dynamic> json) {
  return _$_LuceneSearchSuggestionData(
    pid: json['pid'] as String,
    text: json['text'] as String,
    luceneid: json['luceneid'] as int,
    tileimage: json['tileimage'] as String,
  );
}

Map<String, dynamic> _$_$_LuceneSearchSuggestionDataToJson(
        _$_LuceneSearchSuggestionData instance) =>
    <String, dynamic>{
      'pid': instance.pid,
      'text': instance.text,
      'luceneid': instance.luceneid,
      'tileimage': instance.tileimage,
    };

_$_Sortfielddata _$_$_SortfielddataFromJson(Map<String, dynamic> json) {
  return _$_Sortfielddata(
    fieldname: json['fieldname'] as String,
    desc: json['desc'] as bool,
  );
}

Map<String, dynamic> _$_$_SortfielddataToJson(_$_Sortfielddata instance) =>
    <String, dynamic>{
      'fieldname': instance.fieldname,
      'desc': instance.desc,
    };

_$_NumericFilterData _$_$_NumericFilterDataFromJson(Map<String, dynamic> json) {
  return _$_NumericFilterData(
    fieldname: json['fieldname'] as String,
    minval: (json['minval'] as num)?.toDouble(),
    maxval: (json['maxval'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_NumericFilterDataToJson(
        _$_NumericFilterData instance) =>
    <String, dynamic>{
      'fieldname': instance.fieldname,
      'minval': instance.minval,
      'maxval': instance.maxval,
    };

_$_FacetParaFilter _$_$_FacetParaFilterFromJson(Map<String, dynamic> json) {
  return _$_FacetParaFilter(
    paraname: json['paraname'] as String,
    fieldvalues:
        (json['fieldvalues'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_FacetParaFilterToJson(_$_FacetParaFilter instance) =>
    <String, dynamic>{
      'paraname': instance.paraname,
      'fieldvalues': instance.fieldvalues,
    };

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
        _$_ProductFilterModel instance) =>
    <String, dynamic>{
      'filtertype': instance.filtertype,
      'psc': instance.psc,
      'categorytype': instance.categorytype,
      'reqfacet': instance.reqfacet,
      'offset': instance.offset,
      'termquery': instance.termquery,
      'sortf': instance.sortf,
      'filters': instance.filters,
      'facetparalist': instance.facetparalist,
    };

_$_customerinfo _$_$_customerinfoFromJson(Map<String, dynamic> json) {
  return _$_customerinfo(
    infotype: json['infotype'] as int,
    customerid: json['customerid'] as String,
    customeruserid: json['customeruserid'] as String,
    name: json['name'] as String,
    maddr: json['maddr'] == null
        ? null
        : AddressModel.fromJson(json['maddr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_customerinfoToJson(_$_customerinfo instance) =>
    <String, dynamic>{
      'infotype': instance.infotype,
      'customerid': instance.customerid,
      'customeruserid': instance.customeruserid,
      'name': instance.name,
      'maddr': instance.maddr,
    };

_$_AddressModel _$_$_AddressModelFromJson(Map<String, dynamic> json) {
  return _$_AddressModel(
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

Map<String, dynamic> _$_$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'state': instance.state,
      'district': instance.district,
      'village': instance.village,
      'areaname': instance.areaname,
      'addressinfo': instance.addressinfo,
      'lati': instance.lati,
      'longi': instance.longi,
    };

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
    longrangelist:
        (json['longrangelist'] as List)?.map((e) => e as String)?.toList(),
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
        _$_ProductFilterResultModel instance) =>
    <String, dynamic>{
      'totalcount': instance.totalcount,
      'serviceproviderid': instance.serviceproviderid,
      'docwithdata1': instance.docwithdata1,
      'docwithdata2': instance.docwithdata2,
      'docwithdata3': instance.docwithdata3,
      'docwithdata4': instance.docwithdata4,
      'docwithdata5': instance.docwithdata5,
      'longrangelist': instance.longrangelist,
      'pidlist': instance.pidlist,
      'diminfo': instance.diminfo,
      'catinfo': instance.catinfo,
      'topleveltiletype': instance.topleveltiletype,
      'hasmoreresults': instance.hasmoreresults,
    };

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

Map<String, dynamic> _$_$_SpatialDataToJson(_$_SpatialData instance) =>
    <String, dynamic>{
      'locationname': instance.locationname,
      'curstatename': instance.curStatename,
      'statename': instance.statename,
      'lati': instance.lati,
      'longi': instance.longi,
      'radius': instance.radius,
      'type': instance.type,
    };

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
        _$_ServiceFilterParameter instance) =>
    <String, dynamic>{
      'serviceofferedselectedvalues': instance.serviceofferedselectedvalues,
      'textsearch': instance.textsearch,
      'offset': instance.offset,
    };

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

Map<String, dynamic> _$_$_ExplorePageAdToJson(_$_ExplorePageAd instance) =>
    <String, dynamic>{
      'imagepath': instance.imagepath,
      'message': instance.message,
      'lm': instance.lm,
      'lpd': instance.lpd,
    };

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
    diminfo: (json['diminfo'] as List)
        ?.map((e) =>
            e == null ? null : DimData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ServiceFilterResultDataToJson(
        _$_ServiceFilterResultData instance) =>
    <String, dynamic>{
      'smlist': instance.smlist,
      'smidlist': instance.smidlist,
      'totcount': instance.totcount,
      'curads': instance.curads,
      'diminfo': instance.diminfo,
    };

_$_LimitedServiceModel _$_$_LimitedServiceModelFromJson(
    Map<String, dynamic> json) {
  return _$_LimitedServiceModel(
    phone: (json['phone'] as List)?.map((e) => e as String)?.toList(),
    servicetype:
        (json['servicetype'] as List)?.map((e) => e as String)?.toList(),
    address: json['address'] as String,
    adm: json['adm'],
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
    serviceOffered:
        (json['serviceoffered'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_LimitedServiceModelToJson(
        _$_LimitedServiceModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'servicetype': instance.servicetype,
      'address': instance.address,
      'adm': instance.adm,
      'email': instance.email,
      'photo1': instance.photo1,
      'servicename': instance.serviceName,
      'timeinfo': instance.timeinfo,
      'serviceid': instance.serviceID,
      'ratingcount': instance.ratingcount,
      'totalratings': instance.totalratings,
      'hasapt': instance.hasapt,
      'hasadhoctrips': instance.hasadhoctrips,
      'hasecom': instance.hasecom,
      'hasproductcatalog': instance.hasproductcatalog,
      'lati': instance.lati,
      'longi': instance.longi,
      'serviceoffered': instance.serviceOffered,
    };

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
        : customerinfo.fromJson(json['cust'] as Map<String, dynamic>),
    entrypoint: json['entrypoint'] as int,
    servicesselected:
        (json['servicesselected'] as List)?.map((e) => e as String)?.toList(),
    spoffset: json['spoffset'] as int,
  );
}

Map<String, dynamic> _$_$_ProductSearchInformationConfigToJson(
        _$_ProductSearchInformationConfig instance) =>
    <String, dynamic>{
      'lsm': instance.lsm,
      'servicetype': instance.servicetype,
      'grouptype': instance.grouptype,
      'isshop': instance.isshop,
      'sp': instance.sp,
      'cust': instance.cust,
      'entrypoint': instance.entrypoint,
      'servicesselected': instance.servicesselected,
      'spoffset': instance.spoffset,
    };

_$_SPCustomerModel _$_$_SPCustomerModelFromJson(Map<String, dynamic> json) {
  return _$_SPCustomerModel(
    customerId: json['customerid'] as String,
    userId: json['userid'] as String,
    phoneNum: json['phonenum'] as String,
    email: json['email'] as String,
    names: (json['names'] as List)
        ?.map((e) => e == null
            ? null
            : CustomerNameAgeIngo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    addressInfolist: json['addressinfolist'] as List,
  );
}

Map<String, dynamic> _$_$_SPCustomerModelToJson(_$_SPCustomerModel instance) =>
    <String, dynamic>{
      'customerid': instance.customerId,
      'userid': instance.userId,
      'phonenum': instance.phoneNum,
      'email': instance.email,
      'names': instance.names,
      'addressinfolist': instance.addressInfolist,
    };

_$_CustomerNameAgeIngo _$_$_CustomerNameAgeIngoFromJson(
    Map<String, dynamic> json) {
  return _$_CustomerNameAgeIngo(
    name: json['name'] as String,
    dob: JsonHelper.fromJsonTimeStamp(json['dob'] as Timestamp),
    gender: json['gender'] as String,
  );
}

Map<String, dynamic> _$_$_CustomerNameAgeIngoToJson(
        _$_CustomerNameAgeIngo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dob': JsonHelper.toJsonTimeStamp(instance.dob),
      'gender': instance.gender,
    };

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

Map<String, dynamic> _$_$_ServiceGroupToJson(_$_ServiceGroup instance) =>
    <String, dynamic>{
      'sectionname': instance.sectionname,
      'icon': instance.icon,
      'displaylist': instance.displaylist,
      'ordernum': instance.ordernum,
      'type': instance.type,
      'servicetypelist': instance.servicetypelist,
    };

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

Map<String, dynamic> _$_$_ServiceTypeToJson(_$_ServiceType instance) =>
    <String, dynamic>{
      'servicetype': instance.servicetype,
      'querystr': instance.querystr,
      'icon': instance.icon,
      'displaylist': instance.displaylist,
      'ordernum': instance.ordernum,
      'childservicetype': instance.childservicetype,
      'filtertype': instance.filtertype,
      'filterdata': instance.filterdata,
    };

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
        _$_ServiceTypeFilterData instance) =>
    <String, dynamic>{
      'filterheading': instance.filterheading,
      'depth': instance.depth,
      'values': instance.values,
    };

_$_ServiceTypeFilterValues _$_$_ServiceTypeFilterValuesFromJson(
    Map<String, dynamic> json) {
  return _$_ServiceTypeFilterValues(
    value: json['value'] as String,
    childvalues:
        (json['childvalues'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_ServiceTypeFilterValuesToJson(
        _$_ServiceTypeFilterValues instance) =>
    <String, dynamic>{
      'value': instance.value,
      'childvalues': instance.childvalues,
    };

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
        _$_ExplorePageParameters instance) =>
    <String, dynamic>{
      'adlist': instance.adlist,
      'favsplist': instance.favsplist,
    };

_$_NumericFilterForIndex _$_$_NumericFilterForIndexFromJson(
    Map<String, dynamic> json) {
  return _$_NumericFilterForIndex(
    fieldname: json['fieldname'] as String,
    value: json['value'] as int,
  );
}

Map<String, dynamic> _$_$_NumericFilterForIndexToJson(
        _$_NumericFilterForIndex instance) =>
    <String, dynamic>{
      'fieldname': instance.fieldname,
      'value': instance.value,
    };

_$_SingleFacetField _$_$_SingleFacetFieldFromJson(Map<String, dynamic> json) {
  return _$_SingleFacetField(
    fieldname: json['fieldname'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$_$_SingleFacetFieldToJson(
        _$_SingleFacetField instance) =>
    <String, dynamic>{
      'fieldname': instance.fieldname,
      'value': instance.value,
    };
