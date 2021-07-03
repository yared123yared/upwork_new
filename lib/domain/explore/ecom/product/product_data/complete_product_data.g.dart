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
        : JobData.fromJson(json['adata'] as Map<String, dynamic>),
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
  )..hashCode = json['hashCode'] as int;
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
  writeNotNull('hashCode', instance.hashCode);
  return val;
}

_$CompleteJob _$_$CompleteJobFromJson(Map<String, dynamic> json) {
  return _$CompleteJob(
    docId: json['docid'] as String,
    dt: json['dt'] as String,
    serviceId: json['serviceproviderid'] as String ?? '',
    userId: json['userid'] as String ?? '',
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
