import 'package:thaonhushop_flutter/app/domain/responses/base_response.dart';

import '../requests/login_request.dart';
import '../requests/register_request.dart';

abstract class IAuththenticationRepository {
  // INITIALIZER FIREBASE
  // Future<FirebaseApp> initializeFirebase();

  // SIGN IN WITH GOOGLE
  // Future<BaseResponse> signInWithGoogle();

  // SIGN OUT
  // Future<BaseResponse> signOut();

  // // SEND MAIL VERIFICATION
  // Future<BaseResponse> sendEmailVerification();

  // // GET USER BY EMAIL AND PASSWORD
  // Future<BaseResponse> signInWithEmailPassword({
  //   required SignInRequest request,
  // });

  // // SIGN UP BY EMAIL AND PASSWORD
  // Future<BaseResponse> signUpWithEmailPassword({
  //   required SignUpRequest request,
  // });
  Future<BaseResponse> loginByPhone(LoginRequest request);
  Future<BaseResponse> registerAccountByPhone(RegisterRequest request);
}
