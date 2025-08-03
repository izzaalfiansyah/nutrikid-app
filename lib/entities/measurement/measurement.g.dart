// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Measurement _$MeasurementFromJson(Map<String, dynamic> json) => _Measurement(
  id: (json['id'] as num?)?.toInt() ?? 0,
  studentId: (json['student_id'] as num?)?.toInt(),
  student:
      json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
  studentAge: (json['student_age'] as num?)?.toInt() ?? 0,
  studentWeight: (json['student_weight'] as num?)?.toInt() ?? 0,
  studentHeight: (json['student_height'] as num?)?.toInt() ?? 0,
  studentBmi: (json['student_bmi'] as num?)?.toInt() ?? 0,
  creatorId: (json['creator_id'] as num?)?.toInt(),
  creator:
      json['creator'] == null
          ? null
          : Profile.fromJson(json['creator'] as Map<String, dynamic>),
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
  deltedAt:
      json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$MeasurementToJson(_Measurement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'student': instance.student,
      'student_age': instance.studentAge,
      'student_weight': instance.studentWeight,
      'student_height': instance.studentHeight,
      'student_bmi': instance.studentBmi,
      'creator_id': instance.creatorId,
      'creator': instance.creator,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deltedAt?.toIso8601String(),
    };
