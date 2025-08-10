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
  schoolId: (json['school_id'] as num?)?.toInt(),
  school:
      json['school'] == null
          ? null
          : School.fromJson(json['school'] as Map<String, dynamic>),
  measurement:
      json['measurement'] == null
          ? null
          : Measurement.fromJson(json['measurement'] as Map<String, dynamic>),
  age: (json['age'] as num?)?.toInt() ?? 0,
  ageMonth: (json['age_month'] as num?)?.toInt() ?? 0,
  ageMonthTotal: (json['age_month_total'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$StudentToJson(_Student instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'birth_date': instance.birthDate?.toIso8601String(),
  'gender': _$GenderEnumMap[instance.gender]!,
  'school_id': instance.schoolId,
  'school': instance.school,
  'measurement': instance.measurement,
  'age': instance.age,
  'age_month': instance.ageMonth,
  'age_month_total': instance.ageMonthTotal,
};

const _$GenderEnumMap = {Gender.l: 'l', Gender.p: 'p'};
