part of 'app_bloc.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.initial({
    @Default([]) List<Student> students,
    @Default(0) int studentTotal,
    @Default(true) bool isStudentLoading,
  }) = _AppState;
}
