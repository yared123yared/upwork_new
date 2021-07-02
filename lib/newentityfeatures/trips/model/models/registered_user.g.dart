// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisteredUser _$_$_RegisteredUserFromJson(Map<String, dynamic> json) {
  return _$_RegisteredUser(
    userId: json['userId'] as String,
    userType: json['userType'] as String,
    isActive: json['isActive'] as bool,
    name: json['name'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
    guardian1id: json['guardian1id'] as String,
    guardian1name: json['guardian1name'] as String,
    guardian1phone: json['guardian1phone'] as String,
    guardian1email: json['guardian1email'] as String,
    guardian2id: json['guardian2id'] as String,
    guardian2name: json['guardian2name'] as String,
    guardian2phone: json['guardian2phone'] as String,
    guardian2email: json['guardian2email'] as String,
  );
}

Map<String, dynamic> _$_$_RegisteredUserToJson(_$_RegisteredUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('userType', instance.userType);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('name', instance.name);
  writeNotNull('phone', instance.phone);
  writeNotNull('email', instance.email);
  writeNotNull('guardian1id', instance.guardian1id);
  writeNotNull('guardian1name', instance.guardian1name);
  writeNotNull('guardian1phone', instance.guardian1phone);
  writeNotNull('guardian1email', instance.guardian1email);
  writeNotNull('guardian2id', instance.guardian2id);
  writeNotNull('guardian2name', instance.guardian2name);
  writeNotNull('guardian2phone', instance.guardian2phone);
  writeNotNull('guardian2email', instance.guardian2email);
  return val;
}
