import 'package:flutter_svg/svg.dart';
import 'package:thaonhushop_flutter/app/modules/bottom_bar/controller/bottom_bar_controller.dart';

import '../../../core/utils/export.dart';

class IconBottomWidget extends GetWidget<BottomBarController> {
  final int index;
  final String icon;
  final String lable;
  const IconBottomWidget({
    super.key,
    required this.index,
    required this.icon,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    final realSize = MediaQuery.of(context).size.width - 16.w;
    final sizeItem = (realSize - 10) / 5;
    return GestureDetector(
      onTap: () {
        controller.indexSelect(index);
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0.r),
        ),
        duration: const Duration(milliseconds: 300),
        width: sizeItem,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 2.0.h),
            SizedBox(
              height: 18.0.h,
              width: 18.0.w,
              child: Center(
                child: Obx(
                  () => SvgPicture.asset(
                    icon,
                    color: controller.indexSelect.value == index
                        ? Colors.black87
                        : Colors.black26,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0.h),
            Obx(
              () => Text(
                lable,
                style: TextStyle(
                  fontSize: 10.0.sp,
                  color: controller.indexSelect.value == index
                      ? Colors.black87
                      : Colors.black26,
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
