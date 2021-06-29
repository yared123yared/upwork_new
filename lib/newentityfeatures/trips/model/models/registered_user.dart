import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_user.freezed.dart';
part 'registered_user.g.dart';

@freezed
abstract class RegisteredUser with _$RegisteredUser {
  const factory RegisteredUser({
    @required String userId,
    @required String userType,
    @required bool isActive,
    //
    String name,
    String phone,
    String email,
    String guardian1id,
    String guardian1name,
    String guardian1phone,
    String guardian1email,
    String guardian2id,
    String guardian2name,
    String guardian2phone,
    String guardian2email,
  }) = _RegisteredUser;

  factory RegisteredUser.fromJson(Map json) => _$RegisteredUserFromJson(json);
}