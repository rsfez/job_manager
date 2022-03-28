import 'package:job_manager/data/skills/skill_set.dart';
import 'package:json_annotation/json_annotation.dart';

part 'skills.g.dart';

@JsonSerializable()
class Skills {
  @JsonKey(name: 'first_set')
  final SkillSet? firstSet;
  @JsonKey(name: 'second_set')
  final SkillSet? secondSet;
  @JsonKey(name: 'misc_set')
  final SkillSet? miscSet;

  Skills({this.firstSet, this.secondSet, this.miscSet});

  factory Skills.fromJson(Map<String, dynamic> json) => _$SkillsFromJson(json);
}
