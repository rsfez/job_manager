// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      name: json['name'] as String,
      rating: (json['rating'] as num).toDouble(),
      specificSkills:
          SkillSet.fromJson(json['specific_skills'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'specific_skills': instance.specificSkills,
    };
