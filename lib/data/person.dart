import 'package:job_manager/data/companies/companies.dart';
import 'package:job_manager/data/roles/roles.dart';
import 'package:job_manager/data/skills/skill_set.dart';
import 'package:job_manager/data/skills/skills.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'roles')
  final Roles roles;
  @JsonKey(name: 'companies')
  final Companies companies;
  @JsonKey(name: 'skills')
  final Skills skills;

  const Person(
      {required this.fullName,
      required this.roles,
      required this.companies,
      required this.skills});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  factory Person.empty() => Person(
      fullName: '',
      roles: Roles.empty(),
      companies: Companies.empty(),
      skills: Skills());
}
