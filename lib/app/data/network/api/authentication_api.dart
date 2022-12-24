import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:thaonhushop_flutter/app/core/config/app_endpoint.dart';

import '../../../domain/requests/login_request.dart';
import '../../../domain/requests/register_request.dart';
import '../dio/dio_client.dart';

class AuthenticationApi {
  final DioClient dioClient;

  AuthenticationApi({required this.dioClient});

  Future<Response> register(RegisterRequest request) async {
    try {
      final Response response = await dioClient.post(
        AppEndpoint.register,
        data: {
          "phone": request.phone,
          "password": request.password,
          "rePassword": request.rePassword
        },
      );
      log(response.realUri.toString());
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> login(LoginRequest request) async {
    try {
      final Response response = await dioClient.post(
        AppEndpoint.login,
        data: {
          "phone": request.phone,
          "password": request.password,
        },
      );
      log(response.realUri.toString());
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
