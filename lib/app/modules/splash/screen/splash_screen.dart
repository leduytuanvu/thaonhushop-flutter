import 'package:lottie/lottie.dart';
import 'package:thaonhushop_flutter/app/core/config/app_lottie.dart';
import 'package:thaonhushop_flutter/app/modules/splash/controller/splash_controller.dart';
import '../../../core/config/app_color.dart';
import '../../../core/utils/export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(
        child: Container(
          child: Lottie.asset(
            AppLottie.loading,
            height: 250.w,
            width: 250.w,
          ),
        ),
      ),
    );
  }
}
