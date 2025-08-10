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
        showNextButton: true,
        next: Text('Selanjutnya'),
        done: const Text("Selesai"),
        onDone: () {
          IntroductionService.setShown();
          Modular.to.pushReplacementNamed('/main');
        },
      ),
    );
  }
}
