part of 'statistic_bloc.dart';

class StatisticChart {
  final String label;
  final double height;
  final double weight;
  final double bmi;
  final double zScore;
  final MeasurementStatus status;
  final int year;
  final int month;
  final int totalMonth;

  StatisticChart({
    required this.label,
    required this.height,
    required this.weight,
    required this.bmi,
    required this.zScore,
    required this.status,
    required this.year,
    required this.month,
    required this.totalMonth,
  });
}

@freezed
abstract class StatisticState with _$StatisticState {
  const factory StatisticState.initial({
    @Default([]) List<StatisticChart> measurementData,
    @Default(false) bool isLoading,
  }) = _StatisticState;
}
