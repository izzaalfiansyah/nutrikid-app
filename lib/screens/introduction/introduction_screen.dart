import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/components/school_dropdown.dart';
import 'package:nutrikid_app/gen/assets.gen.dart';
import 'package:nutrikid_app/services/introduction_service.dart';
import 'package:nutrikid_app/shared/env.dart';
import 'package:introduction_screen/introduction_screen.dart' as intro;
import 'package:nutrikid_app/shared/variant.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: intro.IntroductionScreen(
        pages: [
          intro.PageViewModel(
            title: "Selamat datang!",
            bodyWidget: Column(
              children: [
                Text(
                  Env.APP_DESCRIPTION,
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: VariantColor.muted),
                ),
                const SizedBox(height: 30),
                Assets.polijeCopyright.image(height: 30),
              ],
            ),
            image: Assets.favicon.image(width: 70),
          ),
          intro.PageViewModel(
            title: "Anda sudah siap!",
            bodyWidget: Text(
              "Anda sudah siap untuk memulai pengukuran nutrisi anak anda. Semoga hari anda menyenangkan!",
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: VariantColor.muted),
            ),
            image: Icon(
              LucideIcons.checkCircle2,
              color: VariantColor.primary,
              size: 65,
            ),
          ),
        ],
        showBackButton: true,
        showNextButton: true,
        next: Text(
          'Next'.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        back: Text(
          'Prev'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade500,
          ),
        ),
        done: Text(
          "Selesai".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        dotsDecorator: intro.DotsDecorator(
          activeColor: VariantColor.primary,
          color: VariantColor.border,
        ),
        onDone: () {
          IntroductionService.setShown();
          Modular.to.pushNamed('/login');
        },
      ),
    );
  }
}
