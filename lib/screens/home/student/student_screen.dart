import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
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
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: Modular.get<HomeBloc>(),
        builder: (context, homeState) {
          if (homeState.isLoading) {
            return Center(
              child: CircularProgressIndicator(color: VariantColor.primary),
            );
          }

          return SingleChildScrollView(
            child: BlocBuilder<StudentBloc, StudentState>(
              bloc: studentBloc,
              builder: (context, state) {
                return Container(
                  padding: EdgeInsets.all(14),
                  child: Column(
                    spacing: 14,
                    children: [
                      Panel(
                        child: Padding(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: VariantColor.muted.withAlpha(
                                  25,
                                ),
                                radius: 50,
                                child: Text(
                                  letterName(state.student.name),
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(color: VariantColor.primary),
                                ),
                              ),
                              SizedBox(height: 14),
                              Text(
                                state.student.name,
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Panel(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            spacing: 12,
                            children: [
                              Center(
                                child: Text(
                                  'Detail Siswa',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(),
                              attributeRow(
                                label: "Nama",
                                value: state.student.name,
                              ),
                              attributeRow(
                                label: "Tanggal Lahir",
                                value: formatDate(
                                  state.student.birthDate ?? DateTime.now(),
                                ),
                              ),
                              attributeRow(
                                label: "Umur",
                                value: "${state.student.age.toString()} tahun",
                              ),
                              attributeRow(
                                label: "Gender",
                                value: state.student.gender.name,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Panel(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            spacing: 12,
                            children: [
                              Center(
                                child: Text(
                                  'Informasi Orang Tua',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(),
                              attributeRow(
                                label: "Nama",
                                value: state.student.parent?.name ?? "-",
                              ),
                              attributeRow(
                                label: "Telepon",
                                value: state.student.parent?.phone ?? "-",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget attributeRow({required String label, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(label, style: TextStyle(color: VariantColor.muted)),
        ),
        Text(':'),
        Expanded(child: Text(value, textAlign: TextAlign.right)),
      ],
    );
  }
}
