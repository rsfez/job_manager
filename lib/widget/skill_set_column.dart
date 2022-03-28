import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_manager/data/skill_set.dart';
import 'package:job_manager/design/dimensions.dart';
import 'package:job_manager/design/text.dart';
import 'package:job_manager/widget/skill_row.dart';

class SkillSetColumn extends StatelessWidget {
  final SkillSet skillSet;

  SkillRow skillItemBuilder(context, index) => SkillRow(
        skill: skillSet.skills[index],
      );

  const SkillSetColumn({Key? key, required this.skillSet}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          h4Yellow(text: skillSet.name),
          ListView.separated(
            itemBuilder: skillItemBuilder,
            itemCount: skillSet.skills.length,
            scrollDirection: Axis.vertical,
            separatorBuilder: (context, index) => const SizedBox(
              height: spacing1,
            ),
            shrinkWrap: true,
          )
        ],
      );
}
