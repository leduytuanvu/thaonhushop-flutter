// import 'dart:developer';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:thanh_pho_bao_loc/app/core/config/app_enums.dart';
// import 'package:thanh_pho_bao_loc/app/domain/entities/user.dart' as user_entity;
// import 'package:thanh_pho_bao_loc/app/domain/repositories/user_repository.dart';
// import 'package:thanh_pho_bao_loc/app/domain/responses/base_response.dart';

// class UserRepository extends IUserRepository {
//   // CREATE USER IN FIRESTORE
//   @override
//   Future<BaseResponse> createUserInFirebase({
//     required user_entity.User user,
//   }) async {
//     BaseResponse baseResponse = BaseResponse(
//       data: null,
//       statusCode: null,
//       statusAction: StatusAction.failure,
//       message: 'Create user in firebase firestore failed !',
//     );
//     try {
//       final docUser =
//           FirebaseFirestore.instance.collection('users').doc(user.id);
//       user.id = docUser.id;
//       final userJson = user.toJson();
//       await docUser.set(userJson);
//       baseResponse.data = user;
//       baseResponse.statusAction = StatusAction.success;
//       baseResponse.message = 'Create user in firebase firestore succsess !';
//     } catch (e) {
//       baseResponse.message = e.toString();
//     }
//     return baseResponse;
//   }

//   // @override
//   // Future<BaseResponse> getAllUser() async {
//   //   var response = BaseResponse(
//   //     statusCode: null,
//   //     message: "GET ALL USER FAILURE",
//   //     data: null,
//   //     statusAction: StatusAction.failure,
//   //   );
//   //   try {
//   //     // Stream<List<user_entity.User>> list = FirebaseFirestore.instance
//   //     //     .collection('users')
//   //     //     .snapshots()
//   //     //     .map((snapshot) => snapshot.docs
//   //     //         .map((e) => user_entity.User.fromJson(e.data()))
//   //     //         .toList());
//   //     // Stream<List<user_entity.User>> list = FirebaseFirestore.instance
//   //     //     .collection('users')
//   //     //     .snapshots()
//   //     //     .transform(Utils.transformer(user_entity.User.fromJson));
//   //     response.data =
//   //         FirebaseFirestore.instance.collection("users").snapshots();
//   //     response.statusAction = StatusAction.success;
//   //     response.message = "GET ALL USER SUCCESS";
//   //   } catch (e) {
//   //     response.message = e.toString().toUpperCase();
//   //   }
//   //   return response;
//   // }

//   // @override
//   // Future<user_entity.User?> getUserByID(String id) async {
//   //   try {
//   //     final docUser = FirebaseFirestore.instance.collection('users').doc(id);
//   //     final snapshot = await docUser.get();
//   //     if (snapshot.exists) {
//   //       return user_entity.User.fromJson(snapshot.data()!);
//   //     }
//   //     return null;
//   //   } catch (e) {
//   //     rethrow;
//   //   }
//   // }

//   // @override
//   // Future<void> updateUser(user_entity.User user) async {
//   //   try {
//   //     final docUser =
//   //         FirebaseFirestore.instance.collection('users').doc(user.id);
//   //     await docUser.update({
//   //       'fullName': user.fullName,
//   //       'phone': user.phone,
//   //       'image': user.image,
//   //       'birthday': user.birthday,
//   //     });
//   //   } catch (e) {
//   //     log('USER REPOSITORY : $e');
//   //     rethrow;
//   //   }
//   // }

//   // @override
//   // Future<void> deleteUser(String id) async {
//   //   try {
//   //     final docUser = FirebaseFirestore.instance.collection('users').doc(id);
//   //     return await docUser.delete();
//   //   } catch (e) {
//   //     log('USER REPOSITORY : $e');
//   //     rethrow;
//   //   }
//   // }

// // GET USER BY EMAIL
//   @override
//   Future<BaseResponse> getUserByEmail({
//     required String email,
//   }) async {
//     BaseResponse baseResponse = BaseResponse(
//       data: null,
//       message: 'Get user by email failed !',
//       statusAction: StatusAction.failure,
//       statusCode: null,
//     );
//     try {
//       var docUser = await FirebaseFirestore.instance
//           .collection("users")
//           .where("email", isEqualTo: email)
//           .get();
//       if (docUser.docs.isNotEmpty) {
//         baseResponse.data = user_entity.User.fromJson(
//           docUser.docs.first.data(),
//           true,
//         );
//         baseResponse.message = "Get user by email success !";
//         baseResponse.statusAction = StatusAction.success;
//         log("${baseResponse.data} value");
//       }
//     } catch (e) {
//       baseResponse.message = e.toString();
//     }
//     return baseResponse;
//   }
// }
