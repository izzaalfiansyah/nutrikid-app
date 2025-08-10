import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params.freezed.dart';
part 'login_params.g.dart';

@Freezed(toJson: true)
abstract class LoginParams with _$LoginParams {
  const factory LoginParams({
    @Default('') String username,
    @Default('') String password,
  }) = _LoginParams;
}
