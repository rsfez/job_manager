import 'package:flutter/widgets.dart';
import 'package:job_manager/design/text.dart';

import '../data/person.dart';

class InfoColumn extends StatelessWidget {
  final Person person;

  const InfoColumn({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Row(
            children: [
              Column(
                children: [],
              )
            ],
          ),
          h2Yellow(text: person.fullName)
        ],
      );
}
