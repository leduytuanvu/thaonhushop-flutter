import 'package:thaonhushop_flutter/app/routes/routers.dart';

import '../../../core/utils/export.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    validateSession();
    super.onReady();
  }

  Future<void> validateSession() async {
    Future.delayed(const Duration(seconds: 2));
    // var response = LocalStorage.getUser();
    // if (response.statusAction == StatusAction.success) {
    Get.offAllNamed(AppRouter.bottomBarScreen);
    // } else {
    //   Get.offAllNamed(Routers.signInScreen);
    // }
  }
}
