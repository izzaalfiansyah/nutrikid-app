// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  username: json['username'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  role:
      $enumDecodeNullable(_$ProfileRoleEnumMap, json['role']) ??
      ProfileRole.teacher,
  schoolId: (json['school_id'] as num?)?.toInt(),
  school:
      json['school'] == null
          ? null
          : School.fromJson(json['school'] as Map<String, dynamic>),
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'username': instance.username,
  'phone': instance.phone,
  'role': _$ProfileRoleEnumMap[instance.role]!,
  'school_id': instance.schoolId,
  'school': instance.school,
  'created_at': instance.createdAt?.toIso8601String(),
};

const _$ProfileRoleEnumMap = {
  ProfileRole.admin: 'admin',
  ProfileRole.teacher: 'teacher',
  ProfileRole.expert: 'expert',
};
