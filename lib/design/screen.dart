import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class Breakpoints {
  static const double mobile = 480.0;
  static const double desktop = 840.0;
}

bool isMobile(BuildContext context) => ResponsiveWrapper.of(context).isMobile;

bool isDesktop(BuildContext context) => ResponsiveWrapper.of(context).isDesktop;

// ResponsiveRowColumnType getRowOrColumn(BuildContext context) =>
//     isDesktop(context)
//         ? ResponsiveRowColumnType.ROW
//         : ResponsiveRowColumnType.COLUMN;

class RowOrScrollableColumn extends StatelessWidget {
  final List<Widget> children;

  const RowOrScrollableColumn({Key? key, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return Row(children: children);
    }

    return SingleChildScrollView(
        child: Column(children: children, mainAxisSize: MainAxisSize.min));
  }
}
