import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/shared/env.dart';
import 'package:nutrikid_app/shared/variant.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: Env.APP_NAME,
      routerConfig: Modular.routerConfig,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: VariantColor.primary),
        scaffoldBackgroundColor: VariantColor.background,
        textTheme: textTheme,
      ),
    );
  }
}
