part of 'statistic_bloc.dart';

class StatisticChart {
  final String label;
  final double height;
  final double weight;
  final double bmi;
  final double zScore;

  StatisticChart({
    required this.label,
    required this.height,
    required this.weight,
    required this.bmi,
    required this.zScore,
  });
}

@freezed
abstract class StatisticState with _$StatisticState {
  const factory StatisticState.initial({
    @Default([]) List<StatisticChart> measurementData,
    @Default(false) bool isLoading,
  }) = _StatisticState;
}
