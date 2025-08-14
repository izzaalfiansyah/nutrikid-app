import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/entities/measurement_suggestion/measurement_suggestion.dart';
import 'package:nutrikid_app/services/measurement_service.dart';

part 'measurement_suggestion_events.dart';
part 'measurement_suggestion_state.dart';

part 'measurement_suggestion_bloc.freezed.dart';

class MeasurementSuggestionBloc
    extends Bloc<MeasurementSuggestionEvent, MeasurementSuggestionState> {
  final measurementService = Modular.get<MeasurementService>();

  MeasurementSuggestionBloc() : super(MeasurementSuggestionState.initial()) {
    on<MeasurementSuggestionEvent>((event, emit) async {
      if (event is _LoadMeasurementSuggestions) {
        emit(state.copyWith(isLoading: true, errorMessage: ''));

        try {
          final result = await measurementService.getMeasurementSuggestion(
            measurementId: event.measurementId,
          );

          emit(state.copyWith(suggestions: result));
        } catch (err) {
          emit(
            state.copyWith(
              errorMessage: "Terjadi kesalahan saat mengambil data saran",
            ),
          );
        }

        emit(state.copyWith(isLoading: false));
      }

      if (event is _StoreMeasurementSuggestion) {
        emit(state.copyWith(isSubmitting: true));

        try {
          final appBloc = Modular.get<AppBloc>();
          final creator = appBloc.state.profile;
          final result = await measurementService.storeSuggestion(
            advice: event.advice,
            measurementId: event.measurementId,
          );

          if (result) {
            emit(
              state.copyWith(
                suggestions: [
                  ...state.suggestions,
                  MeasurementSuggestion(
                    measurementId: event.measurementId,
                    creator: creator,
                    creatorId: creator!.id,
                    advice: event.advice,
                    createdAt: DateTime.now().toUtc(),
                  ),
                ],
              ),
            );
            add(
              MeasurementSuggestionEvent.load(
                measurementId: event.measurementId,
              ),
            );
          }

          if (event.callback != null) {
            event.callback!();
          }

          Modular.get<AppBloc>().add(
            AppEvent.showAlert(message: "Saran berhasil tersimpan"),
          );
        } catch (err) {
          Modular.get<AppBloc>().add(
            AppEvent.showAlert(
              message: "Terjadi kesalahan saat memberikan saran",
            ),
          );
        }

        emit(state.copyWith(isSubmitting: true));
      }
    });
  }
}
