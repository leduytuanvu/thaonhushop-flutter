import 'package:carousel_slider/carousel_slider.dart';
import 'package:thaonhushop_flutter/app/core/utils/export.dart';
import 'package:thaonhushop_flutter/app/modules/home/controller/home_controller.dart';

class CarouselSliderWidget extends GetWidget<HomeController> {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = controller.imgList
        .map((item) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 1000.0,
                        height: 152.h,
                      ),
                    ),
                  ]),
                ),
              ),
            ))
        .toList();

    return CarouselSlider(
      items: imageSliders,
      carouselController: controller.carouselController,
      options: CarouselOptions(
        aspectRatio: 2,
        autoPlay: true,
        viewportFraction: 1,
        onPageChanged: (index, reason) {},
      ),
    );
  }
}
