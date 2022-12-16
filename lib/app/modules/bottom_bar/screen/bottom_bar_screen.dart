import 'dart:developer';

import 'package:flutter/rendering.dart';
import 'package:thaonhushop_flutter/app/core/config/app_icon.dart';
import 'package:thaonhushop_flutter/app/modules/bottom_bar/controller/bottom_bar_controller.dart';
import 'package:thaonhushop_flutter/app/modules/home/screen/home_screen.dart';
import '../../../core/utils/export.dart';
import '../widgets/icon_bottom_widget.dart';

class BottomBarScreen extends GetWidget<BottomBarController> {
  const BottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var listScreen = [
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            NotificationListener<UserScrollNotification>(
              onNotification: (scrollController) {
                if (scrollController.metrics.pixels ==
                    scrollController.metrics.maxScrollExtent) {
                } else {
                  log('${scrollController.metrics.pixels}');
                  log('${scrollController.metrics.maxScrollExtent}');
                }
                if (scrollController.direction == ScrollDirection.reverse) {
                  controller.isVisible.value = false;
                }
                if (scrollController.direction == ScrollDirection.forward) {
                  controller.isVisible.value = true;
                }
                return true;
              },
              child: Obx(
                () => IndexedStack(
                  index: controller.indexSelect.value,
                  children: listScreen,
                ),
              ),
              // Obx(
              //   () => IndexedStack(
              //     index: controller.indexSelect.value,
              //     children: listScreen,
              //   ),
              // ),
            ),
            Positioned(
              // duration: const Duration(milliseconds: 200),
              // bottom: controller.isVisible.value ? 0.0 : -56.h,
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    height: 55.0.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconBottomWidget(
                          index: 0,
                          icon: AppIcon.home,
                          lable: 'Home',
                        ),
                        IconBottomWidget(
                          index: 1,
                          icon: AppIcon.home,
                          lable: 'Search',
                        ),
                        IconBottomWidget(
                          index: 2,
                          icon: AppIcon.home,
                          lable: 'Message',
                        ),
                        IconBottomWidget(
                          index: 3,
                          icon: AppIcon.home,
                          lable: 'Home',
                        ),
                        IconBottomWidget(
                          index: 4,
                          icon: AppIcon.home,
                          lable: 'Profile',
                        ),
                      ],
                    ),
                  ),
                  // Obx(() {
                  //   return Get.find<ProfileController>()
                  //               .updateProfileState
                  //               .value ==
                  //           UpdateProfileState.loading
                  //       ? Positioned.fill(
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               color: Colors.black.withOpacity(0.6),
                  //             ),
                  //             height: double.infinity,
                  //             width: double.infinity,
                  //           ),
                  //         )
                  //       : const SizedBox.shrink();
                  // }),
                  // Obx(() {
                  //   return Get.find<ProfileController>().signOutState.value ==
                  //           SignOutState.loading
                  //       ? Positioned.fill(
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               // color: Colors.black.withOpacity(0.9),
                  //               color: Colors.black.withOpacity(0.6),
                  //             ),
                  //             height: double.infinity,
                  //             width: double.infinity,
                  //           ),
                  //         )
                  //       : const SizedBox.shrink();
                  // })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
