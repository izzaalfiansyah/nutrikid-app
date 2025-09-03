import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
import 'package:nutrikid_app/components/app/measurement_detail.dart';
import 'package:nutrikid_app/components/panel.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeBloc = Modular.get<HomeBloc>();

  loadSelectedStudent() {
    homeBloc.add(HomeEvent.loadStudent());
  }

  @override
  void initState() {
    loadSelectedStudent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          loadSelectedStudent();
        },
        color: VariantColor.primary,
        child: SingleChildScrollView(
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
                          color: VariantColor.card,
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
                                radius: 65,
                                backgroundColor: VariantColor.muted.withAlpha(
                                  18,
                                ),
                                child: Builder(
                                  builder: (context) {
                                    if (state.isLoading) {
                                      return CircularProgressIndicator(
                                        color: VariantColor.primary,
                                      );
                                    }

                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 12),
                                        Text(
                                          (measurement?.studentBmi ?? 0)
                                              .toStringAsFixed(1),
                                          style: Theme.of(
                                            context,
                                          ).textTheme.displaySmall!.copyWith(
                                            color: VariantColor.primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "BMI",
                                          style:
                                              Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                        ),
                                      ],
                                    );
                                  },
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
                                      if (state.isLoading)
                                        CircularProgressIndicator(
                                          color: VariantColor.primary,
                                        )
                                      else
                                        Text(
                                          (measurement?.studentHeight ?? 0)
                                              .toStringAsFixed(1),
                                          style: Theme.of(
                                            context,
                                          ).textTheme.headlineMedium!.copyWith(
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
                                      if (state.isLoading)
                                        CircularProgressIndicator(
                                          color: VariantColor.primary,
                                        )
                                      else
                                        Text(
                                          (measurement?.studentWeight ?? 0)
                                              .toStringAsFixed(1),
                                          style: Theme.of(
                                            context,
                                          ).textTheme.headlineMedium!.copyWith(
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
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Panel(
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: MeasurementDetail(measurement: measurement),
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
