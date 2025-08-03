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
    @JsonKey(name: 'student_weight') @Default(0) int studentWeight,
    @JsonKey(name: 'student_height') @Default(0) int studentHeight,
    @JsonKey(name: 'student_bmi') @Default(0) int studentBmi,
    @JsonKey(name: 'creator_id') int? creatorId,
    Profile? creator,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'deleted_at') DateTime? deltedAt,
  }) = _Measurement;

  factory Measurement.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFromJson(json);
}
