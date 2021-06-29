class SignUpRequest {
  String email;
  String username;
  String phoneNum;
  String password;
  String userId;
  String requestType;

  SignUpRequest({
    this.email,
    this.username,
    this.phoneNum,
    this.password,
    this.userId,
    this.requestType = "PROFILE",
  });
}
