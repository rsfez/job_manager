// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Companies _$CompaniesFromJson(Map<String, dynamic> json) => Companies(
      currentCompany:
          Company.fromJson(json['current_company'] as Map<String, dynamic>),
      previousCompanies: (json['previous_companies'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompaniesToJson(Companies instance) => <String, dynamic>{
      'current_company': instance.currentCompany,
      'previous_companies': instance.previousCompanies,
    };
