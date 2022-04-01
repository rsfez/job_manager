import 'package:job_manager/data/skills/skill_set.dart';
import 'package:json_annotation/json_annotation.dart';

part 'role.g.dart';

@JsonSerializable()
class Role {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'rating')
  final double rating;
  @JsonKey(name: 'specific_skills')
  final SkillSet specificSkills;
  @JsonKey(name: 'important_skills')
  final List<String> importantSkills;
  @JsonKey(name: 'crucial_skills')
  final List<String> crucialSkills;

  const Role(
      {required this.name,
      required this.rating,
      required this.specificSkills,
      required this.importantSkills,
      required this.crucialSkills});

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  factory Role.empty() => Role(
      name: '',
      rating: 0.0,
      specificSkills: SkillSet.empty(),
      importantSkills: [],
      crucialSkills: []);
}
