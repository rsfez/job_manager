import 'package:flutter/material.dart';
import 'package:job_manager/data/domain/mark_model.dart';
import 'package:job_manager/data/skills/skill.dart';
import 'package:job_manager/design/colors.dart';
import 'package:job_manager/widget/mark.dart';
import 'package:job_manager/widget/trend_image.dart';

import '../design/dimensions.dart';
import '../design/text.dart';

enum Highlight { none, important, crucial }
enum HighlightTarget { thumb, background }

const Map<HighlightTarget, Map<Highlight, Color>> highlightColors = {
  HighlightTarget.thumb: {
    Highlight.none: Colors.transparent,
    Highlight.important: Color(secondaryYellow),
    Highlight.crucial: Color(heatOrange),
  },
  HighlightTarget.background: {
    Highlight.none: Colors.transparent,
    Highlight.important: Color(secondaryYellowBackground),
    Highlight.crucial: Color(heatOrangeBackground),
  },
};

class SkillRow extends StatelessWidget {
  final Skill skill;
  final Highlight highlight;

  const SkillRow({Key? key, required this.skill, required this.highlight})
      : super(key: key);

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Container(
          color: highlightColors[HighlightTarget.background]![highlight],
          child: Padding(
            padding: const EdgeInsets.only(right: spacing4),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    width: spacing1,
                    color: highlightColors[HighlightTarget.thumb]![highlight],
                  ),
                  const SizedBox(width: spacing2),
                  Expanded(
                      child: Padding(
                    padding:
                        const EdgeInsets.only(top: spacing1, bottom: spacing1),
                    child: p3(text: skill.name),
                  )),
                  TrendImage(trend: skill.trend),
                  const SizedBox(width: spacing5),
                  SizedBox(
                      width: spacing7,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Mark(model: MarkModel(mark: skill.mark)))),
                ]),
          ),
        ),
      );
}
