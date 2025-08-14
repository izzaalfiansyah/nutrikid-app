part of 'history_bloc.dart';

@freezed
abstract class HistoryState with _$HistoryState {
  const factory HistoryState.initial({
    @Default(0) int total,
    @Default([]) List<Measurement> measurements,
    Measurement? currentMeasurement,
    @Default(1) int page,
    @Default(false) bool isLoading,
    @Default(false) bool isCurrentLoading,
  }) = _HistoryState;
}
