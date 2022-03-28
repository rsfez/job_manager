// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skill _$SkillFromJson(Map<String, dynamic> json) => Skill(
      name: json['name'] as String,
      mark: json['mark'] as int,
      trend: $enumDecodeNullable(_$TrendEnumMap, json['trend']) ?? Trend.none,
    );

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
      'name': instance.name,
      'mark': instance.mark,
      'trend': _$TrendEnumMap[instance.trend],
    };

const _$TrendEnumMap = {
  Trend.none: 'none',
  Trend.superb: 'superb',
  Trend.good: 'good',
  Trend.poor: 'poor',
  Trend.terrible: 'terrible',
};
