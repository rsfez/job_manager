// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      fullName: json['full_name'] as String,
      currentRole: Role.fromJson(json['current_role'] as Map<String, dynamic>),
      previousRoles: (json['previous_roles'] as List<dynamic>)
          .map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'current_role': instance.currentRole,
      'previous_roles': instance.previousRoles,
      'current_company': instance.currentCompany,
      'previous_companies': instance.previousCompanies,
      'skill_sets': instance.skillSets,
    };
