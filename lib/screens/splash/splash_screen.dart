import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/gen/assets.gen.dart';
import 'package:nutrikid_app/services/introduction_service.dart';
import 'package:nutrikid_app/shared/env.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final appBloc = Modular.get<AppBloc>();

  getProfile() async {
    final isIntroductionShowed = await IntroductionService.shown();
    final isTeacher = await IntroductionService.isTeacher();
    appBloc.add(AppEvent.loadSchool());

    appBloc.add(
      AppEvent.loadProfile(
        callback: (profile) {
          var redirect = '/login';

          if (!isTeacher) {
            redirect = '/main';
          }

          if (!isIntroductionShowed) {
            redirect = '/introduction';
          } else {
            if (profile != null) {
              redirect = '/main';
            }
          }

          Future.delayed(Duration(seconds: 1), () {
            Modular.to.pushReplacementNamed(redirect);
          });
        },
      ),
    );
  }

  @override
  void initState() {
    getProfile();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            Assets.favicon.image(width: SizeConfig.blockSizeHorizontal! * 14),
            Text(
              Env.APP_NAME,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: VariantColor.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
