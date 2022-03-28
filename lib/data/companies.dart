import 'package:job_manager/data/company.dart';
import 'package:job_manager/data/role.dart';
import 'package:json_annotation/json_annotation.dart';

part 'companies.g.dart';

@JsonSerializable()
class Companies {
  @JsonKey(name: 'current_company')
  final Company currentCompany;
  @JsonKey(name: 'previous_companies')
  final List<Company> previousCompanies;

  Companies({required this.currentCompany, required this.previousCompanies});

  factory Companies.fromJson(Map<String, dynamic> json) =>
      _$CompaniesFromJson(json);

  factory Companies.empty() => Companies(
      currentCompany: Company.empty(), previousCompanies: <Company>[]);
}
