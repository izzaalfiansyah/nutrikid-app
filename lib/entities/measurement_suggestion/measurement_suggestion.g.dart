// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeasurementSuggestion _$MeasurementSuggestionFromJson(
  Map<String, dynamic> json,
) => _MeasurementSuggestion(
  id: (json['id'] as num?)?.toInt() ?? 0,
  measurementId: (json['measurement_id'] as num?)?.toInt(),
  measurement:
      json['measurement'] == null
          ? null
          : Measurement.fromJson(json['measurement'] as Map<String, dynamic>),
  creatorId: (json['creator_id'] as num?)?.toInt(),
  creator:
      json['creator'] == null
          ? null
          : Profile.fromJson(json['creator'] as Map<String, dynamic>),
  advice: json['advice'] as String? ?? '',
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$MeasurementSuggestionToJson(
  _MeasurementSuggestion instance,
) => <String, dynamic>{
  'id': instance.id,
  'measurement_id': instance.measurementId,
  'measurement': instance.measurement,
  'creator_id': instance.creatorId,
  'creator': instance.creator,
  'advice': instance.advice,
  'created_at': instance.createdAt?.toIso8601String(),
};
