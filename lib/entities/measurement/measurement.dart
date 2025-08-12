import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/profile/profile.dart';
import 'package:nutrikid_app/entities/student/student.dart';

part 'measurement.freezed.dart';
part 'measurement.g.dart';

enum MeasurementStatus {
  emaciated,
  thinnes,
  normal,
  overweight,
  obese;

  String get name {
    switch (this) {
      case MeasurementStatus.emaciated:
        return "Gizi Buruk";
      case MeasurementStatus.thinnes:
        return 'Gizi Kurang';
      case MeasurementStatus.normal:
        return 'Gizi Baik';
      case MeasurementStatus.overweight:
        return 'Gizi Lebih';
      case MeasurementStatus.obese:
        return 'Obesitas';
    }
  }

  Color get color {
    switch (this) {
      case MeasurementStatus.emaciated:
        return Colors.red;
      case MeasurementStatus.thinnes:
        return Colors.orange;
      case MeasurementStatus.normal:
        return Colors.green;
      case MeasurementStatus.overweight:
        return Colors.orange;
      case MeasurementStatus.obese:
        return Colors.red;
    }
  }
}

@freezed
abstract class Measurement with _$Measurement {
  const factory Measurement({
    @Default(0) int id,
    @JsonKey(name: 'student_id') int? studentId,
    Student? student,
    @JsonKey(name: 'student_age') @Default(0) int studentAge,
    @JsonKey(name: 'student_age_month') @Default(0) int studentAgeMonth,
    @JsonKey(name: 'student_age_month_total')
    @Default(0)
    int studentAgeMonthTotal,
    @JsonKey(name: 'student_weight') @Default(0) double studentWeight,
    @JsonKey(name: 'student_height') @Default(0) double studentHeight,
    @JsonKey(name: 'student_bmi') @Default(0) double studentBmi,
    @JsonKey(name: 'creator_id') int? creatorId,
    Profile? creator,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'deleted_at') DateTime? deltedAt,
    @JsonKey(name: 'z_score') @Default(0) double zScore,
    @Default([])
    @JsonKey(name: 'suggestion_advices')
    List<String> suggestionAdvices,
    @Default(MeasurementStatus.normal) MeasurementStatus status,
  }) = _Measurement;

  factory Measurement.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFromJson(json);
}
