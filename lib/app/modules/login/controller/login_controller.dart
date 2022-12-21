import 'package:thaonhushop_flutter/app/routes/routers.dart';

import '../../../core/utils/export.dart';

// SIGN IN STATE
enum SignInState {
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

  // OBSERVABLES
  var signInState = SignInState.initial.obs;
  var isShowPassword = false.obs;
  var shouldPop = true.obs;

  // TEXT CONTROLLER
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  // GO TO SIGN UP SCREEN
  void goToSignUpScreen() => Get.offAllNamed(AppRouter.signUpScreen);

  @override
  void dispose() {
    super.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();
  }

  // SIGN IN WITH GOOGLE
  Future<void> signInWithGoogle() async {
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
  Future<void> signInWithEmailPassword() async {
    // FocusManager.instance.primaryFocus?.unfocus();
    // signInState(SignInState.loading);
    // SignInRequest signInRequest = SignInRequest(
    //   email: emailTextController.text,
    //   password: passwordTextController.text,
    // );
    // BaseResponse baseResponse =
    //     await authRepository.signInWithEmailPassword(request: signInRequest);
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

  // SET PASSWORD VISIBLE/ INVISIBLE
  void setIsShowPassword() => isShowPassword(!isShowPassword.value);
}
