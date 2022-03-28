import 'package:job_manager/data/companies.dart';
import 'package:job_manager/data/company.dart';
import 'package:job_manager/data/roles.dart';
import 'package:job_manager/data/skill_set.dart';
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
  @JsonKey(name: 'skill_sets')
  final List<SkillSet> skillSets;

  const Person(
      {required this.fullName,
      required this.roles,
      required this.companies,
      required this.skillSets});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  factory Person.empty() => Person(
      fullName: '',
      roles: Roles.empty(),
      companies: Companies.empty(),
      skillSets: []);
}
