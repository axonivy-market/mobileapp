import 'dart:io';

import 'package:axon_ivy/shared/utils/authorization_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AppDio with DioMixin implements Dio {
  AppDio() {
    String platform = '';
    if (Platform.isAndroid) {
      platform = 'Android';
    } else if (Platform.isIOS) {
      platform = 'iOS';
    }
    options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'X-Platform': platform, 'Accept-Language': 'en'},
    );
    if (kDebugMode) {
      interceptors.add(
        PrettyDioLogger(requestBody: true),
      );
    }

    interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['Authorization'] =
              AuthorizationUtils.authorizationHeader;
          debugPrint('Headers: ${options.headers}');
          return handler.next(options);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          return handler.next(e);
        },
      ),
    );

    httpClientAdapter = HttpClientAdapter();
  }
}
