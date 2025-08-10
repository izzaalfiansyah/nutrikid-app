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
  String role = 'parent';

  void changeRole(String? value) {
    setState(() {
      role = value ?? 'parent';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: intro.IntroductionScreen(
        pages: [
          intro.PageViewModel(
            title: "Selamat datang!",
            bodyWidget: Text(
              Env.APP_DESCRIPTION,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: VariantColor.muted),
            ),
            image: Assets.favicon.image(width: 60),
          ),
          intro.PageViewModel(
            title: "Pilih Role!",
            bodyWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 12,
              children: [
                Text(
                  "Pilih role anda untuk melihat fitur-fitur yang tersedia. Anda bisa memilih sebagai guru atau orang tua.",
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: VariantColor.muted),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 14,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: 'parent',
                          activeColor: VariantColor.primary,
                          groupValue: role,
                          onChanged: changeRole,
                          visualDensity: VisualDensity.compact,
                        ),
                        Text("Orang Tua"),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: 'teacher',
                          activeColor: VariantColor.primary,
                          groupValue: role,
                          onChanged: changeRole,
                          visualDensity: VisualDensity.compact,
                        ),
                        Text("Guru"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            image: Icon(
              LucideIcons.user2,
              size: 65,
              color: VariantColor.primary,
            ),
          ),
          if (role == 'parent')
            intro.PageViewModel(
              title: "Pilih Sekolah",
              bodyWidget: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Pilih sekolah tempat anak anda sekolah. Semua data yang ditampilkan akan terkait dengan sekolah yang terpilih. Anda dapat menggantinya di pengaturan nanti.",
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: VariantColor.muted),
                  ),
                  SizedBox(height: 14),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: VariantColor.border),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: BlocBuilder<AppBloc, AppState>(
                      bloc: Modular.get<AppBloc>(),
                      builder: (context, state) {
                        return SchoolDropdown(
                          value: state.currentSchool,
                          onChanged: (val) {
                            Modular.get<AppBloc>().add(
                              AppEvent.selectSchool(val),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              image: Icon(
                LucideIcons.building2,
                color: VariantColor.primary,
                size: 65,
              ),
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
          'Selanjutnya'.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        back: Text(
          'Kembali'.toUpperCase(),
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
          IntroductionService.setRole(role);

          String redirect = '/login';

          if (role == 'parent') {
            redirect = '/main';
          }

          Modular.to.pushReplacementNamed(redirect);
        },
      ),
    );
  }
}
