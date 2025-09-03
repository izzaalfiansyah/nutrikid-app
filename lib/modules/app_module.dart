import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/modules/login_module.dart';
import 'package:nutrikid_app/modules/main_module.dart';
import 'package:nutrikid_app/screens/about/about_screen.dart';
import 'package:nutrikid_app/screens/introduction/introduction_screen.dart';
import 'package:nutrikid_app/screens/splash/splash_screen.dart';
import 'package:nutrikid_app/services/auth_service.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton(AuthService.new);

    i.addLazySingleton(AppBloc.new);

    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => SplashScreen(),
      transition: TransitionType.fadeIn,
      duration: Duration(milliseconds: 0),
    );

    r.child(
      '/about',
      child: (context) => AboutScreen(),
      transition: TransitionType.downToUp,
    );

    r.child(
      '/introduction',
      child: (context) => IntroductionScreen(),
      transition: TransitionType.fadeIn,
    );

    r.module(
      '/login',
      module: LoginModule(),
      transition: TransitionType.fadeIn,
    );

    r.module('/main', module: MainModule(), transition: TransitionType.fadeIn);

    super.routes(r);
  }
}
