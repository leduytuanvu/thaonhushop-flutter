import 'package:thaonhushop_flutter/app/modules/bottom_bar/binding/bottom_bar_binding.dart';
import 'package:thaonhushop_flutter/app/modules/bottom_bar/screen/bottom_bar_screen.dart';
import 'package:thaonhushop_flutter/app/modules/home/binding/home_binding.dart';
import 'package:thaonhushop_flutter/app/modules/home/screen/home_screen.dart';
import 'package:thaonhushop_flutter/app/modules/splash/binding/splash_binding.dart';
import 'package:thaonhushop_flutter/app/modules/splash/screen/splash_screen.dart';
import 'package:thaonhushop_flutter/app/routes/routers.dart';

import '../core/utils/export.dart';

class AppPage {
  AppPage._();

  static final allPage = [
    GetPage(
      name: AppRouter.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    // GetPage(
    //   name: Routers.signInScreen,
    //   page: () => const SignInScreen(),
    //   binding: SignInBinding(),
    // ),
    // GetPage(
    //   name: Routers.signUpScreen,
    //   page: () => const SignUpScreen(),
    //   binding: SignUpBinding(),
    // ),
    GetPage(
      name: AppRouter.bottomBarScreen,
      page: () => const BottomBarScreen(),
      binding: BottomBarBinding(),
    ),
    GetPage(
      name: AppRouter.homeScreen,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: Routers.searchScreen,
    //   page: () => const SearchScreen(),
    //   binding: SearchBinding(),
    // ),
    // GetPage(
    //   name: Routers.profileScreen,
    //   page: () => const ProfileScreen(),
    //   binding: ProfileBinding(),
    // ),
    // GetPage(
    //   name: Routers.messageScreen,
    //   page: () => const MessageScreen(),
    //   binding: MessageBinding(),
    // ),
    // GetPage(
    //   name: Routers.createPostScreen,
    //   page: () => const CreatePostScreen(),
    //   binding: CreatePostBinding(),
    // ),
    // GetPage(
    //   name: Routers.viewOtherProfileScreen,
    //   page: () => ViewOtherProfileScreen(),
    //   binding: ViewOtherProfileBinding(),
    // ),
    // GetPage(
    //   name: Routers.notifyScreen,
    //   page: () => const NotifyScreen(),
    //   binding: NotifyBinding(),
    // ),
  ];
}
