part of 'statistic_bloc.dart';

@freezed
abstract class StatisticEvent with _$StatisticEvent {
  const factory StatisticEvent.load() = _LoadStatistic;
}
