import 'dart:developer';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'package:dio/dio.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/services/auth_service.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    log(options.path, name: "ENDPOINT");
    log((options.data ?? options.queryParameters).toString(), name: "PARAMS");

    try {
      final appBloc = Modular.get<AppBloc>();
      final accessToken = appBloc.state.accessToken;
      final refreshToken = appBloc.state.refreshToken;

      if (JwtDecoder.isExpired(accessToken) && refreshToken.isNotEmpty) {
        final token = await Modular.get<AuthService>().refreshToken();

        if (token != null) {
          options.headers.addAll({
            "authorization": "Bearer ${token.refreshToken}",
          });
        }
      } else {
        throw 'error';
      }
    } catch (err) {
      Modular.get<AppBloc>().add(AppEvent.logout(redirect: false));
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioError dioError, ErrorInterceptorHandler handler) {
    log(
      (dioError.response?.statusMessage ?? dioError.message).toString(),
      name: "ERROR",
    );

    super.onError(dioError, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(response.data.toString(), name: "RESPONSE");

    super.onResponse(response, handler);
  }
}
