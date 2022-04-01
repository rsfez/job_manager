import 'package:flutter/material.dart';
import 'package:job_manager/design/colors.dart';
import 'package:job_manager/widget/rating_row.dart';

import '../data/roles/role.dart';
import '../design/dimensions.dart';
import '../design/text.dart';

class RoleRow extends StatelessWidget {
  final bool isSelected;
  final Function onClick;
  final Role role;

  const RoleRow(
      {Key? key,
      required this.isSelected,
      required this.onClick,
      required this.role})
      : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        child: Container(
          color:
              isSelected ? const Color(primaryBlueDarker) : Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(
                left: spacing1,
                right: spacing1,
                top: spacing2,
                bottom: spacing2),
            child: Row(children: [
              RatingRow(rating: role.rating),
              const SizedBox(width: spacing4),
              p3(text: role.name)
            ]),
          ),
        ),
        onTap: () {
          onClick(isSelected);
        },
      );
}
