import 'package:carousel_slider/carousel_controller.dart';

import '../../../core/utils/export.dart';

class HomeController extends GetxController {
  // final AuthRepository authRepository;
  // HomeController({required this.authRepository});

  var scrollController = ScrollController();
  var pageViewController = PageController();
  var current = 0.obs;
  CarouselController carouselController = CarouselController();
  var imgList = [
    'https://i.pinimg.com/originals/2a/81/e2/2a81e2453541de46f122b9a791530c98.jpg',
    'https://i.pinimg.com/originals/1b/67/55/1b67558f6b8f256942a037f21a60c508.jpg',
    'https://media.gq.com/photos/58ac8110fe394a37d8fa72d0/master/pass/GQ-Selects-March-Hero.jpg',
    'https://www.thefashionisto.com/wp-content/uploads/2016/03/GQ-Selects-Mr-Porter-April-2016-River-Viiperi.jpg'
  ].obs;

  @override
  void onInit() {
    scrollController.addListener(() {});
    super.onInit();
  }

  // var user = user_entity.User().obs;
  Future<void> loadMore() async {
    // controller.loadMore(true);
    await Future.delayed(const Duration(seconds: 2));
    // controller.loadMore(false);
  }
}
