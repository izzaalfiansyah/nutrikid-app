// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  userId: json['user_id'] as String? ?? '',
  email: json['email'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  role:
      $enumDecodeNullable(_$ProfileRoleEnumMap, json['role']) ??
      ProfileRole.teacher,
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'user_id': instance.userId,
  'email': instance.email,
  'phone': instance.phone,
  'role': _$ProfileRoleEnumMap[instance.role]!,
  'created_at': instance.createdAt?.toIso8601String(),
};

const _$ProfileRoleEnumMap = {
  ProfileRole.admin: 'admin',
  ProfileRole.teacher: 'teacher',
  ProfileRole.parent: 'parent',
  ProfileRole.expert: 'expert',
};
