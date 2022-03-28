import 'package:flutter/material.dart';
import 'package:job_manager/widget/home.dart';

import 'data/person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Person person = Person.empty();

  // final Person person = const Person(fullName: "Robin Sfez", roles: <Role>[
  //   Role(name: 'Software engineer')
  // ], companies: <Company>[
  // Company(name: "Mercari", primaryColor: '0xff6975ec)
  //     ], skillSets: <SkillSet>[
  //       SkillSet(name: "Engineering", skills: <Skill>[
  //         Skill(name: "Accessibility", mark: 15),
  //         Skill(name: "Algorithms", mark: 12, trend: Trend.good),
  //         Skill(name: "Android", mark: 16, trend: Trend.terrible),
  //         Skill(name: "API Design", mark: 17),
  //         Skill(name: "Architecture", mark: 18),
  //         Skill(name: "Automation", mark: 13),
  //         Skill(name: "Clean Code", mark: 16),
  //         Skill(name: "Databases", mark: 13),
  //         Skill(name: "Flutter", mark: 8, trend: Trend.superb),
  //         Skill(name: "iOS", mark: 6),
  //         Skill(name: "ReactJS", mark: 12, trend: Trend.good),
  //         Skill(name: "Ruby on Rails", mark: 11),
  //         Skill(name: "Security", mark: 11),
  //         Skill(name: "Testing", mark: 17),
  //       ]),
  //       SkillSet(name: "Soft Skills", skills: <Skill>[
  //         Skill(name: "Code review", mark: 17),
  //         Skill(name: "Deadline management", mark: 18),
  //         Skill(name: "Feedback", mark: 16),
  //         Skill(name: "Hiring", mark: 18),
  //         Skill(name: "Initiative", mark: 13),
  //         Skill(name: "Leadership", mark: 16, trend: Trend.poor),
  //         Skill(name: "Mentorship", mark: 18),
  //         Skill(name: "Motivation", mark: 14, trend: Trend.poor),
  //         Skill(name: "Multitasking", mark: 11, trend: Trend.good),
  //         Skill(name: "Project management", mark: 15),
  //         Skill(name: "Remote working", mark: 4, trend: Trend.terrible),
  //         Skill(name: "Reporting", mark: 13),
  //         Skill(name: "Scrum", mark: 17),
  //         Skill(name: "Technical writing", mark: 15, trend: Trend.good),
  //       ]),
  //       SkillSet(name: "Android Specific", skills: <Skill>[
  //         Skill(name: "Background work", mark: 14),
  //         Skill(name: "Dagger", mark: 15),
  //         Skill(name: "Gradle", mark: 14),
  //         Skill(name: "Kotlin", mark: 16),
  //         Skill(name: "Layout", mark: 17),
  //         Skill(name: "Lifecycle", mark: 16),
  //         Skill(name: "Material Design", mark: 14),
  //         Skill(name: "Theming", mark: 15),
  //       ]),
  //       SkillSet(name: "Languages", skills: <Skill>[
  //         Skill(name: "English", mark: 18),
  //         Skill(name: "French", mark: 20),
  //         Skill(name: "Japanese", mark: 6),
  //       ]),
  //     ]);

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: person.fullName,
        theme: ThemeData(),
        home: const Home(),
      );
}
