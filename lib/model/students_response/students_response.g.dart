// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentsResponse _$StudentsResponseFromJson(Map<String, dynamic> json) =>
    _StudentsResponse(
      total: (json['total'] as num?)?.toInt() ?? 0,
      students:
          (json['students'] as List<dynamic>?)
              ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Student>[],
    );
