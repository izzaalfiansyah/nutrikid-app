// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'z_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZScoreRange _$ZScoreRangeFromJson(Map<String, dynamic> json) => _ZScoreRange(
  z: (json['z'] as num).toInt(),
  min: (json['min'] as num).toDouble(),
  max: (json['max'] as num).toDouble(),
);

Map<String, dynamic> _$ZScoreRangeToJson(_ZScoreRange instance) =>
    <String, dynamic>{
      'z': instance.z,
      'min': instance.min,
      'max': instance.max,
    };

_ZScore _$ZScoreFromJson(Map<String, dynamic> json) => _ZScore(
  month: (json['month'] as num).toInt(),
  zScoresRange:
      (json['z_scores_range'] as List<dynamic>?)
          ?.map((e) => ZScoreRange.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ZScoreToJson(_ZScore instance) => <String, dynamic>{
  'month': instance.month,
  'z_scores_range': instance.zScoresRange,
};
