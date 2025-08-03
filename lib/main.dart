import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:nutrikid_app/app_widget.dart';
import 'package:nutrikid_app/modules/app_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('id_ID');
  Intl.defaultLocale = 'id_ID';

  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
