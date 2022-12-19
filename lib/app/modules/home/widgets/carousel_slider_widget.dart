import 'package:carousel_slider/carousel_slider.dart';
import 'package:thaonhushop_flutter/app/core/utils/export.dart';
import 'package:thaonhushop_flutter/app/modules/home/controller/home_controller.dart';

class CarouselSliderWidget extends GetWidget<HomeController> {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = controller.imgList
        .map((item) => ClipRRect(
                child: Stack(children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
            ])))
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
