import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/blocs/statistic_bloc/statistic_bloc.dart';
import 'package:nutrikid_app/shared/variant.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:nutrikid_app/components/panel.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  final statisticBloc = Modular.get<StatisticBloc>();
  final historyBloc = Modular.get<HistoryBloc>();

  loadData() async {
    if (historyBloc.state.measurements.isEmpty) {
      historyBloc.add(HistoryEvent.loadMeasurement(isReset: true));
    }
  }

  @override
  initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Panel(
          child: BlocBuilder<HistoryBloc, HistoryState>(
            bloc: historyBloc,
            builder: (context, historyState) {
              if (historyState.isLoading) {
                return Center(
                  child: CircularProgressIndicator(color: VariantColor.primary),
                );
              }

              return BlocBuilder<StatisticBloc, StatisticState>(
                bloc: statisticBloc,
                builder: (context, state) {
                  final statistics = state.measurementData;
                  return SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    series: <CartesianSeries>[
                      LineSeries<StatisticChart, String>(
                        dataSource: statistics,
                        xValueMapper: (StatisticChart data, _) => data.label,
                        yValueMapper: (StatisticChart data, _) => data.zScore,
                        color: Colors.green,
                      ),
                      LineSeries<StatisticChart, String>(
                        dataSource: statistics,
                        xValueMapper: (StatisticChart data, _) => data.label,
                        yValueMapper: (StatisticChart data, _) => data.bmi,
                        color: VariantColor.primary,
                      ),
                      LineSeries<StatisticChart, String>(
                        dataSource: statistics,
                        xValueMapper: (StatisticChart data, _) => data.label,
                        yValueMapper: (StatisticChart data, _) => data.height,
                        color: Colors.orange,
                      ),
                      LineSeries<StatisticChart, String>(
                        dataSource: statistics,
                        xValueMapper: (StatisticChart data, _) => data.label,
                        yValueMapper: (StatisticChart data, _) => data.weight,
                        color: Colors.red,
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
