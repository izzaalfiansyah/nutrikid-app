import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
import 'package:nutrikid_app/blocs/measurement_suggestion_bloc/measurement_suggestion_bloc.dart';
import 'package:nutrikid_app/blocs/statistic_bloc/statistic_bloc.dart';
import 'package:nutrikid_app/blocs/student_bloc/student_bloc.dart';
import 'package:nutrikid_app/modules/profile_module.dart';
import 'package:nutrikid_app/screens/home/main_screen.dart';

import '../services/measurement_service.dart';
import '../services/student_service.dart';

class MainModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton(StudentService.new);
    i.addLazySingleton(MeasurementService.new);

    i.addLazySingleton(HomeBloc.new);
    i.addLazySingleton(HistoryBloc.new);
    i.addLazySingleton(StatisticBloc.new);
    i.addLazySingleton(StudentBloc.new);
    i.addLazySingleton(MeasurementSuggestionBloc.new);

    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => MainScreen(),
      transition: TransitionType.fadeIn,
    );

    r.module(
      '/profile',
      module: ProfileModule(),
      transition: TransitionType.downToUp,
    );

    super.routes(r);
  }
}
