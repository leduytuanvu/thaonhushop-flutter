import '../../../core/utils/export.dart';
import '../controller/home_controller.dart';

class IndicatorSliderWidget extends GetWidget<HomeController> {
  const IndicatorSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: controller.imgList.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => controller.carouselController.animateToPage(entry.key),
          child: Container(
            width: 5.0.w,
            height: 5.0.w,
            margin: EdgeInsets.symmetric(vertical: 12.w, horizontal: 3.0.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.grey,
            ),
          ),
        );
      }).toList(),
    );
  }
}
