import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/modules/login_module.dart';
import 'package:nutrikid_app/modules/main_module.dart';
import 'package:nutrikid_app/screens/splash/splash_screen.dart';
import 'package:nutrikid_app/services/auth_service.dart';
import 'package:nutrikid_app/services/student_service.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton(AuthService.new);

    i.addLazySingleton(AppBloc.new);

    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => SplashScreen());

    r.module(
      '/login',
      module: LoginModule(),
      transition: TransitionType.fadeIn,
    );

    r.module('/home', module: MainModule(), transition: TransitionType.fadeIn);

    super.routes(r);
  }
}
