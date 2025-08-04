import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/components/app/measurement_detail.dart';
import 'package:nutrikid_app/components/panel.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/shared/format_date.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final historyBloc = Modular.get<HistoryBloc>();

  loadMeasurements({bool? isReset = false}) {
    historyBloc.add(HistoryEvent.loadMeasurement(isReset: isReset));
  }

  @override
  void initState() {
    loadMeasurements(isReset: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: BlocBuilder<HistoryBloc, HistoryState>(
        bloc: historyBloc,
        builder: (context, state) {
          if (state.total == 0) {
            return SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    LucideIcons.history,
                    size: 80,
                    color: VariantColor.border,
                  ),
                  SizedBox(height: 14),
                  Text(
                    "Belum ada pengukuran",
                    style: TextStyle(color: VariantColor.muted),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            color: VariantColor.primary,
            onRefresh: () async {
              loadMeasurements(isReset: true);
            },
            child: SingleChildScrollView(
              padding: EdgeInsets.all(14),
              child: Container(
                constraints: BoxConstraints(
                  minHeight: SizeConfig.screenHeight! * .75,
                ),
                child: Column(
                  children: [
                    Column(
                      spacing: 12,
                      children: List.generate(state.measurements.length, (
                        index,
                      ) {
                        final measurement = state.measurements[index];
                        return measurementCard(measurement);
                      }),
                    ),
                    if (state.isLoading)
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Center(
                          child: CircularProgressIndicator(
                            color: VariantColor.primary,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget measurementCard(Measurement measurement) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          useRootNavigator: true,
          builder: (context) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(30),
              child: SafeArea(
                child: MeasurementDetail(measurement: measurement),
              ),
            );
          },
        );
      },
      child: Panel(
        child: Row(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        LucideIcons.calendar,
                        size: 16,
                        color: VariantColor.primary,
                      ),
                      Text(
                        formatDate(measurement.createdAt!),
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(height: 13),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 14,
                    children: [
                      Text(
                        'BMI: ${measurement.studentBmi.toStringAsFixed(1)}',
                        style: TextStyle(color: VariantColor.muted),
                      ),
                      Text(
                        'Z-Score: ${measurement.zScore.toStringAsFixed(1)}',
                        style: TextStyle(color: VariantColor.muted),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Text(
                    measurement.statusName.toUpperCase(),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: measurement.statusColor,
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              backgroundColor: VariantColor.primary.withAlpha(15),
              child: Icon(
                LucideIcons.chevronRight,
                size: 20,
                color: VariantColor.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
