import 'package:job_manager/data/company.dart';
import 'package:job_manager/data/role.dart';
import 'package:job_manager/data/skill_set.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'current_role')
  final Role currentRole;
  @JsonKey(name: 'previous_roles')
  final List<Role> previousRoles;
  @JsonKey(name: 'current_company')
  final Company currentCompany;
  @JsonKey(name: 'previous_companies')
  final List<Company> previousCompanies;
  @JsonKey(name: 'skill_sets')
  final List<SkillSet> skillSets;

  const Person(
      {required this.fullName,
      required this.currentRole,
      required this.previousRoles,
      required this.currentCompany,
      required this.previousCompanies,
      required this.skillSets});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  factory Person.empty() => Person(
      fullName: '',
      currentRole: Role.empty(),
      previousRoles: [Role.empty()],
      currentCompany: Company.empty(),
      previousCompanies: [Company.empty()],
      skillSets: []);
}
