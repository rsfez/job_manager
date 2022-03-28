// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      fullName: json['full_name'] as String,
      roles: Roles.fromJson(json['roles'] as Map<String, dynamic>),
      currentCompany:
          Company.fromJson(json['current_company'] as Map<String, dynamic>),
      previousCompanies: (json['previous_companies'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
      skillSets: (json['skill_sets'] as List<dynamic>)
          .map((e) => SkillSet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'full_name': instance.fullName,
      'roles': instance.roles,
      'current_company': instance.currentCompany,
      'previous_companies': instance.previousCompanies,
      'skill_sets': instance.skillSets,
    };
