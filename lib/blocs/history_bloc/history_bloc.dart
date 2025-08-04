import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/services/measurement_service.dart';

part 'history_events.dart';
part 'history_state.dart';

part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryState.initial()) {
    on<HistoryEvent>((event, emit) async {
      if (event is _LoadMeasurement) {
        emit(state.copyWith(isLoading: true));

        if (event.isReset == true) {
          emit(state.copyWith(measurements: []));
        }

        try {
          final result =
              await Modular.get<MeasurementService>().getMeasurements();

          emit(
            state.copyWith(
              total: result.total,
              measurements: [...state.measurements, ...result.measurements],
            ),
          );
        } catch (e) {
          // do nothing;
        }
        emit(state.copyWith(isLoading: false));
      }
    });
  }
}
