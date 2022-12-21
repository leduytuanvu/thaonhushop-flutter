import '../../../core/utils/export.dart';
import '../../../routes/routers.dart';

enum SignUpState {
  initial,
  loading,
}

class RegisterController extends GetxController {
  var signUpState = SignUpState.initial.obs;
  var isShowPassword = false.obs;

  // final UserRepository userRepository;
  // final AuthRepository authRepository;
  // SignUpController({
  //   required this.userRepository,
  //   required this.authRepository,
  // });

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final rePasswordTextController = TextEditingController();

  void goToSignInScreen() => Get.toNamed(AppRouter.signInScreen);

  @override
  void dispose() {
    super.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();
    rePasswordTextController.dispose();
  }

  Future<void> signUpWithEmailPassword() async {
    // FocusManager.instance.primaryFocus?.unfocus();
    // signUpState(SignUpState.loading);
    // SignUpRequest signUpRequest = SignUpRequest(
    //   email: emailTextController.text,
    //   password: passwordTextController.text,
    //   rePassword: rePasswordTextController.text,
    // );
    // BaseResponse baseResponse =
    //     await authRepository.signUpWithEmailPassword(request: signUpRequest);
    // if (baseResponse.statusAction == StatusAction.success &&
    //     baseResponse.data != null) {
    //   Get.offAllNamed(Routers.signInScreen);
    // }
    // showSnackBar(
    //   context: Get.context,
    //   message: baseResponse.message,
    //   color: baseResponse.statusAction == StatusAction.success
    //       ? Colors.green
    //       : Colors.red,
    // );
    // signUpState(SignUpState.initial);
  }
}
