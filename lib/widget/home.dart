import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_manager/design/colors.dart';
import 'package:job_manager/design/dimensions.dart';
import 'package:job_manager/widget/header.dart';
import 'package:job_manager/widget/panels.dart';

import '../data/domain/header_model.dart';
import '../data/person.dart';
import '../design/screen.dart';

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
        var currentCompany = person.companies.currentCompany;
        return Scaffold(
          backgroundColor: const Color(primaryBlue),
          appBar: Header(
            model: HeaderModel(
                backgroundColor: int.parse(currentCompany.primaryColor),
                textColor: int.parse(currentCompany.alternateColor),
                fullName: person.fullName,
                roleName: person.roles.currentRole.name,
                companyName: currentCompany.name),
            context: context,
          ),
          body: Padding(
            padding:
                EdgeInsets.only(left: isDesktop(context) ? appLeftPadding : 0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: spacing3),
                child: Panels(person: person),
              ),
            ),
          ),
        );
      });
}
