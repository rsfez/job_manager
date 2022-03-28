// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      name: json['name'] as String,
      specificSkills:
          SkillSet.fromJson(json['specific_skills'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'name': instance.name,
      'specific_skills': instance.specificSkills,
    };
