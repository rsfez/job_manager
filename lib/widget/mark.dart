import 'package:flutter/material.dart';

import '../data/domain/mark_model.dart';
import '../design/text.dart';

class Mark extends StatelessWidget {
  final MarkModel model;

  const Mark({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var markString = model.mark.toString();
    switch (model.getSkillGrade()) {
      case Grade.weak:
        return h5DarkGrey(text: markString);
      case Grade.standard:
        return h5Grey(text: markString);
      case Grade.good:
        return h5Yellow(text: markString);
      case Grade.great:
        return h5Orange(text: markString);
    }
  }
}
