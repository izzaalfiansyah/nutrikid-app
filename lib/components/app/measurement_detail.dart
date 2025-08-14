import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/components/app/measurement_detail/measurement_suggestions_widget.dart';
import 'package:nutrikid_app/components/delete_dialog.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/screens/home/history/share/history_share_screen.dart';
import 'package:nutrikid_app/shared/format_date.dart';
import 'package:nutrikid_app/shared/variant.dart';

class MeasurementDetail extends StatefulWidget {
  const MeasurementDetail({super.key, this.measurement});

  final Measurement? measurement;

  @override
  State<MeasurementDetail> createState() => _MeasurementDetailState();
}

class _MeasurementDetailState extends State<MeasurementDetail> {
  final historyBloc = Modular.get<HistoryBloc>();

  @override
  void initState() {
    historyBloc.add(
      HistoryEvent.loadMeasurementDetail(id: widget.measurement!.id),
    );
    super.initState();
  }

  handleDelete(BuildContext context, int id) async {
    await showDialog(
      context: context,
      builder: (context) {
        return DeleteDialog(
          title: "Hapus Pengukuran",
          message:
              "Anda yakin ingin menghapus pengukuran ini? Data akan dihapus secara permanen",
          onDelete: () {
            historyBloc.add(HistoryEvent.deleteMeasurement(id: id));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: Modular.get<AppBloc>(),
      builder: (context, appState) {
        return BlocBuilder<HistoryBloc, HistoryState>(
          bloc: historyBloc,
          builder: (context, state) {
            final measurement = state.currentMeasurement ?? widget.measurement;

            return Column(
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Detail Pengukuran",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (measurement != null)
                      PopupMenuButton(
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              onTap: () async {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  useRootNavigator: true,
                                  builder: (context) {
                                    return MeasurementSuggestionsWidget(
                                      measurement: measurement,
                                    );
                                  },
                                );
                              },
                              child: Text('Saran'),
                            ),
                            if (appState.profile?.isTeacher == true ||
                                appState.profile?.isExpert == true)
                              PopupMenuItem(
                                onTap:
                                    () => handleDelete(context, measurement.id),
                                child: Text(
                                  'Hapus',
                                  style: TextStyle(
                                    color: VariantColor.destructive,
                                  ),
                                ),
                              ),

                            PopupMenuItem(
                              onTap:
                                  () => Modular.to.pushNamed(
                                    '/main/share-measurement',
                                    arguments: HistoryShareScreenArgs(
                                      measurement: measurement,
                                    ),
                                  ),
                              child: Text("Bagikan"),
                            ),
                          ];
                        },
                        icon: Icon(LucideIcons.moreHorizontal, size: 20),
                      ),
                  ],
                ),
                SizedBox(),
                SizedBox(),
                measurementRow(
                  label: "Umur",
                  value:
                      "${measurement?.studentAge ?? 0} Tahun ${measurement?.studentAgeMonth ?? 0} Bulan",
                ),
                measurementRow(
                  label: "Tinggi (cm)",
                  value: (measurement?.studentHeight ?? 0).toStringAsFixed(1),
                ),
                measurementRow(
                  label: "Berat (kg)",
                  value: (measurement?.studentWeight ?? 0).toStringAsFixed(1),
                ),
                measurementRow(
                  label: "BMI",
                  value: (measurement?.studentBmi ?? 0).toStringAsFixed(1),
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                measurementRow(
                  label: "Z-Score",
                  value: (measurement?.zScore ?? 0).toStringAsFixed(1),
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                measurementRow(
                  label: "Status",
                  value: measurement?.status.name ?? "Belum diukur",
                  style: TextStyle(
                    color: measurement?.status.color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                measurementRow(
                  label: "Tanggal",
                  value:
                      measurement?.createdAt != null
                          ? formatDate(measurement!.createdAt!)
                          : "-",
                ),
                measurementRow(
                  label: "Jam",
                  value:
                      measurement?.createdAt != null
                          ? formatDate(measurement!.createdAt!, onlyTime: true)
                          : "-",
                ),
                SizedBox(height: 10),
                // if (measurement != null)
                //   Button(
                //     onPressed:
                //         measurement == null
                //             ? null
                //             : () {
                //               print('download');
                //             },
                //     full: true,
                //     child:
                //         measurement == null
                //             ? Text('Belum ada pengukuran')
                //             : Row(
                //               spacing: 14,
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 Icon(LucideIcons.downloadCloud),
                //                 Text('Download'),
                //               ],
                //             ),
                //   ),
              ],
            );
          },
        );
      },
    );
  }

  Widget measurementRow({
    required String label,
    required String value,
    TextStyle? style,
  }) {
    return Row(
      children: [
        Expanded(
          child: Text(label, style: TextStyle(color: VariantColor.muted)),
        ),
        Text(':'),
        Expanded(child: Text(value, style: style, textAlign: TextAlign.end)),
      ],
    );
  }
}
