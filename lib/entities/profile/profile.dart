import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/role/role.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'user_id') @Default('') String userId,
    @Default('') String email,
    @Default('') String phone,
    @Default(ProfileRole.teacher) ProfileRole role,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
