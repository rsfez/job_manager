// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ratings _$RatingsFromJson(Map<String, dynamic> json) => Ratings(
      current: (json['current'] as num).toDouble(),
      potential: (json['potential'] as num).toDouble(),
    );

Map<String, dynamic> _$RatingsToJson(Ratings instance) => <String, dynamic>{
      'current': instance.current,
      'potential': instance.potential,
    };
