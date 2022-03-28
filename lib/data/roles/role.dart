import 'package:job_manager/data/skills/skill_set.dart';
import 'package:json_annotation/json_annotation.dart';

part 'role.g.dart';

@JsonSerializable()
class Role {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'specific_skills')
  final SkillSet specificSkills;

  const Role({required this.name, required this.specificSkills});

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  factory Role.empty() => Role(name: '', specificSkills: SkillSet.empty());
}
