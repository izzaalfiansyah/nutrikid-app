import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
import 'package:nutrikid_app/blocs/statistic_bloc/statistic_bloc.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/services/measurement_service.dart';

part 'history_events.dart';
part 'history_state.dart';

part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final statisticBloc = Modular.get<StatisticBloc>();
  final appBloc = Modular.get<AppBloc>();
  final homeBloc = Modular.get<HomeBloc>();

  HistoryBloc() : super(HistoryState.initial()) {
    on<HistoryEvent>((event, emit) async {
      if (event is _LoadMeasurement) {
        emit(state.copyWith(isLoading: true));

        if (event.isReset == true) {
          emit(state.copyWith(measurements: []));
        }

        try {
          final isReset = state.measurements.isEmpty;
          final result =
              await Modular.get<MeasurementService>().getMeasurements();

          emit(
            state.copyWith(
              total: result.total,
              measurements: [...state.measurements, ...result.measurements],
            ),
          );

          if (isReset) {
            statisticBloc.add(StatisticEvent.load());
          }
        } catch (e) {
          // do nothing;
        }

        emit(state.copyWith(isLoading: false));
      }

      if (event is _DeleteMeasurement) {
        try {
          await Modular.get<MeasurementService>().deleteMeasurement(event.id);

          emit(
            state.copyWith(
              measurements:
                  state.measurements
                      .where((measurement) => measurement.id != event.id)
                      .toList(),
            ),
          );

          homeBloc.add(HomeEvent.loadStudent());

          statisticBloc.add(StatisticEvent.load());

          appBloc.add(
            AppEvent.showAlert(
              message: "Berhasil menghapus pengukuran terpilih",
            ),
          );
        } catch (err) {
          appBloc.add(
            AppEvent.showAlert(message: "Gagal menghapus pengukuran"),
          );
        }
      }

      if (event is _LoadMeasurementDetail) {
        emit(state.copyWith(isCurrentLoading: true));
        try {
          final result = await Modular.get<MeasurementService>()
              .getMeasurementDetail(event.id);

          emit(state.copyWith(currentMeasurement: result));
        } catch (err) {
          appBloc.add(
            AppEvent.showAlert(message: "Gagal mengambil data pengukuran"),
          );
        }
        emit(state.copyWith(isCurrentLoading: false));
      }
    });
  }
}
