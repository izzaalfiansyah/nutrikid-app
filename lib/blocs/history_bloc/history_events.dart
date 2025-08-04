part of 'history_bloc.dart';

@freezed
abstract class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.loadMeasurement({int? page, bool? isReset}) =
      _LoadMeasurement;
}
