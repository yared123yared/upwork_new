class GeneralResponse {
  String message;
  bool success;

  GeneralResponse({this.message = "", this.success = false});
}

class GeneralResponseWithUserId {
  String message;
  bool success;
  String userid;

  GeneralResponseWithUserId({this.message = "", this.success = false,this.userid=null});
}