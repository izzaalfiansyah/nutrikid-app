import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/entities/student/student.dart';

part 'student_events.dart';
part 'student_state.dart';

part 'student_bloc.freezed.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final appBloc = Modular.get<AppBloc>();

  StudentBloc() : super(StudentState.initial()) {
    on<StudentEvent>((event, emit) {
      if (event is _LoadStudent) {
        emit(state.copyWith(isLoading: true));

        emit(state.copyWith(student: appBloc.state.selectedStudent!));

        emit(state.copyWith(isLoading: false));
      }
    });
  }
}
