// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDetails _$_$ContactDetailsFromJson(Map<String, dynamic> json) {
  return _$ContactDetails(
    name: json['name'] as String,
    phonenum: json['phonenum'] as String,
    sharephone: json['sharephone'] as bool,
    email: json['email'] as String,
    shareemail: json['shareemail'] as bool,
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    shareaddress: json['shareaddress'] as bool,
  );
}

Map<String, dynamic> _$_$ContactDetailsToJson(_$ContactDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('phonenum', instance.phonenum);
  writeNotNull('sharephone', instance.sharephone);
  writeNotNull('email', instance.email);
  writeNotNull('shareemail', instance.shareemail);
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('shareaddress', instance.shareaddress);
  return val;
}

_$Address _$_$AddressFromJson(Map<String, dynamic> json) {
  return _$Address(
    country: json['country'] as String,
    state: json['state'] as String,
    district: json['district'] as String,
    townVillage: json['townVillage'] as String,
    areaSector: json['areaSector'] as String,
    societyname: json['societyname'] as String,
    addressline: json['addressline'] as String,
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$AddressToJson(_$Address instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('country', instance.country);
  writeNotNull('state', instance.state);
  writeNotNull('district', instance.district);
  writeNotNull('townVillage', instance.townVillage);
  writeNotNull('areaSector', instance.areaSector);
  writeNotNull('societyname', instance.societyname);
  writeNotNull('addressline', instance.addressline);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  return val;
}
