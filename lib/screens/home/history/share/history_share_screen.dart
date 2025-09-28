import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/components/app/statistic_chart_widget.dart';
import 'package:nutrikid_app/components/panel.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/gen/assets.gen.dart';
import 'package:nutrikid_app/shared/env.dart';
import 'package:nutrikid_app/shared/format_date.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class HistoryShareScreenArgs {
  final Measurement measurement;

  HistoryShareScreenArgs({required this.measurement});
}

class HistoryShareScreen extends StatefulWidget {
  const HistoryShareScreen({super.key});

  @override
  State<HistoryShareScreen> createState() => _HistoryShareScreenState();
}

class _HistoryShareScreenState extends State<HistoryShareScreen> {
  final args = Modular.args.data as HistoryShareScreenArgs;
  late final measurement = args.measurement;

  final screenshotController = ScreenshotController();

  bool screenshotTriggered = false;

  handleShareScreen() {
    screenshotController.capture().then((image) async {
      if (image == null) {
        return;
      }

      setState(() {
        screenshotTriggered = true;
      });

      final directory = await getApplicationDocumentsDirectory();
      final file = await File("${directory.path}/statistic.png").create();

      await file.writeAsBytes(image);

      await SharePlus.instance.share(
        ShareParams(text: "Statistik Siswa", files: [XFile(file.path)]),
      );

      await file.delete();

      setState(() {
        screenshotTriggered = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(LucideIcons.arrowLeft),
          onPressed: () => Modular.to.pop(),
        ),
        backgroundColor: VariantColor.primary,
        foregroundColor: Colors.white,
        title: Text(
          "Statistik Siswa",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(LucideIcons.share2),
            onPressed: handleShareScreen,
          ),
        ],
      ),
      body: Screenshot(
        controller: screenshotController,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: SizeConfig.screenHeight! * .35,
                    decoration: BoxDecoration(color: VariantColor.primary),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: VariantColor.primary,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  spacing: 20,
                  children: [
                    Panel(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          spacing: 3,
                          children: [
                            Column(
                              spacing: 3,
                              children: [
                                Text(
                                  measurement.student?.name ?? "",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 8),
                                shareItem(
                                  label: "Umur Siswa",
                                  value:
                                      "${measurement.studentAge} Tahun ${measurement.studentAgeMonth} Bulan",
                                ),
                                shareItem(
                                  label: "Tgl. Pengukuran",
                                  value: formatDate(
                                    measurement.createdAt ?? DateTime.now(),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              spacing: 3,
                              children: [
                                shareItem(
                                  label: "Tinggi Badan",
                                  value:
                                      "${measurement.studentHeight.toStringAsFixed(1)} cm",
                                ),
                                shareItem(
                                  label: "Berat Badan",
                                  value:
                                      "${measurement.studentWeight.toStringAsFixed(1)} kg",
                                ),
                                shareItem(
                                  label: "BMI",
                                  value: measurement.studentBmi.toStringAsFixed(
                                    2,
                                  ),
                                ),
                                shareItem(
                                  label: "Z-Score",
                                  value:
                                      "${measurement.zScore.toStringAsFixed(2)} SD",
                                ),
                                shareItem(
                                  label: "Status",
                                  value: measurement.status.name,
                                  color: measurement.status.color,
                                ),
                              ],
                            ),
                            Divider(color: VariantColor.border),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 4,
                                children: [
                                  Text(
                                    'Saran Kesehatan: ',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (measurement.suggestionAdvices.isEmpty)
                                        Center(
                                          child: Text(
                                            "Tidak ada saran kesehatan",
                                            style: Theme.of(
                                              context,
                                            ).textTheme.bodySmall!.copyWith(
                                              color: VariantColor.muted,
                                            ),
                                          ),
                                        )
                                      else
                                        Column(
                                          spacing: 1,
                                          children: List.generate(
                                            measurement
                                                .suggestionAdvices
                                                .length,
                                            (index) {
                                              final suggestion =
                                                  measurement
                                                      .suggestionAdvices[index];

                                              return Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 24,
                                                    child: Text(
                                                      "${index + 1}.",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                            color:
                                                                VariantColor
                                                                    .muted,
                                                          ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      suggestion,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                            color:
                                                                VariantColor
                                                                    .muted,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            SizedBox(
                              height: 250,
                              child: StatisticChartWidget(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.favicon.image(width: 20),
                        SizedBox(height: 5),
                        Text(
                          Env.APP_NAME,
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.copyWith(
                            color: VariantColor.muted.withAlpha(150),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget shareItem({
    required String label,
    required String value,
    Color? color,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodySmall!.copyWith(color: VariantColor.muted),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color),
        ),
      ],
    );
  }
}
