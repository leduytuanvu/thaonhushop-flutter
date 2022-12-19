import 'package:thaonhushop_flutter/app/modules/home/controller/home_controller.dart';
import '../../../core/utils/export.dart';
import '../widgets/carousel_slider_widget.dart';
import '../widgets/indicator_slider_widget.dart';
import '../widgets/search_home_widget.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var top = 0.0;
    return RefreshIndicator(
      displacement: 10.h,
      onRefresh: () async {},
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            // toolbarHeight: 50,
            pinned: true,
            snap: false,
            floating: false,
            centerTitle: true,
            expandedHeight: 242.h,
            flexibleSpace: LayoutBuilder(
              builder: (ctx, cons) {
                top = cons.biggest.height;
                return FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding:
                      const EdgeInsets.only(bottom: 5, right: 5, left: 5),
                  title: AnimatedOpacity(
                    duration: const Duration(milliseconds: 100),
                    opacity: top <= 300 ? 1.0 : 0.0,
                    child: const SearchHomeWidget(),
                  ),
                  expandedTitleScale: 1,
                  background: Stack(
                    children: const [
                      CarouselSliderWidget(),
                      IndicatorSliderWidget(),
                    ],
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.h),
                const Text("Brand"),
                SizedBox(height: 15.h),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (int i = 0; i < 10; i++) ...{
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: i % 2 == 0 ? Colors.red : Colors.blue,
                              ),
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "Category 1",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      }
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                const Text("Category"),
                SizedBox(height: 15.h),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (int i = 0; i < 10; i++) ...{
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: i % 2 == 0 ? Colors.red : Colors.blue,
                              ),
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "Category 1",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                        const SizedBox(width: 10),
                      }
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(0),
            sliver: SliverGrid.count(
              childAspectRatio: 0.8,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[100],
                  child: const Text("He'd have you all unravel at the"),
                ),
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[300],
                  child: const Text('Sound of screams but the'),
                ),
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[400],
                  child: const Text('Who scream'),
                ),
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[500],
                  child: const Text('Revolution is coming...'),
                ),
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[600],
                  child: const Text('Revolution, they...'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Get.changeTheme(
// Get.isDarkMode ? lightTheme : darkTheme,
// );
// var themeMode = Get.find<ThemeController>().themeMode.value;
// if (themeMode == ThemeMode.dark) {
//   Get.find<ThemeController>().themeMode(ThemeMode.light);
// } else {
//   Get.find<ThemeController>().themeMode(ThemeMode.dark);
// }
