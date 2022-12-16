import 'package:thaonhushop_flutter/app/core/utils/export.dart';

class TranslationController extends GetxController {
  void changeLanguage(var param1, var param2) {
    var locale = Locale(param1, param2);
    Get.updateLocale(locale);
  }
}
