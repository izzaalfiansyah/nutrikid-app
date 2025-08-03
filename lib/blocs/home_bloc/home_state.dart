part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(Student()) Student student,
    @Default(false) bool isLoading,
  }) = _HomeState;
}
