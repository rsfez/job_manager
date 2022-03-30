import 'package:flutter/widgets.dart';
import 'package:job_manager/data/person.dart';
import 'package:job_manager/widget/skill_set_column.dart';

import '../design/dimensions.dart';
import '../design/screen.dart';
import 'info_column.dart';

class Panels extends StatelessWidget {
  final Person person;

  const Panels({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) => RowOrScrollableColumn(
        children: <Widget>[
          Flexible(
              child: Padding(
                  padding:
                      const EdgeInsets.only(left: spacing4, right: spacing4),
                  child: InfoColumn(person: person))),
          Flexible(
            flex: 3,
            child: Column(
              children: [
                Row(children: getSkillSets()),
              ],
            ),
          )
        ],
      );

  List<Widget> getSkillSets() => [
        if (person.skills.firstSet != null)
          Flexible(
            child: SkillSetColumn(skillSet: person.skills.firstSet!),
          ),
        if (person.skills.secondSet != null)
          Flexible(
            child: SkillSetColumn(skillSet: person.skills.secondSet!),
          ),
        Flexible(
          child: Column(
            children: [
              SkillSetColumn(skillSet: person.roles.currentRole.specificSkills),
              const SizedBox(height: spacing5),
              if (person.skills.miscSet != null)
                SkillSetColumn(skillSet: person.skills.miscSet!),
            ],
          ),
        ),
      ];
}
