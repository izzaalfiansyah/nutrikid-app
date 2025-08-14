part of 'history_bloc.dart';

@freezed
abstract class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.loadMeasurement({int? page, bool? isReset}) =
      _LoadMeasurement;

  const factory HistoryEvent.deleteMeasurement({required int id}) =
      _DeleteMeasurement;

  const factory HistoryEvent.addMeasurement({
    required int height,
    required int weight,
  }) = _AddMeasurement;

  const factory HistoryEvent.loadMeasurementDetail({required int id}) =
      _LoadMeasurementDetail;
}
