import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_manager/design/colors.dart';
import 'package:job_manager/design/dimensions.dart';
import 'package:job_manager/widget/header.dart';
import 'package:job_manager/widget/skill_set_column.dart';

import '../data/domain/header_model.dart';
import '../data/person.dart';
import 'info_column.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<Person> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/data.json');
    var jsonMap = json.decode(jsonText);
    return Person.fromJson(jsonMap);
  }

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
      future: loadJsonData(),
      builder: (BuildContext context, AsyncSnapshot<Person> snapshot) {
        if (!snapshot.hasData) return const Scaffold();
        var person = snapshot.data!;
        return Scaffold(
          backgroundColor: const Color(primaryBlue),
          appBar: Header(
            model: HeaderModel(
                backgroundColor: int.parse(person.currentCompany.primaryColor),
                textColor: int.parse(person.currentCompany.alternateColor),
                fullName: person.fullName,
                roleName: person.roles[0].name,
                companyName: person.currentCompany.name),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: appLeftPadding),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: spacing3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: InfoColumn(person: person),
                    ),
                    SizedBox(
                      width: 240,
                      child: SkillSetColumn(skillSet: person.skillSets[0]),
                    ),
                    SizedBox(
                      width: 240,
                      child: SkillSetColumn(skillSet: person.skillSets[1]),
                    ),
                    SizedBox(
                      width: 240,
                      child: Column(
                        children: [
                          SkillSetColumn(skillSet: person.skillSets[2]),
                          const SizedBox(height: spacing5),
                          SkillSetColumn(skillSet: person.skillSets[3]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
