import '../../../core/utils/export.dart';
import 'carousel_slider_widget.dart';
import 'indicator_slider_widget.dart';

class FlexibleSpaceBarWidget extends StatelessWidget {
  const FlexibleSpaceBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      // scroll vertical
      collapseMode: CollapseMode.pin,
      background: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.network(
              "https://media.istockphoto.com/id/1063375198/vector/abstract-gray-gradient-color-background.jpg?s=612x612&w=0&k=20&c=fvqiWFmN4Jw_uUAnbJcOWN4ULigrS6ZGCHs72eEY88Q=",
              fit: BoxFit.cover,
              height: 240.h,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 240.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.9),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 180.h,
              child: Stack(
                children: const [
                  Positioned.fill(child: CarouselSliderWidget()),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: IndicatorSliderWidget(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
