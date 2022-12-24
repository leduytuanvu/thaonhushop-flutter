import 'dart:developer';

import 'package:thaonhushop_flutter/app/routes/routers.dart';

import '../../../core/utils/dependency_injection.dart';
import '../../../core/utils/export.dart';
import '../../../data/repositories/authentication_repository.dart';
import '../../../domain/requests/login_request.dart';
import '../../../domain/responses/base_response.dart';

// LOGIN STATE
enum LoginState {
  initial,
  loading,
}

class LoginController extends GetxController {
  // ATTRIBUTES
  // final AuthRepository authRepository;
  // final UserRepository userRepository;

  // CRONTRUCTOR
  // SignInController({
  //   required this.authRepository,
  //   required this.userRepository,
  // });
  final authenticationRepository = getIt.get<AuththenticationRepository>();

  // OBSERVABLES
  var loginState = LoginState.initial.obs;
  var isShowPassword = false.obs;
  var shouldPop = true.obs;

  // TEXT CONTROLLER
  final phoneTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  // GO TO SIGN UP SCREEN
  void goToSignUpScreen() => Get.offAllNamed(AppRouter.signUpScreen);

  @override
  void dispose() {
    super.dispose();
    phoneTextController.dispose();
    passwordTextController.dispose();
  }

  // SIGN IN WITH GOOGLE
  Future<void> loginWithGoogle() async {
    // signInState(SignInState.loading);
    // var baseResponse = await authRepository.signInWithGoogle();
    // if (baseResponse.statusAction == StatusAction.success) {
    //   Get.offAllNamed(Routers.bottomBarScreen);
    // }
    // showSnackBar(
    //   context: Get.context,
    //   message: baseResponse.message,
    //   color: baseResponse.statusAction == StatusAction.success
    //       ? Colors.green
    //       : Colors.red,
    // );
    // signInState(SignInState.initial);
  }

  // SIGN IN WITH EMAIL PASSWORD
  Future<void> signInWithPhone() async {
    FocusManager.instance.primaryFocus?.unfocus();
    loginState(LoginState.loading);
    LoginRequest loginRequest = LoginRequest(
      phone: phoneTextController.text,
      password: passwordTextController.text,
    );
    BaseResponse baseResponse =
        await authenticationRepository.loginByPhone(loginRequest);
    if (baseResponse.statusCode >= 200 && baseResponse.statusCode < 300) {
      // Get.offAllNamed(Routers.bottomBarScreen);
      log(" LOGIN OK");
      log(baseResponse.data.toString());
    }
    // showSnackBar(
    //   context: Get.context,
    //   message: baseResponse.message,
    //   color: baseResponse.statusAction == StatusAction.success
    //       ? Colors.green
    //       : Colors.red,
    // );
    loginState(LoginState.initial);
  }

  // SET PASSWORD VISIBLE/ INVISIBLE
  void setIsShowPassword() => isShowPassword(!isShowPassword.value);
}
