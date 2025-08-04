import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/blocs/home_bloc/home_bloc.dart';
import 'package:nutrikid_app/blocs/login_cubit/login_cubit.dart';
import 'package:nutrikid_app/blocs/history_bloc/history_bloc.dart';
import 'package:nutrikid_app/blocs/statistic_bloc/statistic_bloc.dart';
import 'package:nutrikid_app/screens/home/main_screen.dart';
import 'package:nutrikid_app/screens/login/login_screen.dart';
import 'package:nutrikid_app/screens/splash/splash_screen.dart';
import 'package:nutrikid_app/services/auth_service.dart';
import 'package:nutrikid_app/services/measurement_service.dart';
import 'package:nutrikid_app/services/student_service.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton(AuthService.new);
    i.addLazySingleton(StudentService.new);
    i.addLazySingleton(MeasurementService.new);

    i.addLazySingleton(AppBloc.new);
    i.addLazySingleton(LoginCubit.new);
    i.addLazySingleton(HomeBloc.new);
    i.addLazySingleton(HistoryBloc.new);
    i.addLazySingleton(StatisticBloc.new);

    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => SplashScreen());

    r.child(
      '/login',
      child: (context) => LoginScreen(),
      transition: TransitionType.fadeIn,
    );

    r.child(
      '/home',
      child: (context) => MainScreen(),
      transition: TransitionType.fadeIn,
    );

    super.routes(r);
  }
}
