import 'package:flutter/widgets.dart';
import 'package:job_manager/data/roles/role.dart';
import 'package:job_manager/widget/role_row.dart';

import '../data/roles/roles.dart';

class RolesColumn extends StatefulWidget {
  final Roles roles;
  final Function(Role?) onRoleSelected;

  const RolesColumn(
      {Key? key, required this.roles, required this.onRoleSelected})
      : super(key: key);

  @override
  _RolesColumnState createState() => _RolesColumnState();
}

class _RolesColumnState extends State<RolesColumn> {
  int selectedIndex = -1;

  RoleRow roleBuilder(context, index) {
    var role = widget.roles.getRole(index);
    return RoleRow(
      isSelected: index == selectedIndex,
      onClick: (bool isSelected) => setState(() {
        if (isSelected) {
          selectedIndex = -1;
          widget.onRoleSelected(null);
        } else {
          selectedIndex = index;
          widget.onRoleSelected(role);
        }
      }),
      role: role,
    );
  }

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemBuilder: roleBuilder,
        itemCount: widget.roles.getLength(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
      );
}
