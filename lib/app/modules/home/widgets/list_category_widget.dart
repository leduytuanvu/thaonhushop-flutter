import '../../../core/utils/export.dart';
import '../controller/home_controller.dart';

class ListCategoryWidget extends GetWidget<HomeController> {
  const ListCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0).copyWith(top: 30),
          child: SizedBox(
            height: 230.h,
            // color: Colors.yellowAccent,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 5,
              children: <Widget>[
                for (int i = 0; i < 13; i++) ...{
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          color: i % 2 == 0 ? Colors.red : Colors.blue,
                        ),
                        width: 50.h,
                        height: 50.h,
                      ),
                      Text(
                        "Category $i",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  )
                }
              ],
            ),
          ),
        ),
        SizedBox(height: 6.h),
      ],
    );
  }
}
