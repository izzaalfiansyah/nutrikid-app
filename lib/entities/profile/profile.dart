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

  const Profile._();

  String get letterName {
    try {
      final names = name.split(' ');

      if (names.length > 1) {
        return names[0][0] + names[1][0];
      }

      return names[0][0] + names[0][1];
    } catch (e) {
      return 'NK';
    }
  }

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
