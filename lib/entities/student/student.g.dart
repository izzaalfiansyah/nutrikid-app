// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Student _$StudentFromJson(Map<String, dynamic> json) => _Student(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  birthDate:
      json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
  gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']) ?? Gender.l,
  parentId: (json['parent_id'] as num?)?.toInt(),
  parent:
      json['parent'] == null
          ? null
          : Profile.fromJson(json['parent'] as Map<String, dynamic>),
  measurement:
      json['measurement'] == null
          ? null
          : Measurement.fromJson(json['measurement'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentToJson(_Student instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'birth_date': instance.birthDate?.toIso8601String(),
  'gender': _$GenderEnumMap[instance.gender]!,
  'parent_id': instance.parentId,
  'parent': instance.parent,
  'measurement': instance.measurement,
};

const _$GenderEnumMap = {Gender.l: 'l', Gender.p: 'p'};
