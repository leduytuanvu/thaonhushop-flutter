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
    'https://img.freepik.com/free-psd/horizontal-banner-online-fashion-sale_23-2148585404.jpg?w=2000',
    'https://img.freepik.com/free-psd/horizontal-banner-template-online-fashion-sale_23-2148585405.jpg?w=2000',
    'https://img.freepik.com/free-psd/fashion-store-template-banner_23-2148707242.jpg?w=2000',
    'https://img.freepik.com/free-psd/fashion-store-banner-template_23-2148707241.jpg?w=2000',
    'https://img.freepik.com/free-psd/fashion-model-banner-template_23-2148858371.jpg?w=2000',
    'https://img.freepik.com/free-vector/spring-sale-banner-with-photo-hand-drawn-flowers_1188-295.jpg?w=2000'
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
