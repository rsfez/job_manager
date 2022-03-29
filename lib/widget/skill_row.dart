import 'package:flutter/widgets.dart';
import 'package:job_manager/data/domain/mark_model.dart';
import 'package:job_manager/data/skills/skill.dart';
import 'package:job_manager/widget/mark.dart';
import 'package:job_manager/widget/trend_image.dart';

import '../design/dimensions.dart';
import '../design/text.dart';

class SkillRow extends StatelessWidget {
  final Skill skill;

  const SkillRow({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Container(
              //   width: spacingTiny,
              //   color: const Color(heatOrange),
              // ),
              const SizedBox(width: spacing2),
              Expanded(child: p3(text: skill.name)),
              TrendImage(trend: skill.trend),
              const SizedBox(width: spacing5),
              SizedBox(
                  width: spacing7,
                  child: Mark(model: MarkModel(mark: skill.mark))),
              const SizedBox(width: spacing4),
            ]),
      );
}
