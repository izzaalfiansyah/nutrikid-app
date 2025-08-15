import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
import 'package:nutrikid_app/services/measurement_service.dart';

part 'add_measurement_state.dart';

part 'add_measurement_cubit.freezed.dart';

class AddMeasurementCubit extends Cubit<AddMeasurementState> {
  AddMeasurementCubit() : super(const AddMeasurementState.initial());

  final appBloc = Modular.get<AppBloc>();
  final homeBloc = Modular.get<HomeBloc>();
  final historyBloc = Modular.get<HistoryBloc>();

  void changeState(AddMeasurementState state) {
    emit(state);
  }

  store({Function()? callback}) async {
    emit(state.copyWith(errorMessage: "", isLoading: true));

    try {
      await Modular.get<MeasurementService>().addMeasurement(
        height: state.height,
        weight: state.weight,
        createdAt: state.createdAt,
      );

      homeBloc.add(HomeEvent.loadStudent());
      historyBloc.add(HistoryEvent.loadMeasurement(isReset: true));

      appBloc.add(
        AppEvent.showAlert(message: "Berhasil menyimpan data pengukuran"),
      );

      if (callback != null) {
        callback();
      }
    } catch (err) {
      emit(
        state.copyWith(
          errorMessage: "Terjadi kesalahan. Silahkan periksa data anda.",
        ),
      );
    }

    emit(state.copyWith(isLoading: false));
  }
}
