part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial({
    @Default(LoginParams()) LoginParams params,
    @Default(false) bool isSubmitted,
    @Default('') String errorMessage,
  }) = _LoginState;
}
