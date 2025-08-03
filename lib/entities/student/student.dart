import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/gender/gender.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/entities/profile/profile.dart';

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
    @JsonKey(name: 'parent_id') int? parentId,
    Profile? parent,
    Measurement? measurement,
  }) = _Student;

  int get age {
    if (birthDate == null) {
      return 0;
    }

    return DateTime.now().difference(birthDate!).inDays ~/ 365;
  }

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}
