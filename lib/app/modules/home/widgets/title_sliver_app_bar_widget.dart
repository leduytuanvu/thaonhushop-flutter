import '../../../core/utils/export.dart';

class TitleSliverAppBarWidget extends StatelessWidget {
  const TitleSliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 0.05),
      ),
      height: 40.h,
      child: Row(
        children: [
          SizedBox(width: 16.w),
          Text(
            "Search products",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.black26, letterSpacing: 0.2),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              alignment: Alignment.center,
              width: 40.h,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade400,
              ),
              child: const Icon(Icons.search, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
