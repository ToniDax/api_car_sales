import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      log(
        "[Interceptor]---------ON_REQUEST(${options.method})------------------"
            "\nURL: ${options.uri}\n\n",
      );
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      log(
        "[Interceptor]---------ON_RESPONSE(${response.statusCode})------------------"
            "\nREASON PHRASE: ${response.statusMessage}\n\n",
      );
    }
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      log(
        "[Interceptor]---------ON_ERROR------------------"
            "\nERROR: ${err.error}\n\n",
      );
    }
    handler.next(err);
  }
}
