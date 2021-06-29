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

Map<String, dynamic> _$_$_RegisteredUserToJson(_$_RegisteredUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userType': instance.userType,
      'isActive': instance.isActive,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'guardian1id': instance.guardian1id,
      'guardian1name': instance.guardian1name,
      'guardian1phone': instance.guardian1phone,
      'guardian1email': instance.guardian1email,
      'guardian2id': instance.guardian2id,
      'guardian2name': instance.guardian2name,
      'guardian2phone': instance.guardian2phone,
      'guardian2email': instance.guardian2email,
    };
