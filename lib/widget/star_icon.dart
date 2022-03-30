import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_manager/design/colors.dart';

enum StarKind { full, empty, half }

const Map<StarKind, IconData> starIcons = {
  StarKind.full: Icons.star_outlined,
  StarKind.empty: Icons.star_outline_outlined,
  StarKind.half: Icons.star_half_outlined
};

class StarIcon extends StatelessWidget {
  static const double size = 16.0;

  final StarKind kind;

  const StarIcon({Key? key, required this.kind}) : super(key: key);

  @override
  Widget build(BuildContext context) => Icon(
        starIcons[kind],
        color: Color(secondaryYellow),
        size: size,
      );
}
