import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
import 'package:nutrikid_app/blocs/student_bloc/student_bloc.dart';
import 'package:nutrikid_app/entities/gender/gender.dart';
import 'package:nutrikid_app/entities/profile/profile.dart';
import 'package:nutrikid_app/entities/school/school.dart';
import 'package:nutrikid_app/entities/student/student.dart';
import 'package:nutrikid_app/entities/z_score/z_score.dart';
import 'package:nutrikid_app/services/auth_service.dart';
import 'package:nutrikid_app/services/measurement_service.dart';
import 'package:nutrikid_app/services/school_service.dart';
import 'package:nutrikid_app/services/student_service.dart';

part 'app_events.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initial()) {
    on<AppEvent>((event, emit) async {
      void loadStudent() {
        Modular.get<HomeBloc>().add(HomeEvent.loadStudent());
        Modular.get<HistoryBloc>().add(
          HistoryEvent.loadMeasurement(isReset: true),
        );

        add(AppEvent.loadDefaultZScore());

        Future.delayed(Duration(milliseconds: 300), () {
          Modular.get<StudentBloc>().add(StudentEvent.load());
        });
      }

      if (event is _LoadStudent) {
        if (state.isStudentLoading) return;

        emit(state.copyWith(isStudentLoading: true));
        final selectedStudentId =
            await Modular.get<StudentService>().getStudentId();

        try {
          final result = await Modular.get<StudentService>().getStudents();

          final students = result.students;

          final selectedStudent = students.firstWhere(
            (student) => student.id == selectedStudentId,
            orElse: () => students.first,
          );

          if (selectedStudentId == null) {
            await Modular.get<StudentService>().setStudentId(
              selectedStudent.id,
            );

            loadStudent();
          }

          add(AppEvent.loadDefaultZScore());

          emit(
            state.copyWith(
              students: students,
              studentTotal: result.total,
              selectedStudent: selectedStudent,
            ),
          );
        } catch (e) {
          // do nothing
        }

        emit(state.copyWith(isStudentLoading: false));
      }

      if (event is _SelectStudent) {
        await Modular.get<StudentService>().setStudentId(event.student.id);

        emit(state.copyWith(selectedStudent: event.student));

        loadStudent();
      }

      if (event is _LoadProfile) {
        try {
          final token = await Modular.get<AuthService>().getToken();

          emit(
            state.copyWith(
              accessToken: token.accessToken,
              refreshToken: token.refreshToken,
            ),
          );

          final result = await Modular.get<AuthService>().profile();

          emit(state.copyWith(profile: result));
        } catch (e) {
          // do nothing
        }

        if (event.callback != null) {
          event.callback!(state.profile);
        }
      }

      if (event is _Logout) {
        emit(state.copyWith(accessToken: "", refreshToken: "", profile: null));

        if (event.redirect) {
          await Modular.get<StudentService>().deleteStudentId();
          await Modular.get<AuthService>().deleteToken();

          Modular.to.popUntil(ModalRoute.withName('/'));
          Modular.to.pushReplacementNamed('/login');
        }
      }

      if (event is _ShowAlert) {
        emit(
          state.copyWith(
            alertMessage: event.message,
            alertTriggerer: !state.alertTriggerer,
          ),
        );
      }

      if (event is _SetProfile) {
        emit(state.copyWith(profile: event.profile));
      }

      if (event is _LoadSchool) {
        if (state.isSchoolLoading) {
          return;
        }

        emit(state.copyWith(isSchoolLoading: true));

        final result = await SchoolService.getSchools();

        var currentSchool = await SchoolService.getCurrentSchool();

        if (currentSchool == null) {
          add(AppEvent.selectSchool(result.first));
          currentSchool = result.first;
        }

        try {
          emit(
            state.copyWith(
              currentSchool: result.firstWhere(
                (sch) => sch.id == currentSchool?.id,
              ),
            ),
          );
        } catch (err) {
          // do nothing
        }
        if (result.isNotEmpty && state.currentSchool == null) {
          SchoolService.setCurrentSchool(result.first);
        }

        if (result.isNotEmpty) {
          emit(state.copyWith(schools: result));
        }

        emit(state.copyWith(isSchoolLoading: false));
      }

      if (event is _SelectSchool) {
        emit(
          state.copyWith(currentSchool: event.school, selectedStudent: null),
        );

        await Modular.get<StudentService>().deleteStudentId();

        Future.delayed(Duration(milliseconds: 300), () {
          SchoolService.setCurrentSchool(event.school);
          add(AppEvent.loadStudent());
        });
      }

      if (event is _LoadDefaultZscore) {
        final zScores = await MeasurementService.getMeasurementZScores(
          gender: state.selectedStudent?.gender == Gender.l ? "l" : "p",
        );

        emit(state.copyWith(defaultZScores: zScores));
      }
    });
  }
}
