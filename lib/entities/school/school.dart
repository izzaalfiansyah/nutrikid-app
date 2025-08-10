import 'package:freezed_annotation/freezed_annotation.dart';

part 'school.freezed.dart';
part 'school.g.dart';

@freezed
abstract class School with _$School {
  const factory School({@Default(0) int id, @Default('') String name}) =
      _School;

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
}
