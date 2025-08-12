import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/components/input.dart';
import 'package:nutrikid_app/components/school_dropdown.dart';
import 'package:nutrikid_app/entities/student/student.dart';
import 'package:nutrikid_app/gen/assets.gen.dart';
import 'package:nutrikid_app/shared/env.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final appBloc = Modular.get<AppBloc>();
  String search = '';

  loadStudents() {
    appBloc.add(AppEvent.loadStudent());
  }

  @override
  void initState() {
    loadStudents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Drawer(
      backgroundColor: Colors.white,
      width: SizeConfig.screenWidth! * 0.9,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 30,
            children: [
              Row(
                spacing: 14,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.favicon.image(width: 20),
                  Text(
                    Env.APP_NAME,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: VariantColor.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Input(
                      placeholder: "Cari Siswa...",
                      variant: 'none',
                      suffixIcon: Icon(LucideIcons.search),
                      onChanged: (val) {
                        setState(() {
                          search = val;
                        });
                      },
                    ),
                    SizedBox(),
                    Expanded(
                      child: BlocBuilder<AppBloc, AppState>(
                        bloc: appBloc,
                        builder: (context, state) {
                          if (state.isStudentLoading) {
                            return Center(
                              child: CircularProgressIndicator(
                                color: VariantColor.primary,
                              ),
                            );
                          }

                          final filteredStudents =
                              state.students
                                  .where(
                                    (student) => student.name
                                        .toLowerCase()
                                        .contains(search),
                                  )
                                  .toList();

                          if (filteredStudents.isEmpty) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'Siswa tidak ditemukan',
                                    style: TextStyle(color: VariantColor.muted),
                                  ),
                                ),
                              ],
                            );
                          }

                          return SingleChildScrollView(
                            child: Column(
                              spacing: 14,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                                  filteredStudents.map((student) {
                                    return studentCard(student);
                                  }).toList(),
                            ),
                          );
                        },
                      ),
                    ),
                    BlocBuilder<AppBloc, AppState>(
                      bloc: Modular.get<AppBloc>(),
                      builder: (context, state) {
                        if (state.profile != null) {
                          return SizedBox(width: double.infinity);
                        }

                        return SizedBox(
                          width: double.infinity,
                          child: SchoolDropdown(
                            value: state.currentSchool,
                            onChanged: (val) {
                              appBloc.add(AppEvent.selectSchool(val));
                              loadStudents();
                            },
                          ),
                        );
                      },
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

  Widget studentCard(Student student) {
    return BlocBuilder(
      bloc: appBloc,
      builder: (context, AppState state) {
        final isSelected = state.selectedStudent?.id == student.id;

        return GestureDetector(
          onTap: () {
            appBloc.add(AppEvent.selectStudent(student));
            Scaffold.of(context).closeDrawer();
          },
          child: Container(
            padding: const EdgeInsets.all(14),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: isSelected ? VariantColor.primary : VariantColor.border,
              ),
              color:
                  isSelected
                      ? VariantColor.primary.withAlpha(10)
                      : Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                student.gender.icon,
                                size: 18,
                                color: student.gender.color,
                              ),
                            ),
                            TextSpan(text: '  '),
                            TextSpan(
                              text: student.name,
                              style: Theme.of(
                                context,
                              ).textTheme.titleMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                                color: isSelected ? VariantColor.primary : null,
                              ),
                            ),
                          ],
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "${student.age} tahun (${student.gender.name})",
                        style: TextStyle(
                          color:
                              isSelected
                                  ? VariantColor.primary
                                  : VariantColor.muted,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  isSelected ? LucideIcons.circleDot : LucideIcons.circle,
                  color:
                      isSelected ? VariantColor.primary : VariantColor.border,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
