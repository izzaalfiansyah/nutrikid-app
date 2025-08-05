part of 'student_bloc.dart';

@freezed
abstract class StudentEvent with _$StudentEvent {
  const factory StudentEvent.load() = _LoadStudent;
}
