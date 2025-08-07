import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/profile_cubit/profile_cubit.dart';
import 'package:nutrikid_app/screens/profile/profile_screen.dart';

class ProfileModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton(ProfileCubit.new);

    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => ProfileScreen(),
      transition: TransitionType.downToUp,
    );

    super.routes(r);
  }
}
