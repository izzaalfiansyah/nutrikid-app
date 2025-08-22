import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/blocs/statistic_bloc/statistic_bloc.dart';
import 'package:nutrikid_app/entities/z_score/z_score.dart';
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

class StatisticChartWidget extends StatelessWidget {
  StatisticChartWidget({super.key});

  final statisticBloc = Modular.get<StatisticBloc>();

  late final TrackballBehavior trackballBehavior = TrackballBehavior(
    enable: true,
    activationMode: ActivationMode.singleTap,
    tooltipSettings: InteractiveTooltip(
      enable: true,
      color: VariantColor.muted,
    ),
    builder: (context, trackballDetails) {
      final data =
          statisticBloc.state.measurementData[trackballDetails.pointIndex!];

      return Container(
        decoration: BoxDecoration(
          color: VariantColor.muted,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Umur : ${data.year} Tahun ${data.month} Bulan',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
            Text(
              'Tinggi (cm) : ${data.height.toStringAsFixed(2)}',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
            Text(
              'Berat (kg) : ${data.weight.toStringAsFixed(2)}',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
            Text(
              'BMI : ${data.bmi.toStringAsFixed(2)}',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
            Text(
              'Z-Score : ${data.zScore.toStringAsFixed(2)}',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
            Text(
              'Status : ${data.status.name}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: data.status.color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    },
  );

  final MarkerSettings markerSettings = MarkerSettings(
    isVisible: true,
    borderWidth: 3,
    height: 10,
    width: 10,
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: Modular.get<AppBloc>(),
      builder: (context, appState) {
        return BlocBuilder<StatisticBloc, StatisticState>(
          bloc: statisticBloc,
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(color: VariantColor.primary),
              );
            }

            if (state.measurementData.isEmpty) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    LucideIcons.barChart2,
                    size: 100,
                    color: VariantColor.border,
                  ),
                  Center(
                    child: Text(
                      'Belum ada data pengukuran',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: VariantColor.muted,
                      ),
                    ),
                  ),
                ],
              );
            }

            var defaultZScores =
                appState.defaultZScores
                    .where((zScore) => zScore.month <= 8 * 12)
                    .map((zScore) {
                      return zScore.copyWith(
                        zScoresRange: [
                          zScore.zScoresRange.first.copyWith(
                            min: zScore.zScoresRange.first.min - .125,
                            max: zScore.zScoresRange.first.min,
                          ),
                          ...zScore.zScoresRange,
                          zScore.zScoresRange.last.copyWith(
                            min: zScore.zScoresRange.last.max,
                            max: zScore.zScoresRange.last.max + .125,
                          ),
                        ],
                      );
                    })
                    .toList();

            final names = [
              '< -3',
              '-3',
              '-2',
              '1',
              '0',
              '+1',
              "+2",
              "+3",
              "> +3",
            ];

            final colors = [
              Colors.red,
              Colors.yellow,
              Colors.green,
              Colors.green,
              Colors.green,
              Colors.green,
              Colors.yellow,
              Colors.red,
              Colors.red,
            ];

            return SfCartesianChart(
              primaryXAxis: CategoryAxis(
                interval: 6,
                majorGridLines: MajorGridLines(color: Colors.transparent),
              ),
              primaryYAxis: NumericAxis(minimum: 10),
              trackballBehavior: trackballBehavior,
              // tooltipBehavior: tooltipBehavior,
              series: <CartesianSeries>[
                ...List.generate(9, (index) {
                  final name = names[index];
                  final color = colors[index];

                  return RangeAreaSeries<ZScore, String>(
                    dataSource: defaultZScores,
                    enableTrackball: false,
                    xValueMapper: (data, _) => data.month.toString(),
                    lowValueMapper: (data, _) => data.zScoresRange[index].min,
                    highValueMapper: (data, _) => data.zScoresRange[index].max,
                    color: color.withAlpha(135),
                    borderWidth: 0,
                    // markerSettings: markerSettings,
                    name: "$name SD",
                  );
                }),
                SplineSeries<StatisticChart, String>(
                  dataSource: state.measurementData,
                  xValueMapper: (data, _) => data.totalMonth.toString(),
                  yValueMapper: (data, _) => data.bmi,
                  color: VariantColor.primary,
                  markerSettings: markerSettings,
                  name: "IMT",
                ),
              ],
            );
          },
        );
      },
    );
  }
}
