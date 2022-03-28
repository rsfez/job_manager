import 'package:flutter/material.dart';
import 'package:job_manager/design/dimensions.dart';
import 'package:job_manager/design/text.dart';

import '../data/domain/header_model.dart';

class Header extends AppBar {
  final HeaderModel model;

  Header({Key? key, required this.model})
      : super(
            key: key,
            backgroundColor: Color(model.backgroundColor),
            titleSpacing: 0.0,
            title: Padding(
              padding: const EdgeInsets.only(left: appLeftPadding),
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
