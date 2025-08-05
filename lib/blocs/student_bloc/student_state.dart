part of 'student_bloc.dart';

@freezed
abstract class StudentState with _$StudentState {
  const factory StudentState.initial({
    @Default(false) bool isLoading,
    @Default(Student()) Student student,
  }) = _StudentState;
}
