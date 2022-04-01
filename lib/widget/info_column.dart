import 'package:flutter/widgets.dart';
import 'package:job_manager/design/text.dart';

import '../data/person.dart';
import '../design/dimensions.dart';
import 'info_row.dart';

class InfoColumn extends StatelessWidget {
  final Person person;

  const InfoColumn({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  child: Image.asset(
                'assets/images/person.png',
                width: 100,
                semanticLabel: "Picture of ${person.fullName}",
              )),
              const Spacer(),
              Flexible(
                  child: Image.asset(
                'assets/images/company.png',
                width: 60,
                semanticLabel:
                    "Logo of ${person.companies.currentCompany.name}",
              ))
            ],
          ),
          const SizedBox(height: spacing3),
          h2Yellow(text: person.fullName),
          InfoRow(
            label: "Current level",
            rating: person.ratings.current,
          ),
          InfoRow(
            label: "Potential",
            rating: person.ratings.potential,
          ),
        ],
      );
}
