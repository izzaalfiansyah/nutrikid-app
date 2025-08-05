import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/login_cubit/login_cubit.dart';
import 'package:nutrikid_app/screens/login/login_screen.dart';

class LoginModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton(LoginCubit.new);
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => LoginScreen(),
      transition: TransitionType.fadeIn,
    );
    super.routes(r);
  }
}
