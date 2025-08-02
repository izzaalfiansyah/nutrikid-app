import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';

@freezed
abstract class Token with _$Token {
  const factory Token({
    @Default('') @JsonKey(name: 'access_token') String accessToken,
    @Default('') @JsonKey(name: 'refresh_token') String refreshToken,
  }) = _Token;
}
