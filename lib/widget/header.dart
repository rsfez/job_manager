import 'package:flutter/material.dart';
import 'package:job_manager/design/dimensions.dart';
import 'package:job_manager/design/text.dart';

import '../data/domain/header_model.dart';
import '../design/screen.dart';

class Header extends AppBar {
  final HeaderModel model;
  final BuildContext context;

  Header({Key? key, required this.model, required this.context})
      : super(
            key: key,
            backgroundColor: Color(model.backgroundColor),
            titleSpacing:
                isDesktop(context) ? 0.0 : NavigationToolbar.kMiddleSpacing,
            title: Padding(
              padding: EdgeInsets.only(
                  left: isDesktop(context) ? appLeftPadding : 0),
              child: Column(
                children: <Widget>[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        headerTitle(
                            text: model.getTitle(),
                            color: Color(model.textColor)),
                        const SizedBox(width: spacing3),
                        headerText(
                            text: model.getSubtitle(),
                            color: Color(model.textColor))
                      ]),
                  const SizedBox(height: spacing5),
                ],
              ),
            ));
}
