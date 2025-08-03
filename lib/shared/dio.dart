import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/shared/dio/api_interceptor.dart';
import 'package:nutrikid_app/shared/env.dart';

Dio http() {
  final appBloc = Modular.get<AppBloc>();

  final accessToken = appBloc.state.accessToken;
  final refreshToken = appBloc.state.refreshToken;

  var headers = {'accept': 'application/json', 'x-app-key': Env.APP_KEY};

  if (accessToken.isNotEmpty) {
    headers.addAll({'authorization': "Bearer $accessToken"});
  }

  final base = Dio(BaseOptions(baseUrl: Env.APP_BASE_URL, headers: headers));

  base.interceptors.add(ApiInterceptors());

  return base;
}
