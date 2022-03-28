// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skills _$SkillsFromJson(Map<String, dynamic> json) => Skills(
      firstSet: json['first_set'] == null
          ? null
          : SkillSet.fromJson(json['first_set'] as Map<String, dynamic>),
      secondSet: json['second_set'] == null
          ? null
          : SkillSet.fromJson(json['second_set'] as Map<String, dynamic>),
      miscSet: json['misc_set'] == null
          ? null
          : SkillSet.fromJson(json['misc_set'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SkillsToJson(Skills instance) => <String, dynamic>{
      'first_set': instance.firstSet,
      'second_set': instance.secondSet,
      'misc_set': instance.miscSet,
    };
