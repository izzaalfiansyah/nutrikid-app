import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
import 'package:nutrikid_app/entities/profile/profile.dart';
import 'package:nutrikid_app/entities/student/student.dart';
import 'package:nutrikid_app/services/auth_service.dart';
import 'package:nutrikid_app/services/student_service.dart';

part 'app_events.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initial()) {
    on<AppEvent>((event, emit) async {
      if (event is _LoadStudent) {
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
          }

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

        Modular.get<HomeBloc>().add(HomeEvent.loadStudent());
        Modular.get<HistoryBloc>().add(
          HistoryEvent.loadMeasurement(isReset: true),
        );

        emit(state.copyWith(selectedStudent: event.student));
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
        emit(state.copyWith(accessToken: "", refreshToken: ""));

        if (event.redirect) {
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
    });
  }
}
