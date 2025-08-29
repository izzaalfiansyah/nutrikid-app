import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/blocs/statistic_bloc/statistic_bloc.dart';
import 'package:nutrikid_app/components/app/statistic_chart_widget.dart';
import 'package:nutrikid_app/shared/variant.dart';
import 'package:nutrikid_app/components/panel.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  final statisticBloc = Modular.get<StatisticBloc>();
  final historyBloc = Modular.get<HistoryBloc>();
  final appBloc = Modular.get<AppBloc>();

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
          child: BlocBuilder<AppBloc, AppState>(
            bloc: appBloc,
            builder: (context, appState) {
              return BlocBuilder<HistoryBloc, HistoryState>(
                bloc: historyBloc,
                builder: (context, historyState) {
                  if (historyState.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: VariantColor.primary,
                      ),
                    );
                  }

                  return Column(
                    children: [
                      if (historyState.measurements.isNotEmpty)
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("BMI", textAlign: TextAlign.left),
                              SizedBox(height: 12),
                            ],
                          ),
                        ),
                      Expanded(child: StatisticChartWidget()),
                      if (historyState.measurements.isNotEmpty)
                        Text('Umur (Bulan)'),
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

  Widget chartLegend({required Color color, required String label}) {
    return Row(
      spacing: 5,
      children: [CircleAvatar(radius: 5, backgroundColor: color), Text(label)],
    );
  }
}
