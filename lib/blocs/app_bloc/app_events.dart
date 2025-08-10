part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.loadStudent() = _LoadStudent;

  const factory AppEvent.loadProfile({
    void Function(Profile? profile)? callback,
  }) = _LoadProfile;

  const factory AppEvent.logout({@Default(true) bool redirect}) = _Logout;

  const factory AppEvent.selectStudent(Student student) = _SelectStudent;

  const factory AppEvent.showAlert({required String message}) = _ShowAlert;

  const factory AppEvent.setProfile(Profile profile) = _SetProfile;

  const factory AppEvent.loadSchool() = _LoadSchool;

  const factory AppEvent.selectSchool(School school) = _SelectSchool;
}
