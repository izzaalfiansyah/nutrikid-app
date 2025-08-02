import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/student/student.dart';

part 'students_response.freezed.dart';
part 'students_response.g.dart';

@Freezed(toJson: false)
abstract class StudentsResponse with _$StudentsResponse {
  const factory StudentsResponse({
    @Default(0) int total,
    @Default(<Student>[]) List<Student> students,
  }) = _StudentsResponse;

  factory StudentsResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentsResponseFromJson(json);
}
