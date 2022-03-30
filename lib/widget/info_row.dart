import 'package:flutter/widgets.dart';
import 'package:job_manager/design/text.dart';
import 'package:job_manager/widget/rating_row.dart';

class InfoRow extends StatelessWidget {
  final String label;
  final double rating;

  const InfoRow({Key? key, required this.label, required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Row(children: <Widget>[
        h4Yellow(text: label),
        const Spacer(),
        RatingRow(
          rating: rating,
        )
      ]);
}
