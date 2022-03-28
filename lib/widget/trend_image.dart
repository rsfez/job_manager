import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_manager/data/skills/skill.dart';

class TrendImage extends StatelessWidget {
  final Trend trend;

  const TrendImage({Key? key, required this.trend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (trend) {
      case Trend.none:
        return const SizedBox();
      case Trend.superb:
        return Image.asset(
          'images/trend/superb.png',
          semanticLabel: 'Trend: superb',
        );
      case Trend.good:
        return Image.asset('images/trend/good.png',
            semanticLabel: 'Trend: good');
      case Trend.poor:
        return Image.asset('images/trend/poor.png',
            semanticLabel: 'Trend: poor');
      case Trend.terrible:
        return Image.asset('images/trend/terrible.png',
            semanticLabel: 'Trend: terrible');
    }
  }
}
