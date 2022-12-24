// import 'package:thanh_pho_bao_loc/app/core/config/app_enums.dart';

class BaseResponse {
  int statusCode;
  String message;
  dynamic data;

  BaseResponse({
    this.statusCode = 500,
    this.message = "Something wrong",
    this.data,
  });

  @override
  String toString() {
    return 'BaseResponse(statusCode: $statusCode, message: $message, data: $data)';
  }
}
