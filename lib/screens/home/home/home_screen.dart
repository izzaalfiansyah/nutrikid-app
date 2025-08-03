import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
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
            return Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: VariantColor.primary,
                        // color: VariantColor.primary,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(50),
                        ),
                        boxShadow: panelShadow,
                      ),
                      height: SizeConfig.blockSizeVertical! * 25,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(14),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(14),
                            child: SizedBox(
                              height: 140,
                              width: double.infinity,
                            ),
                          ),
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
                      final measurement = state.student.measurement;

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
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.displayMedium,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      spacing: 5,
                                      children: [
                                        Icon(
                                          LucideIcons.signalHigh,
                                          size: 14,
                                          color: VariantColor.primary,
                                        ),
                                        Text('Tinggi (cm)'),
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
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.displayMedium,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      spacing: 5,
                                      children: [
                                        Icon(
                                          LucideIcons.dumbbell,
                                          size: 14,
                                          color: VariantColor.destructive,
                                        ),
                                        Text('Berat (kg)'),
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
                      child: SizedBox(height: 300, width: double.infinity),
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
