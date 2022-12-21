import 'package:lottie/lottie.dart';

import '../../../core/config/app_color.dart';
import '../../../core/config/app_icon.dart';
import '../../../core/utils/export.dart';
import '../../../widgets/custom_text_field_widget.dart';
import '../../../widgets/gradient_button_widget.dart';
import '../controller/login_controller.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return controller.shouldPop.value;
      },
      child: Scaffold(
        backgroundColor: AppColor.primary,
        body: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Lottie.asset(
                      'assets/lotties/funny1.json',
                      height: 250.w,
                      width: 250.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: CustomTextFieldWidget(
                        hint: 'Phone',
                        function: () {},
                        icon: null,
                        controller: controller.emailTextController,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: Obx(
                        () => CustomTextFieldWidget(
                          hint: 'Password',
                          controller: controller.passwordTextController,
                          obscureText:
                              controller.isShowPassword.value ? false : true,
                          function: () => controller.setIsShowPassword(),
                          icon: controller.isShowPassword.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: GradientButtonWidget(
                        fontSize: 15.sp,
                        title: 'SIGN IN',
                        function: () {
                          controller.signInWithEmailPassword();
                        },
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You do not have account.',
                          style: TextStyle(
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                            color: Colors.black45,
                            fontSize: 15.sp,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.goToSignUpScreen();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            // height: 30.h,
                            color: Colors.transparent,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 15.h),
                              child: Text(
                                'Sign up now',
                                style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  color: AppColor.buttonRadient3,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'or sign in with',
                      style: TextStyle(
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        color: Colors.white10,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async =>
                              await controller.signInWithGoogle(),
                          child: Container(
                            color: Colors.transparent,
                            height: 45.w,
                            width: 45.w,
                            child: Padding(
                              padding: EdgeInsets.all(6.0.w),
                              child: Image.asset(
                                AppIcon.signInGoogle,
                              ),
                            ),
                          ),
                        ),
                        // ),
                      ],
                    ),
                    SizedBox(height: 120.h),
                  ],
                ),
              ),
            ),
            Obx(() => SizedBox(
                  child: controller.signInState.value == SignInState.loading
                      ? Container(
                          height: size.height,
                          width: size.width,
                          color: Colors.black.withOpacity(0.6),
                          child: Center(
                            child: Lottie.asset(
                              'assets/lotties/loading.json',
                              height: 250.w,
                              width: 250.w,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ))
          ],
        ),
      ),
    );
  }
}
