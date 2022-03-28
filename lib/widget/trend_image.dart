import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_manager/data/skill.dart';

class TrendImage extends StatelessWidget {
  final Trend trend;

  const TrendImage({Key? key, required this.trend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (trend) {
      case Trend.none:
        return const SizedBox();
      case Trend.superb:
        return Image.asset('trend/superb.png');
      case Trend.good:
        return Image.asset('trend/good.png');
      case Trend.poor:
        return Image.asset('trend/poor.png');
      case Trend.terrible:
        return Image.asset('trend/terrible.png');
    }
  }
}
