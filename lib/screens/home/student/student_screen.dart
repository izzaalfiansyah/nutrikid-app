import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/blocs/student_bloc/student_bloc.dart';
import 'package:nutrikid_app/components/panel.dart';
import 'package:nutrikid_app/shared/format_date.dart';
import 'package:nutrikid_app/shared/variant.dart';
import 'package:nutrikid_app/utils/letter_name.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  final studentBloc = Modular.get<StudentBloc>();

  @override
  void initState() {
    studentBloc.add(StudentEvent.load());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppBloc, AppState>(
        bloc: Modular.get<AppBloc>(),
        builder: (context, appState) {
          return BlocBuilder<StudentBloc, StudentState>(
            bloc: studentBloc,
            builder: (context, state) {
              if (appState.isStudentLoading) {
                return Center(
                  child: CircularProgressIndicator(color: VariantColor.primary),
                );
              }

              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(14),
                    width: double.infinity,
                    child: Panel(
                      child: Padding(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: VariantColor.muted.withAlpha(25),
                              child: Text(
                                letterName(state.student.name),
                                style: Theme.of(
                                  context,
                                ).textTheme.displaySmall!.copyWith(
                                  color: VariantColor.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Column(
                              spacing: 8,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Text('Nama')),
                                    Text(':'),
                                    Expanded(
                                      child: Text(
                                        state.student.name,
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Text('Tanggal Lahir')),
                                    Text(':'),
                                    Expanded(
                                      child: Text(
                                        formatDate(
                                          state.student.birthDate ??
                                              DateTime.now(),
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Text('Gender')),
                                    Text(':'),
                                    Expanded(
                                      child: Text(
                                        state.student.gender.name,
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ],
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
          );
        },
      ),
    );
  }
}
