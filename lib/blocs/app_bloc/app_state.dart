part of 'app_bloc.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.initial({
    @Default([]) List<Student> students,
    @Default(0) int studentTotal,
    @Default(true) bool isStudentLoading,

    // role
    @Default('') String accessToken,
    @Default('') String refreshToken,
    Profile? profile,

    // selected student
    Student? selectedStudent,

    // alert
    @Default('') String alertMessage,
  }) = _AppState;
}
