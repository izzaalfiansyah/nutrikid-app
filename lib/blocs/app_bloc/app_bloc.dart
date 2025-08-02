import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/student/student.dart';
import 'package:nutrikid_app/services/student_service.dart';

part 'app_events.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initial()) {
    on<AppEvent>((event, emit) async {
      if (event is _LoadStudent) {
        emit(state.copyWith(isStudentLoading: true));

        try {
          final result = await Modular.get<StudentService>().getStudents();
          emit(
            state.copyWith(
              students: result.students,
              studentTotal: result.total,
            ),
          );
        } catch (e) {
          print(e);
        }

        emit(state.copyWith(isStudentLoading: false));
      }
    });
  }
}
