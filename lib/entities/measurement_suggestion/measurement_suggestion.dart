import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/entities/profile/profile.dart';

part 'measurement_suggestion.freezed.dart';
part 'measurement_suggestion.g.dart';

@freezed
abstract class MeasurementSuggestion with _$MeasurementSuggestion {
  const factory MeasurementSuggestion({
    @Default(0) int id,
    @JsonKey(name: 'measurement_id') int? measurementId,
    Measurement? measurement,
    @JsonKey(name: 'creator_id') int? creatorId,
    Profile? creator,
    @Default('') String advice,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _MeasurementSuggestion;

  factory MeasurementSuggestion.fromJson(Map<String, dynamic> json) =>
      _$MeasurementSuggestionFromJson(json);
}
