import 'package:flutter/widgets.dart';
import 'package:job_manager/data/person.dart';
import 'package:job_manager/data/roles/role.dart';
import 'package:job_manager/widget/roles_column.dart';
import 'package:job_manager/widget/skill_set_column.dart';

import '../design/dimensions.dart';
import '../design/screen.dart';
import 'info_column.dart';

class Panels extends StatefulWidget {
  final Person person;

  const Panels({Key? key, required this.person}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PanelsState();
}

class _PanelsState extends State<Panels> {
  Role? selectedRole;

  onRoleSelected(Role? role) {
    setState(() {
      selectedRole = role;
    });
  }

  @override
  Widget build(BuildContext context) => RowOrScrollableColumn(
        children: <Widget>[
          Flexible(
              child: Padding(
                  padding:
                      const EdgeInsets.only(left: spacing4, right: spacing4),
                  child: InfoColumn(person: widget.person))),
          Flexible(
            flex: 3,
            child: Column(
              children: [
                Row(children: getSkillSets()),
                RolesColumn(
                  roles: widget.person.roles,
                  onRoleSelected: onRoleSelected,
                ),
              ],
            ),
          ),
        ],
      );

  List<Widget> getSkillSets() => [
        if (widget.person.skills.firstSet != null)
          Flexible(
            child: SkillSetColumn(
                skillSet: widget.person.skills.firstSet!,
                selectedRole: selectedRole),
          ),
        if (widget.person.skills.secondSet != null)
          Flexible(
            child: SkillSetColumn(
                skillSet: widget.person.skills.secondSet!,
                selectedRole: selectedRole),
          ),
        Flexible(
          child: Column(
            children: [
              SkillSetColumn(
                  skillSet: widget.person.roles.currentRole.specificSkills,
                  selectedRole: selectedRole),
              const SizedBox(height: spacing5),
              if (widget.person.skills.miscSet != null)
                SkillSetColumn(skillSet: widget.person.skills.miscSet!),
            ],
          ),
        ),
      ];
}
