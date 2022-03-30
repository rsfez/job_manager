import 'package:flutter/widgets.dart';
import 'package:job_manager/widget/star_icon.dart';

class RatingRow extends StatelessWidget {
  static const int maxRating = 5;

  final double rating;

  StarIcon iconBuilder(context, index) {
    StarKind kind = StarKind.full;
    if (rating - rating.floor() > 0 && index - 1 == rating.floor()) {
      kind = StarKind.half;
    } else if (index > rating) {
      kind = StarKind.empty;
    }
    return StarIcon(kind: kind);
  }

  const RatingRow({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 16,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: iconBuilder,
            shrinkWrap: true,
            itemCount: maxRating),
      );
}
