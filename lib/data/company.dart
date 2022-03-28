import 'package:json_annotation/json_annotation.dart';

import '../design/colors.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'primary_color')
  final String primaryColor;
  @JsonKey(name: 'alternate_color')
  final String alternateColor;

  const Company(
      {required this.name,
      required this.primaryColor,
      this.alternateColor = whiteString});

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  factory Company.empty() =>
      Company(name: '', primaryColor: primaryBlue.toString());
}
