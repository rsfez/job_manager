import 'package:flutter/widgets.dart';
import 'package:job_manager/design/text.dart';

import '../data/person.dart';
import '../design/dimensions.dart';

class InfoColumn extends StatelessWidget {
  final Person person;

  const InfoColumn({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(spacing3),
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'images/person.png',
                  semanticLabel: "Picture of ${person.fullName}",
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(spacing5),
                  child: Image.asset(
                    'images/company.png',
                    semanticLabel: "Logo of ${person.currentCompany.name}",
                  ),
                ))
              ],
            ),
          ),
          const SizedBox(height: spacing3),
          h2Yellow(text: person.fullName)
        ],
      );
}
