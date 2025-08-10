import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/role/role.dart';
import 'package:nutrikid_app/entities/school/school.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String username,
    @Default('') String phone,
    @Default(ProfileRole.teacher) ProfileRole role,
    @JsonKey(name: 'school_id') int? schoolId,
    School? school,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Profile;

  const Profile._();

  bool get isTeacher => role == ProfileRole.teacher;

  bool get isExpert => role == ProfileRole.expert || role == ProfileRole.admin;

  bool get isParent => false;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
