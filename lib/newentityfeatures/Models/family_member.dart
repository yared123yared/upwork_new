import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'family_member.freezed.dart';
part 'family_member.g.dart';

@freezed
abstract class FamilyMember with _$FamilyMember {
  const factory FamilyMember({
    @required String userId,
    @required String name,
    @required String email,
    @required String modelId,
    @required String vehiclenumber,
    @required bool vehicleactive,
    @required String qrcodeimg,
  }) = _FamilyMember;

  factory FamilyMember.fromJson(Map json) => _$FamilyMemberFromJson(json);
}
