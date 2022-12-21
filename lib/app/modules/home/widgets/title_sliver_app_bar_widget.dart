import 'package:animated_text_kit/animated_text_kit.dart';

import '../../../core/utils/export.dart';

class TitleSliverAppBarWidget extends StatelessWidget {
  const TitleSliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.5.w, right: 7.5.w, bottom: 7.5.h),
      child: SizedBox(
        height: 40.h,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 0.05),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10.w),
                    Icon(
                      Icons.search,
                      color: Colors.black87,
                      size: 20.sp,
                    ),
                    SizedBox(width: 10.w),
                    AnimatedTextKit(
                      pause: const Duration(seconds: 4),
                      animatedTexts: [
                        TyperAnimatedText(
                          'Dress and shirt for man',
                          textStyle:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.black38,
                                    letterSpacing: 0.2,
                                  ),
                          speed: const Duration(milliseconds: 100),
                        ),
                        TyperAnimatedText(
                          'Shoes and bag for kids',
                          textStyle:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.black38,
                                    letterSpacing: 0.2,
                                  ),
                          speed: const Duration(milliseconds: 100),
                        ),
                        TyperAnimatedText(
                          'Hat and glasses for women',
                          textStyle:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.black38,
                                    letterSpacing: 0.2,
                                  ),
                          speed: const Duration(milliseconds: 100),
                        ),
                        TyperAnimatedText(
                          'Pants and shorts for kids',
                          textStyle:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.black38,
                                    letterSpacing: 0.2,
                                  ),
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      repeatForever: true,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: Colors.white,
                  border: Border.all(color: Colors.black87, width: 0.05),
                ),
                width: 40.w,
                height: 40.h,
                child: Icon(
                  Icons.filter_list,
                  size: 20.sp,
                  color: Colors.black87,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
