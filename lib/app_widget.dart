import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrikid_app/shared/env.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: Env.APP_NAME,
      routerConfig: Modular.routerConfig,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: VariantColor.primary),
        scaffoldBackgroundColor: VariantColor.background,
        textTheme: GoogleFonts.robotoTextTheme(),
        cardTheme: CardThemeData(
          color: Colors.white,
          shadowColor: VariantColor.muted,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        popupMenuTheme: PopupMenuThemeData(color: Colors.white),
        dialogTheme: DialogThemeData(backgroundColor: Colors.white),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: VariantColor.primary),
        ),
      ),
    );
  }
}
