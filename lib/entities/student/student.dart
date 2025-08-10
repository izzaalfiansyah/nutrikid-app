import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/gender/gender.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/entities/school/school.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
abstract class Student with _$Student {
  const Student._();

  const factory Student({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'birth_date') DateTime? birthDate,
    @Default(Gender.l) Gender gender,
    @JsonKey(name: 'school_id') int? schoolId,
    School? school,
    Measurement? measurement,
    @Default(0) int age,
    @Default(0) @JsonKey(name: 'age_month') int ageMonth,
    @Default(0) @JsonKey(name: 'age_month_total') int ageMonthTotal,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}
