import 'package:get/get.dart';
import 'package:thaonhushop_flutter/app/modules/home/controller/home_controller.dart';

import '../../login/controller/login_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => LoginController());
  }
}
