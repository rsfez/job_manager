// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillSet _$SkillSetFromJson(Map<String, dynamic> json) => SkillSet(
      name: json['name'] as String,
      skills: (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SkillSetToJson(SkillSet instance) => <String, dynamic>{
      'name': instance.name,
      'skills': instance.skills,
    };
