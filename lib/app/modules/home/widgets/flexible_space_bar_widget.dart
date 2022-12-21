import 'package:thaonhushop_flutter/app/modules/home/widgets/indicator_slider_widget.dart';
import 'package:thaonhushop_flutter/app/modules/home/widgets/title_sliver_app_bar_widget.dart';

import '../../../core/utils/export.dart';
import 'carousel_slider_widget.dart';

class FlexibleSpaceBarWidget extends StatelessWidget {
  const FlexibleSpaceBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      // scroll vertical
      collapseMode: CollapseMode.pin,
      expandedTitleScale: 1,
      titlePadding: EdgeInsets.zero,
      title: const TitleSliverAppBarWidget(),
      background: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CarouselSliderWidget(),
          ),
          Positioned(
            bottom: 45.h,
            left: 0,
            right: 0,
            child: const IndicatorSliderWidget(),
          ),
        ],
      ),
    );
  }
}
