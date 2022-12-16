import 'package:thaonhushop_flutter/app/modules/home/controller/home_controller.dart';
import '../../../core/utils/export.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var top = 0.0;
    return RefreshIndicator(
      displacement: 10.h,
      onRefresh: () => controller.loadMore(),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {},
              ),
            ],
            centerTitle: true,
            expandedHeight: 250.h,
            // flexibleSpace: FlexibleSpaceBar(
            //   title: Row(
            //     children: [
            //       Container(
            //         height: 20,
            //         width: 120.w,
            //         color: Colors.green,
            //       ),
            //       Container(
            //         height: 20,
            //         width: 120.w,
            //         color: Colors.blue,
            //       ),
            //     ],
            //   ),
            //   // titlePadding: EdgeInsets.zero,
            //   centerTitle: true,
            //   background: Image.network(
            //     "https://www.creativefabrica.com/wp-content/uploads/2020/07/11/Fashion-female-dress-and-beauty-logo-Graphics-4593305-1.jpg",
            //     fit: BoxFit.cover,
            //   ),
            // ),
            flexibleSpace: LayoutBuilder(
              builder: (ctx, cons) {
                top = cons.biggest.height;
                return FlexibleSpaceBar(
                  title: AnimatedOpacity(
                    duration: const Duration(seconds: 2),
                    opacity: top <= 130 ? 1.0 : 0.0,
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 120.w,
                          color: Colors.green,
                        ),
                        Container(
                          height: 20,
                          width: 120.w,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  // titlePadding: EdgeInsets.zero,
                  centerTitle: true,
                  background: Image.network(
                    "https://www.creativefabrica.com/wp-content/uploads/2020/07/11/Fashion-female-dress-and-beauty-logo-Graphics-4593305-1.jpg",
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (ctx, i) {
                return Container(
                  height: 100,
                  color: i % 2 != 0 ? Colors.red : Colors.blue,
                  child: const Text("Hello"),
                );
              },
            ),
          )
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
