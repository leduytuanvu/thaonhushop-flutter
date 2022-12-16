import 'package:thaonhushop_flutter/app/core/utils/export.dart';

class ThemeController extends GetxController {
  var themeMode = ThemeMode.light.obs;

  void changeThemeMode() {
    if (themeMode.value == ThemeMode.light) {
      themeMode(ThemeMode.dark);
    } else {
      themeMode(ThemeMode.light);
    }
    update();
  }
}
