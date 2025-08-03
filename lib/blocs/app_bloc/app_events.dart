part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.loadStudent() = _LoadStudent;

  const factory AppEvent.loadProfile({
    void Function(Profile? profile)? callback,
  }) = _LoadProfile;

  const factory AppEvent.logout() = _Logout;

  const factory AppEvent.selectStudent(Student student) = _SelectStudent;
}
