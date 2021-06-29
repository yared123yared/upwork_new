// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FamilyMember _$_$_FamilyMemberFromJson(Map<String, dynamic> json) {
  return _$_FamilyMember(
    userId: json['userId'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    modelId: json['modelId'] as String,
    vehiclenumber: json['vehiclenumber'] as String,
    vehicleactive: json['vehicleactive'] as bool,
    qrcodeimg: json['qrcodeimg'] as String,
  );
}

Map<String, dynamic> _$_$_FamilyMemberToJson(_$_FamilyMember instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'modelId': instance.modelId,
      'vehiclenumber': instance.vehiclenumber,
      'vehicleactive': instance.vehicleactive,
      'qrcodeimg': instance.qrcodeimg,
    };
