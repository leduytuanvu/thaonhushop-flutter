import '../../../core/utils/export.dart';

class SearchHomeWidget extends StatelessWidget {
  const SearchHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber.shade200,
      ),
      height: 45.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(width: 15.w),
          Text(
            "Enter your search here",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.black38),
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            width: 70.w,
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green.shade200,
            ),
            child: Text(
              "Search",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
