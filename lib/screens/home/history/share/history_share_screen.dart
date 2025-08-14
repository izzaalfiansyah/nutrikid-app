import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/components/panel.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/gen/assets.gen.dart';
import 'package:nutrikid_app/shared/env.dart';
import 'package:nutrikid_app/shared/format_date.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';
import 'package:nutrikid_app/utils/letter_name.dart';

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

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: SingleChildScrollView(
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
              child: SafeArea(
                child: Column(
                  spacing: 20,
                  children: [
                    Column(
                      spacing: 14,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(50),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 44,
                            child: Text(
                              letterName(measurement.student?.name ?? ""),
                              style: Theme.of(
                                context,
                              ).textTheme.titleLarge!.copyWith(
                                color: VariantColor.primary,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          measurement.student?.name ?? "",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Panel(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          spacing: 14,
                          children: [
                            Column(
                              spacing: 22,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Umur Siswa',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall!.copyWith(
                                        color: VariantColor.muted,
                                        fontSize: 11,
                                      ),
                                    ),
                                    Text(
                                      '${measurement.studentAge} Tahun ${measurement.studentAgeMonth} Bulan',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyLarge!.copyWith(
                                        color: VariantColor.primary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                shareItem(
                                  label: "Tgl. Pengukuran",
                                  value: formatDate(
                                    measurement.createdAt ?? DateTime.now(),
                                  ),
                                ),
                              ],
                            ),
                            Divider(color: VariantColor.border),
                            Column(
                              spacing: 10,
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
                                  value: "${measurement.zScore} SD",
                                ),
                                shareItem(
                                  label: "Status",
                                  value: measurement.status.name,
                                  color: measurement.status.color,
                                ),
                              ],
                            ),
                            Divider(color: VariantColor.border),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [Text("Saran Kesehatan :")],
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: VariantColor.border.withAlpha(30),
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (measurement.suggestions.isEmpty)
                                    Center(
                                      child: Text(
                                        "Tidak ada saran kesehatan",
                                        style: TextStyle(
                                          color: VariantColor.muted,
                                        ),
                                      ),
                                    )
                                  else
                                    Column(
                                      spacing: 8,
                                      children: List.generate(
                                        measurement.suggestions.length,
                                        (index) {
                                          final suggestion =
                                              measurement.suggestions[index];
                                          return Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 24,
                                                child: Text(
                                                  "${index + 1}.",
                                                  style: TextStyle(
                                                    color: VariantColor.muted,
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Text(
                                                  suggestion.advice,
                                                  style: TextStyle(
                                                    color: VariantColor.muted,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.favicon.image(width: 14),
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
            ),
            Positioned(
              left: 10,
              top: 10,
              child: SafeArea(
                child: IconButton(
                  onPressed: () {
                    Modular.to.pop();
                  },
                  icon: Icon(LucideIcons.arrowLeft, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: SafeArea(
                child: IconButton(
                  onPressed: () {
                    Modular.to.pop();
                  },
                  icon: Icon(LucideIcons.share2, color: Colors.white),
                ),
              ),
            ),
          ],
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
        Text(label, style: TextStyle(color: VariantColor.muted)),
        Text(value, style: TextStyle(color: color)),
      ],
    );
  }
}
