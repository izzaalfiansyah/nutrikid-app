import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';

part 'measurements_response.freezed.dart';
part 'measurements_response.g.dart';

@freezed
abstract class MeasurementsResponse with _$MeasurementsResponse {
  const factory MeasurementsResponse({
    @Default(0) int total,
    @Default([]) List<Measurement> measurements,
  }) = _MeasurementsResponse;

  factory MeasurementsResponse.fromJson(Map<String, dynamic> json) =>
      _$MeasurementsResponseFromJson(json);
}
