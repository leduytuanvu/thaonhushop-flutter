import '../../../core/utils/export.dart';

class HomeController extends GetxController {
  // final AuthRepository authRepository;
  // HomeController({required this.authRepository});

  var scrollController = ScrollController();

  // var user = user_entity.User().obs;
  Future<void> loadMore() async {
    // controller.loadMore(true);
    await Future.delayed(const Duration(seconds: 2));
    // controller.loadMore(false);
  }
}
