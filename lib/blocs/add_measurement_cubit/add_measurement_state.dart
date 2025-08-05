part of 'add_measurement_cubit.dart';

@freezed
abstract class AddMeasurementState with _$AddMeasurementState {
  const factory AddMeasurementState.initial({
    @Default(false) bool isLoading,
    @Default(0.0) double height,
    @Default(0.0) double weight,
    @Default('') String errorMessage,
  }) = _AddMeasurementState;
}
