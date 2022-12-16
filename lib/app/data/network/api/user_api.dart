// import 'package:dio/dio.dart';
// import 'package:shop2hand/app/config/app_endpoints.dart';
// import 'package:shop2hand/data/network/dio/dio_client.dart';
// import 'package:shop2hand/domain/requests/auth_requests/sign_up_request.dart';
// import 'package:shop2hand/domain/requests/user_requests.dart/update_user_request.dart';

// class UserAPI {
//   late final DioClient dioClient;

//   UserAPI({required this.dioClient});

//   Future<Response> newUser(SignUpRequest signUpRequest) async {
//     try {
//       final Response response = await dioClient.post(
//         Endpoints.user,
//         data: {
//           "userName": signUpRequest.username,
//           "password": signUpRequest.password,
//           "fullName": signUpRequest.fullName,
//           // "description": signUpRequest.description,
//           "phone": signUpRequest.phone,
//           // "gender": signUpRequest.gender,
//           "buildingId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
//         },
//       );
//       return response;
//     } catch (e) {
//       rethrow;
//     }
//   }

//   Future<Response> getUserFromID(String? id) async {
//     try {
//       final Response response = await dioClient.get('${Endpoints.user}/$id');
//       return response;
//     } catch (e) {
//       rethrow;
//     }
//   }

//   Future<Response> updateUser(UpdateUserRequest updateUserRequest) async {
//     try {
//       final Response response = await dioClient.put(
//         '${Endpoints.user}/$updateUserRequest.id',
//         data: {
//           // "fullName": updateUserRequest.user?.fullName,
//           // "description": updateUserRequest.user?.description,
//           // "phone": updateUserRequest.user?.phone,
//           // "gender": updateUserRequest.user?.gender,
//           "buildingId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
//         },
//       );
//       return response;
//     } catch (e) {
//       rethrow;
//     }
//   }

//   Future<void> deleteUser(String id) async {
//     try {
//       await dioClient.delete('${Endpoints.user}/$id');
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
