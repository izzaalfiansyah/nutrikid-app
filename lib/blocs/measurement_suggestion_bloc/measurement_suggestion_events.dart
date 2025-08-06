part of 'measurement_suggestion_bloc.dart';

@freezed
abstract class MeasurementSuggestionEvent with _$MeasurementSuggestionEvent {
  const factory MeasurementSuggestionEvent.load({required int measurementId}) =
      _LoadMeasurementSuggestions;

  const factory MeasurementSuggestionEvent.store({
    required int measurementId,
    required String advice,
    void Function()? callback,
  }) = _StoreMeasurementSuggestion;
}
