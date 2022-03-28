import 'package:job_manager/data/company.dart';
import 'package:job_manager/data/role.dart';
import 'package:job_manager/data/skill_set.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  @JsonKey(name: 'fullName')
  final String fullName;
  @JsonKey(name: 'roles')
  final List<Role> roles;
  @JsonKey(name: 'currentCompany')
  final Company currentCompany;
  @JsonKey(name: 'companies')
  final List<Company> companies;
  @JsonKey(name: 'skillSets')
  final List<SkillSet> skillSets;

  const Person(
      {required this.fullName,
      required this.roles,
      required this.currentCompany,
      required this.companies,
      required this.skillSets});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  factory Person.empty() => Person(
      fullName: '',
      roles: [Role.empty()],
      currentCompany: Company.empty(),
      companies: [Company.empty()],
      skillSets: []);
}
