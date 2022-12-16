// import 'package:dio/dio.dart';
// import 'package:shop2hand/app/config/app_endpoints.dart';
// import 'package:shop2hand/data/network/dio/dio_client.dart';
// import 'package:shop2hand/domain/requests/auth_requests/sign_in_request.dart';

// class AuthAPI {
//   late final DioClient dioClient;

//   AuthAPI({required this.dioClient});

//   Future<Response> signIn(SignInRequest signInRequest) async {
//     try {
//       final Response response = await dioClient.post(
//         Endpoints.login,
//         data: {
//           "userName": signInRequest.username,
//           "password": signInRequest.password,
//         },
//       );
//       return response;
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
