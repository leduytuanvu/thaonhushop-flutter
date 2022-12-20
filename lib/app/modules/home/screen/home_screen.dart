import 'package:thaonhushop_flutter/app/modules/home/controller/home_controller.dart';
import 'package:thaonhushop_flutter/app/modules/home/widgets/leading_sliver_app_bar_widget.dart';
import 'package:thaonhushop_flutter/app/modules/home/widgets/list_action_sliver_app_bar_widget.dart';
import 'package:thaonhushop_flutter/app/modules/home/widgets/list_category_widget.dart';
import '../../../core/utils/export.dart';
import '../widgets/flexible_space_bar_widget.dart';
import '../widgets/title_sliver_app_bar_widget.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: 10.h,
      onRefresh: () async {},
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey.shade400,
            pinned: true,
            snap: false,
            floating: false,
            centerTitle: true,
            expandedHeight: 240.h,
            leading: const LeadingSliverAppBarWidget(),
            actions: ListActionSliverAppBarWidget().listAction(),
            titleSpacing: 2.w,
            title: const TitleSliverAppBarWidget(),
            flexibleSpace: const FlexibleSpaceBarWidget(),
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 10.h),
                Container(
                  color: Colors.orange,
                  child: Row(
                    children: const [
                      Text("SALE"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 240.0.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          color: Colors.green,
                          width: 180.0.h,
                          child: Column(
                            children: [
                              Image.network(
                                "https://picsum.photos/250?image=9",
                              ),
                              Text("Item $index"),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10.h)
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 10.h),
                Container(
                  color: Colors.orange,
                  child: Row(
                    children: const [
                      Text("HOT"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 140.0.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          color: Colors.green,
                          width: 220.0.h,
                          child: Image.network(
                            "https://picsum.photos/250?image=9",
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10.h)
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 10.h),
                Container(
                  color: Colors.orange,
                  child: Row(
                    children: const [
                      Text("Brand"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 100.0.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          color: Colors.green,
                          width: 100.0.h,
                          child: Image.network(
                            "https://picsum.photos/250?image=9",
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10.h)
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: ListCategoryWidget(),
          ),
          // SliverFixedExtentList(
          //   itemExtent: 100.0,
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         color: index.isEven ? Colors.amber[200] : Colors.blue[200],
          //       );
          //     },
          //     childCount: 10,
          //   ),
          // ),

          // SliverFillRemaining(
          //   hasScrollBody: false,
          //   child: Container(
          //     color: Colors.orange[300],
          //     child: Padding(
          //       padding: const EdgeInsets.all(50.0),
          //       child: ListView.builder(
          //         shrinkWrap: true,
          //         itemCount: 100,
          //         itemBuilder: (context, index) {
          //           return Text(
          //             "Item $index",
          //             style: const TextStyle(fontSize: 20),
          //           );
          //         },
          //       ),
          //     ),
          //   ),
          // ),

          // SliverFillViewport(

          //   delegate: SliverChildListDelegate(

          //     [

          //     Container(
          //       height: 200,
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.green[300],
          //       child: const Text('Sound of screams but the'),
          //     ),
          //     Container(
          //       height: 200,
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.green[400],
          //       child: const Text('Who scream'),
          //     ),
          //     Container(
          //       height: 200,
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.green[500],
          //       child: const Text('Revolution is coming...'),
          //     ),
          //     Container(
          //       height: 200,
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.green[600],
          //       child: const Text('Revolution, they...'),
          //     ),
          //   ]),
          //   viewportFraction: 1.0,
          // ),
          // SliverList(

          //   delegate: SliverChildBuilderDelegate(

          //     (BuildContext context, int index) {
          //       return Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           color: index % 2 == 0 ? Colors.green : Colors.greenAccent,
          //           height: 80,
          //           alignment: Alignment.center,
          //           child: Text(
          //             "Item $index",
          //             style: const TextStyle(fontSize: 30),
          //           ),
          //         ),
          //       );
          //     },
          //     // 40 list items
          //     childCount: 40,
          //   ),
          // ),

          SliverPadding(
            padding: const EdgeInsets.all(0),
            sliver: SliverGrid.count(
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
