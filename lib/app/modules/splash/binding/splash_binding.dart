import 'package:thaonhushop_flutter/app/modules/bottom_bar/controller/bottom_bar_controller.dart';
import 'package:thaonhushop_flutter/app/modules/splash/controller/splash_controller.dart';
import '../../../core/utils/export.dart';
import '../../login/controller/login_controller.dart';
import '../../register/controller/register_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => BottomBarController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => RegisterController());
  }
}
