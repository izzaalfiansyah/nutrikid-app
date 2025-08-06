part of 'measurement_suggestion_bloc.dart';

@freezed
abstract class MeasurementSuggestionState with _$MeasurementSuggestionState {
  const factory MeasurementSuggestionState.initial({
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default([]) List<MeasurementSuggestion> suggestions,
    @Default('') String errorMessage,
  }) = _MeasurementSuggestionState;
}
