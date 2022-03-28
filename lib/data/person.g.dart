// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      fullName: json['full_name'] as String,
      roles: Roles.fromJson(json['roles'] as Map<String, dynamic>),
      companies: Companies.fromJson(json['companies'] as Map<String, dynamic>),
      skills: Skills.fromJson(json['skills'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'full_name': instance.fullName,
      'roles': instance.roles,
      'companies': instance.companies,
      'skills': instance.skills,
    };
