import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
import 'package:nutrikid_app/components/panel.dart';
import 'package:nutrikid_app/shared/format_date.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeBloc = Modular.get<HomeBloc>();

  @override
  void initState() {
    homeBloc.add(HomeEvent.loadStudent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder(
          bloc: homeBloc,
          builder: (context, HomeState state) {
            final measurement = state.student.measurement;

            return Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // color: VariantColor.primary,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(70),
                        ),
                        boxShadow: panelShadow,
                      ),
                      alignment: Alignment.center,
                      height: SizeConfig.blockSizeVertical! * 25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: VariantColor.primary.withAlpha(200),
                                width: 1.5,
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 82,
                              backgroundColor: VariantColor.muted.withAlpha(25),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10),
                                  Text(
                                    (measurement?.studentBmi ?? 0)
                                        .toStringAsFixed(1),
                                    style: Theme.of(
                                      context,
                                    ).textTheme.displayMedium!.copyWith(
                                      color: VariantColor.primary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "BMI",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text('BMI', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.all(14),
                  child: Builder(
                    builder: (context) {
                      return Row(
                        spacing: 14,
                        children: [
                          Expanded(
                            child: Panel(
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Column(
                                  spacing: 14,
                                  children: [
                                    Text(
                                      (measurement?.studentHeight ?? 0)
                                          .toStringAsFixed(1),
                                      style: Theme.of(
                                        context,
                                      ).textTheme.displaySmall!.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      spacing: 5,
                                      children: [
                                        Icon(
                                          LucideIcons.signalHigh,
                                          size: 18,
                                          color: VariantColor.primary,
                                        ),
                                        Text(
                                          'Tinggi (cm)',
                                          style: TextStyle(
                                            color: VariantColor.muted,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Panel(
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Column(
                                  spacing: 14,
                                  children: [
                                    Text(
                                      (measurement?.studentWeight ?? 0)
                                          .toStringAsFixed(1),
                                      style: Theme.of(
                                        context,
                                      ).textTheme.displaySmall!.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      spacing: 5,
                                      children: [
                                        Icon(
                                          LucideIcons.dumbbell,
                                          size: 18,
                                          color: VariantColor.destructive,
                                        ),
                                        Text(
                                          'Berat (kg)',
                                          style: TextStyle(
                                            color: VariantColor.muted,
                                          ),
                                        ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Panel(
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        spacing: 10,
                        children: [
                          Text(
                            "Detail Pengukuran",
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(),
                          Row(
                            children: [
                              Expanded(child: Text('Umur')),
                              Text(':'),
                              Expanded(
                                child: Text(
                                  (measurement?.studentAge ?? 0).toString(),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text('Tinggi (cm)')),
                              Text(':'),
                              Expanded(
                                child: Text(
                                  (measurement?.studentHeight ?? 0)
                                      .toStringAsFixed(1),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text('Berat (kg)')),
                              Text(':'),
                              Expanded(
                                child: Text(
                                  (measurement?.studentWeight ?? 0)
                                      .toStringAsFixed(1),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text('BMI')),
                              Text(':'),
                              Expanded(
                                child: Text(
                                  (measurement?.studentBmi ?? 0)
                                      .toStringAsFixed(1),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text('Z-Score')),
                              Text(':'),
                              Expanded(
                                child: Text(
                                  (measurement?.zScore ?? 0).toStringAsFixed(1),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text('Status')),
                              Text(':'),
                              Expanded(
                                child: Text(
                                  measurement?.statusName ?? 'normal',
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text('Diambil Tanggal')),
                              Text(':'),
                              Expanded(
                                child: Text(
                                  formatDate(
                                    measurement?.createdAt ?? DateTime.now(),
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text('Jam')),
                              Text(':'),
                              Expanded(
                                child: Text(
                                  DateFormat('HH:mm').format(
                                    measurement?.createdAt ?? DateTime.now(),
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14),
              ],
            );
          },
        ),
      ),
    );
  }
}
