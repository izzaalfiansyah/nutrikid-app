part of 'measurement_suggestion_bloc.dart';

@freezed
abstract class MeasurementSuggestionEvent with _$MeasurementSuggestionEvent {
  const factory MeasurementSuggestionEvent.load({required int measurementId}) =
      _LoadMeasurementSuggestions;
}
