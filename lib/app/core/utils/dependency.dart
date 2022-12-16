import 'package:thaonhushop_flutter/app/core/language/translation_controller.dart';
import 'package:thaonhushop_flutter/app/core/theme/theme_controller.dart';
import 'package:thaonhushop_flutter/app/core/utils/export.dart';

class DependencyCreator {
  static init() {
    // Get.lazyPut(() => AuthAPI(dioClient: Get.find()));
    // Get.lazyPut(() => AuthRepository(authAPI: Get.find()));
    // Get.lazyPut(() => DioClient(Get.find()));
    // Get.lazyPut(() => Dio());
    // Get.put(() => HomeController(authRepository: Get.find()));
    Get.put(ThemeController());
    Get.put(TranslationController());
  }
}
