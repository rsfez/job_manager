import 'package:json_annotation/json_annotation.dart';

part 'skill.g.dart';

enum Trend {
  none,
  @JsonValue('superb')
  superb,
  @JsonValue('good')
  good,
  @JsonValue('poor')
  poor,
  @JsonValue('terrible')
  terrible
}

@JsonSerializable()
class Skill {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'mark')
  final int mark;
  @JsonKey(name: 'trend')
  final Trend trend;

  const Skill(
      {required this.name, required this.mark, this.trend = Trend.none});

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}
