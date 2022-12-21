import '../../../core/utils/export.dart';
import '../../bottom_bar/controller/bottom_bar_controller.dart';
import '../controller/register_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => BottomBarController());
  }
}
