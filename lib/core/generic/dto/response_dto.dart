class ResponseDto<T> {
  int? status;
  String? message;
  T? data;

  ResponseDto({this.status, this.message, this.data});

  ResponseDto.fromJson(
      Map<String, dynamic> json, Function(Map<String, dynamic>) create) {
    status = json['status'];
    message = json['message'];
    data = create(json['data']);
  }
}
