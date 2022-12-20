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
            width: 4.0,
            height: 4.0,
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 3.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.white),
            ),
          ),
        );
      }).toList(),
    );
  }
}
