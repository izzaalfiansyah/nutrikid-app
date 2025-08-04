// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurements_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeasurementsResponse _$MeasurementsResponseFromJson(
  Map<String, dynamic> json,
) => _MeasurementsResponse(
  total: (json['total'] as num?)?.toInt() ?? 0,
  measurements:
      (json['measurements'] as List<dynamic>?)
          ?.map((e) => Measurement.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$MeasurementsResponseToJson(
  _MeasurementsResponse instance,
) => <String, dynamic>{
  'total': instance.total,
  'measurements': instance.measurements,
};
