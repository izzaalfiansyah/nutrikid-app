import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/screens/login/login_screen.dart';
import 'package:nutrikid_app/screens/splash_screen.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => SplashScreen());
    r.child(
      '/login',
      child: (context) => LoginScreen(),
      transition: TransitionType.fadeIn,
      duration: const Duration(milliseconds: 100),
    );

    super.routes(r);
  }
}
