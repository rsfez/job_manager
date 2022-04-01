import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_manager/data/skills/skill_set.dart';
import 'package:job_manager/design/dimensions.dart';
import 'package:job_manager/design/text.dart';
import 'package:job_manager/widget/skill_row.dart';

import '../data/roles/role.dart';
import '../data/skills/skill.dart';

class SkillSetColumn extends StatelessWidget {
  final SkillSet skillSet;
  final Role? selectedRole;

  SkillRow skillItemBuilder(context, index) {
    var skill = skillSet.skills[index];
    return SkillRow(
      skill: skill,
      highlight: getHighlight(skill),
    );
  }

  const SkillSetColumn({Key? key, required this.skillSet, this.selectedRole})
      : super(key: key);

  Highlight getHighlight(Skill skill) {
    if (selectedRole == null) return Highlight.none;
    if (selectedRole!.crucialSkills.contains(skill.name)) {
      return Highlight.crucial;
    }
    if (selectedRole!.importantSkills.contains(skill.name)) {
      return Highlight.important;
    }
    return Highlight.none;
  }

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
