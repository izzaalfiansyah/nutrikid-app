import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/student/student.dart';
import 'package:nutrikid_app/services/student_service.dart';

part 'home_events.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      if (event is _LoadStudent) {
        emit(state.copyWith(isLoading: true));

        try {
          final result = await Modular.get<StudentService>().getStudentDetail();

          emit(state.copyWith(student: result));
        } catch (err) {
          // do nothing
        }

        emit(state.copyWith(isLoading: false));
      }
    });
  }
}
