import 'package:job_manager/data/skills/skill.dart';
import 'package:json_annotation/json_annotation.dart';

part 'skill_set.g.dart';

@JsonSerializable()
class SkillSet {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'skills')
  final List<Skill> skills;

  const SkillSet({required this.name, required this.skills});

  factory SkillSet.fromJson(Map<String, dynamic> json) =>
      _$SkillSetFromJson(json);
}
