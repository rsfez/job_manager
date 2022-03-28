// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      name: json['name'] as String,
      primaryColor: json['primary_color'] as String,
      alternateColor: json['alternate_color'] as String? ?? whiteString,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'name': instance.name,
      'primary_color': instance.primaryColor,
      'alternate_color': instance.alternateColor,
    };
