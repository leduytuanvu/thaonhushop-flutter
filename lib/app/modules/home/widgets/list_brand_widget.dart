import '../../../core/utils/export.dart';
import '../controller/home_controller.dart';

class ListBrandWidget extends GetWidget<HomeController> {
  const ListBrandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // color: Colors.pink,
          height: 80.h,
          child: PageView(
            controller: controller.pageViewController,
            children: <Widget>[
              for (int i = 0; i < 5; i++) ...{
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int j = 0; j < 5; j++) ...{
                      if (j == 0) SizedBox(width: 10.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: j % 2 == 0 ? Colors.red : Colors.blue,
                            ),
                            width: 50.h,
                            height: 50.h,
                          ),
                          Text(
                            "Category 1",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      if (j < 4) SizedBox(width: 10.w),
                      if (j == 4) SizedBox(width: 10.w),
                    }
                  ],
                )
              }
            ],
          ),
        ),
        SizedBox(height: 14.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: Colors.red,
              ),
              width: 10.h,
              height: 4.h,
            ),
            SizedBox(width: 4.w),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: Colors.red,
              ),
              width: 10.h,
              height: 4.h,
            ),
            SizedBox(width: 4.w),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: Colors.red,
              ),
              width: 10.h,
              height: 4.h,
            ),
          ],
        ),
      ],
    );
  }
}
