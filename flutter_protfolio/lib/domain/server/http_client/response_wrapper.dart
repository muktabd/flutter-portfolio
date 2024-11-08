class ResponseWrapper<T> {
  int? status;
  String? message;
  Map<String, dynamic>? error = {};
  Map<String, dynamic>? data = {};

  // * Creating a generic response getter!
  T? _response;
  setResponse({required T? convertedFromData}) {
    _response = convertedFromData;
  }
  T? get responseData => _response;

  bool get hasSuccessfulData => responseData != null;

  // * End

  ResponseWrapper({
    required this.status,
    required this.message,
    required this.error,
    this.data,
  });

  ResponseWrapper.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    error = json['error'];
    data = json['data'];
  }

}
