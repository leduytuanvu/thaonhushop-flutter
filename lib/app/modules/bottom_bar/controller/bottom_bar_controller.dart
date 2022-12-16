import 'package:flutter/rendering.dart';

import '../../../core/utils/export.dart';

class BottomBarController extends GetxController {
  var isVisible = true.obs;
  var indexSelect = 0.obs;
  final scrollController = ScrollController();

  @override
  void onInit() async {
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        isVisible.value = false;
      }
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        isVisible.value = true;
      }
    });
    super.onInit();
  }
}
