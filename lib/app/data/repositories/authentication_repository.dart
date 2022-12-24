// import 'package:thanh_pho_bao_loc/app/domain/entities/user.dart' as user_entity;
import 'package:dio/dio.dart';
import 'package:thaonhushop_flutter/app/data/network/api/authentication_api.dart';
import 'package:thaonhushop_flutter/app/domain/requests/login_request.dart';
import 'package:thaonhushop_flutter/app/domain/responses/base_response.dart';

import 'package:thaonhushop_flutter/app/domain/requests/register_request.dart';

import '../../domain/repositories/authentication_repository.dart';
import '../network/dio/dio_exception.dart';

class AuththenticationRepository extends IAuththenticationRepository {
  final AuthenticationApi authenticationApi;

  AuththenticationRepository({required this.authenticationApi});
  @override
  Future<BaseResponse> registerAccountByPhone(RegisterRequest request) async {
    var result = BaseResponse();
    try {
      final response = await authenticationApi.register(request);
      // result.statusCode = response.statusCode!;
      // result.message = response.statusMessage!;
      // result.data = response.data;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      result.message = errorMessage;
      throw errorMessage;
    }
    return result;
  }

  @override
  Future<BaseResponse> loginByPhone(LoginRequest request) async {
    var result = BaseResponse();
    try {
      final response = await authenticationApi.login(request);
      // result.statusCode = response.statusCode!;
      // result.message = response.statusMessage!;
      // result.data = response.data;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      result.message = errorMessage;
      throw errorMessage;
    }
    return result;
  }
  // // INITIALIZER FIREBASE
  // @override
  // Future<FirebaseApp> initializeFirebase() async {
  //   FirebaseApp firebaseApp = await Firebase.initializeApp();
  //   return firebaseApp;
  // }

  // // SIGN IN WITH GOOGLE
  // @override
  // Future<BaseResponse> signInWithGoogle() async {
  //   BaseResponse baseResponse = BaseResponse(
  //     data: null,
  //     statusCode: null,
  //     statusAction: StatusAction.failure,
  //     message: 'Sign in with google failed !',
  //   );
  //   try {
  //     FirebaseAuth auth = FirebaseAuth.instance;
  //     final GoogleSignIn googleSignIn = GoogleSignIn();
  //     final GoogleSignInAccount? googleSignInAccount;
  //     googleSignInAccount = await googleSignIn.signIn();
  //     if (googleSignInAccount != null) {
  //       final GoogleSignInAuthentication googleSignInAuthentication;
  //       googleSignInAuthentication = await googleSignInAccount.authentication;
  //       final AuthCredential credential = GoogleAuthProvider.credential(
  //         accessToken: googleSignInAuthentication.accessToken,
  //         idToken: googleSignInAuthentication.idToken,
  //       );
  //       final UserCredential userCredential;
  //       userCredential = await auth.signInWithCredential(credential);

  //       final User? userFirebase = userCredential.user;

  //       if (userFirebase?.emailVerified == false) {
  //         baseResponse.message = 'Please veryfy your email !';
  //       } else {
  //         if (userFirebase != null) {
  //           // CREATE USER ENTITY
  //           var userEntity = user_entity.User.fromFirebase(userFirebase);
  //           BaseResponse baseResponseGetUserByEmail = await UserRepository()
  //               .getUserByEmail(email: userFirebase.email!);
  //           if (baseResponseGetUserByEmail.statusAction ==
  //               StatusAction.failure) {
  //             // CREATE USER IN FIRESTORE
  //             BaseResponse baseResponseCreateUser =
  //                 await UserRepository().createUserInFirebase(user: userEntity);
  //             if (baseResponseCreateUser.statusAction == StatusAction.success) {
  //               // SAVE USER TO LOCAL STORAGE
  //               var responseLocal = LocalStorageService.setUser(userEntity);
  //               if (responseLocal.statusAction == StatusAction.failure) {
  //                 baseResponse.message = responseLocal.message;
  //               } else {
  //                 baseResponse.data = userEntity;
  //                 baseResponse.statusAction = StatusAction.success;
  //                 baseResponse.message = 'Sign in with google success !';
  //               }
  //             } else {
  //               baseResponse.message =
  //                   baseResponseCreateUser.message.toString();
  //             }
  //           } else {
  //             // SAVE USER TO LOCAL STORAGE
  //             BaseResponse responseGetUserFromEmail = await UserRepository()
  //                 .getUserByEmail(email: userFirebase.email!);
  //             if (responseGetUserFromEmail.statusAction ==
  //                 StatusAction.success) {
  //               var responseLocal =
  //                   LocalStorageService.setUser(responseGetUserFromEmail.data);
  //               if (responseLocal.statusAction == StatusAction.failure) {
  //                 baseResponse.message = responseLocal.message;
  //               } else {
  //                 baseResponse.data = responseGetUserFromEmail.data;
  //                 baseResponse.statusAction = StatusAction.success;
  //                 baseResponse.message = 'Sign in with google success !';
  //               }
  //             }
  //           }
  //         }
  //       }
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     baseResponse.message = e.message!;
  //   } catch (e) {
  //     baseResponse.message = e.toString();
  //   }
  //   return baseResponse;
  // }

  // // SIGN UP BY EMAIL AND PASSWORD
  // @override
  // Future<BaseResponse> signUpWithEmailPassword({
  //   required SignUpRequest request,
  // }) async {
  //   var baseResponse = BaseResponse(
  //     data: null,
  //     message: 'Sign up with email and password failed !',
  //     statusAction: StatusAction.failure,
  //     statusCode: null,
  //   );
  //   try {
  //     BaseResponse responseGetUserByEmail =
  //         await UserRepository().getUserByEmail(email: request.email!);
  //     if (responseGetUserByEmail.statusAction == StatusAction.success) {
  //       baseResponse.message = 'This email already exist !';
  //     } else {
  //       if (request.password != request.rePassword) {
  //         baseResponse.message = 'Password and re-password not match !';
  //       } else {
  //         // CREATE USER BY EMAIL AND PASSWORD
  //         final credential =
  //             await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //           email: request.email!.trim(),
  //           password: request.password!.trim(),
  //         );
  //         if (credential.user != null) {
  //           // SEND EMAIL VERIFICATION
  //           var responseSendEmail = await sendEmailVerification();
  //           if (responseSendEmail.statusAction == StatusAction.success) {
  //             // SIGN IN USER BY EMAIL AND PASSWORD
  //             // SignInRequest signInRequest = SignInRequest(
  //             //   email: request.email,
  //             //   password: request.password,
  //             // );
  //             // var userFirebase = await AuthRepository().signInWithEmailPassword(
  //             //   request: signInRequest,
  //             // );
  //             // CREATE USER IN FIREBASE FIRESTORE
  //             final userEntity = user_entity.User(
  //               createdAt: DateTime.now(),
  //               email: request.email,
  //               password: request.password,
  //               fullName: request.email,
  //               signInByGoogle: false,
  //               username: request.email,
  //               status: Status.empty,
  //               gender: Gender.empty,
  //               statusAccount: StatusAccount.active,
  //               wallpaper:
  //                   "https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000",
  //               image:
  //                   "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png",
  //               phone: "",
  //             );
  //             // userEntity.password = request.password;
  //             BaseResponse responseCreateUserInFireBase =
  //                 await UserRepository().createUserInFirebase(user: userEntity);
  //             if (responseCreateUserInFireBase.statusAction ==
  //                 StatusAction.success) {
  //               var responseLocal = LocalStorageService.setUser(userEntity);
  //               if (responseLocal.statusAction == StatusAction.success) {
  //                 baseResponse.data = userEntity;
  //                 baseResponse.statusAction = StatusAction.success;
  //                 baseResponse.message =
  //                     'Sign up success. Please verify your email !';
  //               } else {
  //                 baseResponse.message = responseLocal.message;
  //               }
  //             } else {
  //               baseResponse.message =
  //                   responseCreateUserInFireBase.message.toString();
  //             }
  //           } else {
  //             baseResponse.message = responseSendEmail.message.toString();
  //           }
  //         }
  //       }
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       baseResponse.message = 'The password is too week !';
  //     } else if (e.code == 'email-already-in-use') {
  //       baseResponse.message = 'This email already exist !';
  //     } else {
  //       baseResponse.message = e.message;
  //       log(e.message.toString());
  //     }
  //   } catch (e) {
  //     baseResponse.message = e.toString();
  //   }
  //   return baseResponse;
  // }

  // // GET USER BY EMAIL AND PASSWORD
  // @override
  // Future<BaseResponse> signInWithEmailPassword({
  //   required SignInRequest request,
  // }) async {
  //   BaseResponse baseResponse = BaseResponse(
  //     data: null,
  //     message: 'Sign in with email and password failed !',
  //     statusAction: StatusAction.failure,
  //     statusCode: null,
  //   );
  //   try {
  //     var checkUserCreateWithGoogle = await FirebaseFirestore.instance
  //         .collection("users")
  //         .where("email", isEqualTo: request.email)
  //         .get();

  //     var userTmp = user_entity.User.fromJson(
  //       checkUserCreateWithGoogle.docs.first.data(),
  //       true,
  //     );
  //     if (userTmp.signInByGoogle == true) {
  //       baseResponse.message = "This email sign in with google !";
  //     } else {
  //       final credential =
  //           await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: request.email!.trim(),
  //         password: request.password!.trim(),
  //       );
  //       if (credential.user != null) {
  //         var user = credential.user as User;
  //         if (user.emailVerified == false) {
  //           baseResponse.message = 'Please verify your email !';
  //         } else {
  //           if (checkUserCreateWithGoogle.docs.isNotEmpty) {
  //             var docUser = await FirebaseFirestore.instance
  //                 .collection("users")
  //                 .where("email", isEqualTo: request.email)
  //                 .where("password", isEqualTo: request.password)
  //                 .get();
  //             if (docUser.docs.isNotEmpty) {
  //               var localStorageResponse = LocalStorageService.setUser(
  //                 user_entity.User.fromJson(
  //                   docUser.docs.first.data(),
  //                   true,
  //                 ),
  //               );
  //               if (localStorageResponse.statusAction == StatusAction.failure) {
  //                 baseResponse.message = localStorageResponse.message;
  //               } else {
  //                 baseResponse.data = user_entity.User.fromJson(
  //                   docUser.docs.first.data(),
  //                   true,
  //                 );
  //                 baseResponse.message = "SIGN IN SUCCESS !";
  //                 baseResponse.statusAction = StatusAction.success;
  //               }
  //             }
  //           }
  //         }
  //       }
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       baseResponse.message = e.message.toString();
  //     } else if (e.code == 'wrong-password') {
  //       baseResponse.message = e.message.toString();
  //     } else {
  //       baseResponse.message = e.message.toString();
  //     }
  //   } catch (e) {
  //     baseResponse.message = e.toString();
  //   }
  //   return baseResponse;
  // }

  // // SIGN OUT
  // @override
  // Future<BaseResponse> signOut() async {
  //   var baseResponse = BaseResponse(
  //     data: null,
  //     statusCode: null,
  //     statusAction: StatusAction.failure,
  //     message: 'SIGN OUT FAILED !',
  //   );
  //   try {
  //     await FirebaseAuth.instance.signOut();
  //     final GoogleSignIn googleSignIn = GoogleSignIn();
  //     googleSignIn.signOut();
  //     LocalStorageService.clearAllData();
  //     baseResponse.statusAction = StatusAction.success;
  //     baseResponse.message = 'SIGN OUT SUCCESS !';
  //   } catch (e) {
  //     baseResponse.message = e.toString();
  //   }
  //   return baseResponse;
  // }

  // // SEND MAIL VERIFICATION
  // @override
  // Future<BaseResponse> sendEmailVerification() async {
  //   var baseResponse = BaseResponse(
  //     data: null,
  //     statusCode: null,
  //     statusAction: StatusAction.failure,
  //     message: 'SEND EMAIL VERIFICATION FAILURE',
  //   );
  //   try {
  //     final user = FirebaseAuth.instance.currentUser;
  //     await user!.sendEmailVerification();
  //     baseResponse.statusAction = StatusAction.success;
  //     baseResponse.data = user;
  //     baseResponse.message = 'SEND EMAIL VERIFICATION SUCCESS';
  //   } catch (e) {
  //     baseResponse.message = e.toString();
  //   }
  //   return baseResponse;
  // }
}
