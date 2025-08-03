import 'dart:developer';

import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log(options.path, name: "ENDPOINT");
    log((options.data ?? options.queryParameters).toString(), name: "PARAMS");

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
