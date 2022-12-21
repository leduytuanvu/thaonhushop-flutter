import 'package:thaonhushop_flutter/app/modules/bottom_bar/controller/bottom_bar_controller.dart';
import 'package:thaonhushop_flutter/app/modules/home/controller/home_controller.dart';
import '../../../core/utils/export.dart';
import '../../login/controller/login_controller.dart';
import '../../register/controller/register_controller.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomBarController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => RegisterController());
  }
}
