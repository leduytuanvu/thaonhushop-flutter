import 'package:thaonhushop_flutter/app/data/repositories/authentication_repository.dart';

import '../../../core/utils/dependency_injection.dart';
import '../../../core/utils/export.dart';
import '../../../domain/requests/register_request.dart';
import '../../../routes/routers.dart';

enum RegisterState {
  initial,
  loading,
}

class RegisterController extends GetxController {
  var registerState = RegisterState.initial.obs;
  var isShowPassword = false.obs;

  // final AuththenticationRepository authenticationRepository;
  // RegisterController({
  //   required this.authenticationRepository,
  // });
  final authenticationRepository = getIt.get<AuththenticationRepository>();

  final phoneTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final rePasswordTextController = TextEditingController();

  void goToSignInScreen() => Get.toNamed(AppRouter.signInScreen);

  @override
  void dispose() {
    super.dispose();
    phoneTextController.dispose();
    passwordTextController.dispose();
    rePasswordTextController.dispose();
  }

  Future<void> registerAccountByPhone() async {
    FocusManager.instance.primaryFocus?.unfocus();
    registerState(RegisterState.loading);
    RegisterRequest request = RegisterRequest(
      phone: phoneTextController.text,
      password: passwordTextController.text,
      rePassword: rePasswordTextController.text,
    );
    var response =
        await authenticationRepository.registerAccountByPhone(request);

    // if (response.statusCode >= 200 && response.statusCode < 300) {
    response.toString();
    // }
    // showSnackBar(
    //   context: Get.context,
    //   message: response.message,
    //   color: response.statusAction == StatusAction.success
    //       ? Colors.green
    //       : Colors.red,
    // );
    registerState(RegisterState.initial);
  }
}
