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

Map<String, dynamic> _$AreaInfoToJson(AreaInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('districtname', instance.districtname);
  writeNotNull('areaname', instance.areaname);
  return val;
}

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

Map<String, dynamic> _$SpatialDataToJson(SpatialData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('curStatename', instance.curStatename);
  writeNotNull('lati', instance.lati);
  writeNotNull('longi', instance.longi);
  writeNotNull('radius', instance.radius);
  writeNotNull('statename', instance.statename);
  writeNotNull(
      'locationname', instance.locationname?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    ServiceFilterParameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sd', instance.sd?.toJson());
  writeNotNull('textsearch', instance.textsearch);
  writeNotNull('servicetype', instance.servicetype);
  writeNotNull(
      'serviceofferedselectedvalues', instance.serviceofferedselectedvalues);
  writeNotNull('offset', instance.offset);
  return val;
}

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
    ServiceFilterResultData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('smlist', instance.smlist?.map((e) => e?.toJson())?.toList());
  writeNotNull('smidlist', instance.smidlist);
  writeNotNull('totcount', instance.totcount);
  return val;
}

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

Map<String, dynamic> _$LimitedServiceModelToJson(LimitedServiceModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('phone', instance.phone);
  writeNotNull('email', instance.email);
  writeNotNull('photo1', instance.photo1);
  writeNotNull('ratingcount', instance.ratingcount);
  writeNotNull('totalratings', instance.totalratings);
  writeNotNull('serviceName', instance.serviceName);
  writeNotNull('hasapt', instance.hasapt);
  writeNotNull('servicetype', instance.servicetype);
  writeNotNull('hasadhoctrips', instance.hasadhoctrips);
  writeNotNull('hasecom', instance.hasecom);
  writeNotNull('hasproductcatalog', instance.hasproductcatalog);
  writeNotNull('timeinfo', instance.timeinfo);
  writeNotNull('serviceID', instance.serviceID);
  return val;
}
