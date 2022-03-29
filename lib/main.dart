import 'package:flutter/material.dart';
import 'package:job_manager/design/screen.dart';
import 'package:job_manager/widget/home.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'data/person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Person person = Person.empty();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(const Home(),
            minWidth: 480,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(Breakpoints.mobile,
                  name: MOBILE),
              const ResponsiveBreakpoint.resize(Breakpoints.desktop,
                  name: DESKTOP),
            ]),
        title: person.fullName,
        theme: ThemeData(),
      );
}
