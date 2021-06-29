class GenericResponse<T> {
  bool success;
  String message;
  T data;

  GenericResponse({this.success = false, this.message = "", this.data});
}
