import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    });
  }
}
