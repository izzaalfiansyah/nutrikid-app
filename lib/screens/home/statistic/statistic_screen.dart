import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
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

  final TrackballBehavior trackballBehavior = TrackballBehavior(
    enable: true,
    activationMode: ActivationMode.singleTap,
    tooltipSettings: InteractiveTooltip(
      enable: true,
      color: VariantColor.muted,
    ),
  );
  final MarkerSettings markerSettings = MarkerSettings(isVisible: true);

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

              return Column(
                children: [
                  Expanded(
                    child: BlocBuilder<StatisticBloc, StatisticState>(
                      bloc: statisticBloc,
                      builder: (context, state) {
                        final statistics = state.measurementData;
                        return SfCartesianChart(
                          primaryXAxis: CategoryAxis(),
                          trackballBehavior: trackballBehavior,
                          // tooltipBehavior: tooltipBehavior,
                          series: <CartesianSeries>[
                            LineSeries<StatisticChart, String>(
                              dataSource: statistics,
                              xValueMapper:
                                  (StatisticChart data, _) => data.label,
                              yValueMapper:
                                  (StatisticChart data, _) => data.zScore,
                              color: Colors.green,
                              markerSettings: markerSettings,
                              name: "Z-Score",
                            ),
                            LineSeries<StatisticChart, String>(
                              dataSource: statistics,
                              xValueMapper:
                                  (StatisticChart data, _) => data.label,
                              yValueMapper:
                                  (StatisticChart data, _) => data.bmi,
                              color: VariantColor.primary,
                              markerSettings: markerSettings,
                              name: "BMI",
                            ),
                            LineSeries<StatisticChart, String>(
                              dataSource: statistics,
                              xValueMapper:
                                  (StatisticChart data, _) => data.label,
                              yValueMapper:
                                  (StatisticChart data, _) => data.height,
                              color: Colors.orange,
                              markerSettings: markerSettings,
                              name: "Tinggi",
                            ),
                            LineSeries<StatisticChart, String>(
                              dataSource: statistics,
                              xValueMapper:
                                  (StatisticChart data, _) => data.label,
                              yValueMapper:
                                  (StatisticChart data, _) => data.weight,
                              color: Colors.red,
                              markerSettings: markerSettings,
                              name: "Berat",
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 14),
                    child: Panel(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 5,
                              children: [
                                Icon(
                                  LucideIcons.circle,
                                  color: Colors.green,
                                  size: 12,
                                ),
                                Text("Z-Score"),
                              ],
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                Icon(
                                  LucideIcons.circle,
                                  color: VariantColor.primary,
                                  size: 12,
                                ),
                                Text("BMI"),
                              ],
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                Icon(
                                  LucideIcons.circle,
                                  color: Colors.orange,
                                  size: 12,
                                ),
                                Text("Tinggi"),
                              ],
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                Icon(
                                  LucideIcons.circle,
                                  color: Colors.red,
                                  size: 12,
                                ),
                                Text("Berat"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
