import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:thaonhushop_flutter/app/core/language/translation_key.dart';
import 'package:thaonhushop_flutter/app/core/services/local_storage.dart';
import 'package:thaonhushop_flutter/app/core/theme/theme_constant.dart';
import 'package:thaonhushop_flutter/app/core/theme/theme_controller.dart';
import 'package:thaonhushop_flutter/app/core/utils/dependency.dart';
import 'package:thaonhushop_flutter/app/modules/splash/binding/splash_binding.dart';
import 'package:thaonhushop_flutter/app/routes/pages.dart';
import 'package:thaonhushop_flutter/app/routes/routers.dart';
import 'app/core/utils/export.dart';

initServices() async {
  log('STARTING SERVICES ...');
  await Get.putAsync(() => LocalStorage.init());
  log('ALL SERVICE STARTED ...');
}

Future main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyCreator.init();
  // await Firebase.initializeApp();
  await initServices();
  runApp(const ThaoNhuShop());
}

class ThaoNhuShop extends StatelessWidget {
  const ThaoNhuShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          defaultTransition: Transition.upToDown,
          transitionDuration: const Duration(milliseconds: 300),
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: Get.find<ThemeController>().themeMode.value,
          debugShowCheckedModeBanner: false,
          translations: TranslationKey(),
          locale: const Locale("en", "US"),
          fallbackLocale: const Locale("en", "US"),
          initialRoute: AppRouter.splashScreen,
          initialBinding: SplashBinding(),
          getPages: AppPage.allPage,
          scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
        );
      },
    );
  }
}
