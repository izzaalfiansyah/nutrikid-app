import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/shared/format_date.dart';

part 'statistic_events.dart';
part 'statistic_state.dart';

part 'statistic_bloc.freezed.dart';

class StatisticBloc extends Bloc<StatisticEvent, StatisticState> {
  StatisticBloc() : super(StatisticState.initial()) {
    on<StatisticEvent>((event, emit) async {
      if (event is _LoadStatistic) {
        final historyBloc = Modular.get<HistoryBloc>();

        emit(
          state.copyWith(
            measurementData:
                historyBloc.state.measurements.map((measurement) {
                  return StatisticChart(
                    label: formatDate(measurement.createdAt!),
                    height: measurement.studentHeight,
                    weight: measurement.studentWeight,
                    bmi: measurement.studentBmi,
                    zScore: measurement.zScore,
                  );
                }).toList(),
          ),
        );
      }
    });
  }
}
