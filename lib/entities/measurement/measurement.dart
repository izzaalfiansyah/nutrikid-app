import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/profile/profile.dart';
import 'package:nutrikid_app/entities/student/student.dart';

part 'measurement.freezed.dart';
part 'measurement.g.dart';

@freezed
abstract class Measurement with _$Measurement {
  const factory Measurement({
    @Default(0) int id,
    @JsonKey(name: 'student_id') int? studentId,
    Student? student,
    @JsonKey(name: 'student_age') @Default(0) int studentAge,
    @JsonKey(name: 'student_weight') @Default(0) double studentWeight,
    @JsonKey(name: 'student_height') @Default(0) double studentHeight,
    @JsonKey(name: 'student_bmi') @Default(0) double studentBmi,
    @JsonKey(name: 'creator_id') int? creatorId,
    Profile? creator,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'deleted_at') DateTime? deltedAt,
  }) = _Measurement;

  const Measurement._();

  double get zScore {
    final bmi = studentBmi == 0 ? calculatedBmi : studentBmi;

    return (bmi - 16.2) / 3.67 + (0.23 * studentAge) / 10;
  }

  double get calculatedBmi {
    return studentWeight / pow(studentHeight / 100, 2);
  }

  String get status {
    if (zScore < -2) {
      return "wasted";
    } else if (zScore <= 1) {
      return "normal";
    } else if (zScore <= 3) {
      return "overweight";
    } else {
      return "obese";
    }
  }

  String get statusName {
    return {
      'wasted': "Kurus",
      'normal': "Normal",
      'overweight': "Gemuk",
      'obese': "Obesitas",
    }[status]!;
  }

  Color get statusColor {
    return {
      'wasted': Colors.red,
      'normal': Colors.green,
      'overweight': Colors.orange,
      'obese': Colors.red,
    }[status]!;
  }

  factory Measurement.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFromJson(json);
}
