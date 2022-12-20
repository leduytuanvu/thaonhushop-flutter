import '../../../core/utils/export.dart';

class LeadingSliverAppBarWidget extends StatelessWidget {
  const LeadingSliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 8),
      child: Image.network(
        "https://dw0i2gv3d32l1.cloudfront.net/uploads/stage/stage_image/22445/optimized_large_thumb_stage.jpg",
      ),
    );
  }
}
