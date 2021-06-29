// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaInfo _$AreaInfoFromJson(Map<String, dynamic> json) {
  return AreaInfo(
    districtname: json['districtname'] as String,
    areaname: json['areaname'] as String,
  );
}

Map<String, dynamic> _$AreaInfoToJson(AreaInfo instance) => <String, dynamic>{
      'districtname': instance.districtname,
      'areaname': instance.areaname,
    };

SpatialData _$SpatialDataFromJson(Map<String, dynamic> json) {
  return SpatialData(
    curStatename: json['curStatename'] as String,
    lati: (json['lati'] as num)?.toDouble(),
    longi: (json['longi'] as num)?.toDouble(),
    radius: json['radius'] as int,
    statename: json['statename'] as String,
    locationname: (json['locationname'] as List)
        ?.map((e) =>
            e == null ? null : AreaInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpatialDataToJson(SpatialData instance) =>
    <String, dynamic>{
      'curStatename': instance.curStatename,
      'lati': instance.lati,
      'longi': instance.longi,
      'radius': instance.radius,
      'statename': instance.statename,
      'locationname': instance.locationname,
    };

ServiceFilterParameter _$ServiceFilterParameterFromJson(
    Map<String, dynamic> json) {
  return ServiceFilterParameter(
    sd: json['sd'] == null
        ? null
        : SpatialData.fromJson(json['sd'] as Map<String, dynamic>),
    textsearch: json['textsearch'] as String,
    servicetype: json['servicetype'] as String,
    serviceofferedselectedvalues: (json['serviceofferedselectedvalues'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$ServiceFilterParameterToJson(
        ServiceFilterParameter instance) =>
    <String, dynamic>{
      'sd': instance.sd,
      'textsearch': instance.textsearch,
      'servicetype': instance.servicetype,
      'serviceofferedselectedvalues': instance.serviceofferedselectedvalues,
      'offset': instance.offset,
    };

ServiceFilterResultData _$ServiceFilterResultDataFromJson(
    Map<String, dynamic> json) {
  return ServiceFilterResultData(
    smlist: (json['smlist'] as List)
        ?.map((e) => e == null
            ? null
            : LimitedServiceModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    smidlist: (json['smidlist'] as List)?.map((e) => e as String)?.toList(),
    totcount: json['totcount'] as int,
  );
}

Map<String, dynamic> _$ServiceFilterResultDataToJson(
        ServiceFilterResultData instance) =>
    <String, dynamic>{
      'smlist': instance.smlist,
      'smidlist': instance.smidlist,
      'totcount': instance.totcount,
    };

LimitedServiceModel _$LimitedServiceModelFromJson(Map<String, dynamic> json) {
  return LimitedServiceModel(
    serviceID: json['serviceID'] as String,
    address: json['address'] as String,
    phone: (json['phone'] as List)?.map((e) => e as String)?.toList(),
    email: json['email'] as String,
    photo1: json['photo1'] as String,
    ratingcount: json['ratingcount'] as int,
    totalratings: json['totalratings'] as int,
    serviceName: json['serviceName'] as String,
    hasapt: json['hasapt'] as bool,
    servicetype:
        (json['servicetype'] as List)?.map((e) => e as String)?.toList(),
    hasadhoctrips: json['hasadhoctrips'] as bool,
    hasecom: json['hasecom'] as bool,
    hasproductcatalog: json['hasproductcatalog'] as bool,
    timeinfo: json['timeinfo'] as String,
  );
}

Map<String, dynamic> _$LimitedServiceModelToJson(
        LimitedServiceModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'photo1': instance.photo1,
      'ratingcount': instance.ratingcount,
      'totalratings': instance.totalratings,
      'serviceName': instance.serviceName,
      'hasapt': instance.hasapt,
      'servicetype': instance.servicetype,
      'hasadhoctrips': instance.hasadhoctrips,
      'hasecom': instance.hasecom,
      'hasproductcatalog': instance.hasproductcatalog,
      'timeinfo': instance.timeinfo,
      'serviceID': instance.serviceID,
    };
