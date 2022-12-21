import 'package:thaonhushop_flutter/app/modules/home/controller/home_controller.dart';
import 'package:thaonhushop_flutter/app/modules/home/widgets/list_category_widget.dart';
import '../../../core/utils/export.dart';
import '../widgets/flexible_space_bar_widget.dart';

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
            backgroundColor: const Color(0xFF373535),
            pinned: true,
            snap: false,
            floating: false,
            centerTitle: true,
            expandedHeight: 250.h,
            titleSpacing: 2.w,
            flexibleSpace: const FlexibleSpaceBarWidget(),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 10.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 8.w, bottom: 18.w, top: 16.w),
                      child: Row(
                        children: [
                          Text(
                            "Flash sale",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(width: 6.w),
                          Padding(
                            padding: EdgeInsets.only(top: 1.w),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18.sp,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1.w),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18.sp,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1.w),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18.sp,
                            ),
                          ),
                          const Spacer(),
                          Text("View all",
                              style: Theme.of(context).textTheme.bodyMedium),
                          SizedBox(width: 8.w),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 240.0.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: index == 0 ? 8.w : 0,
                            right: index == 9 ? 8.w : 4,
                            bottom: 10.w,
                          ),
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
                  SizedBox(height: 20.h)
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w, bottom: 10.w),
                    child: Row(
                      children: [
                        Text(
                          "Hot deal",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(width: 6.w),
                        Padding(
                          padding: EdgeInsets.only(top: 1.w),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.w),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.w),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18.sp,
                          ),
                        ),
                        const Spacer(),
                        Text("View all",
                            style: Theme.of(context).textTheme.bodyMedium),
                        SizedBox(width: 8.w),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 150.0.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? 8.w : 0,
                          right: index == 9 ? 8.w : 4,
                          bottom: 10.w,
                          top: 10.w,
                        ),
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
                SizedBox(height: 20.h)
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w, bottom: 16.w),
                    child: Row(
                      children: [
                        Text(
                          "Brand",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(width: 6.w),
                        Padding(
                          padding: EdgeInsets.only(top: 1.w),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.w),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.w),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18.sp,
                          ),
                        ),
                        const Spacer(),
                        Text("View all",
                            style: Theme.of(context).textTheme.bodyMedium),
                        SizedBox(width: 8.w),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 100.0.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? 8.w : 0,
                          right: index == 9 ? 8.w : 4,
                          top: 4.w,
                          bottom: 4.w,
                        ),
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
                SizedBox(height: 16.h)
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.w),
              child: const ListCategoryWidget(),
            ),
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
                for (int i = 0; i < 30; i++) ...{
                  Container(
                    height: 200,
                    padding: const EdgeInsets.all(8),
                    color: i % 2 == 0 ? Colors.green[100] : Colors.green[500],
                    child: const Text("He'd have you all unravel at the"),
                  ),
                }
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
