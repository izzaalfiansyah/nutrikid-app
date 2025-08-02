import 'package:dio/dio.dart';
import 'package:nutrikid_app/shared/env.dart';

Dio http() {
  final base = Dio(
    BaseOptions(
      baseUrl: Env.APP_BASE_URL,
      headers: {"accept": "application/json", "x-app-key": Env.APP_KEY},
    ),
  );

  return base;
}
