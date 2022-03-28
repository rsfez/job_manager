// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      fullName: json['fullName'] as String,
      roles: (json['roles'] as List<dynamic>)
          .map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentCompany:
          Company.fromJson(json['currentCompany'] as Map<String, dynamic>),
      companies: (json['companies'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
      skillSets: (json['skillSets'] as List<dynamic>)
          .map((e) => SkillSet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'roles': instance.roles,
      'currentCompany': instance.currentCompany,
      'companies': instance.companies,
      'skillSets': instance.skillSets,
    };
