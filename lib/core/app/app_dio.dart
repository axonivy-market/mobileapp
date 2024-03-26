import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../utils/shared_preference.dart';

class AppDio with DioMixin implements Dio {
  AppDio() {
    String platform = '';
    if (Platform.isAndroid) {
      platform = 'Android';
    } else if (Platform.isIOS) {
      platform = 'iOS';
    }
    options = BaseOptions(
      connectTimeout: const Duration(seconds: 5),
      sendTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'X-Platform': platform, 'Accept-Language': 'en'},
      validateStatus: (status) {
        return status != null ? status < 500 : false;
      },
    );
    if (kDebugMode) {
      interceptors.add(
        PrettyDioLogger(requestBody: true),
      );
    }

    interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final username = SharedPrefs.getUsername;
          final password = SharedPrefs.getPassword;
          String basicAuth =
              'Basic ${base64Encode(utf8.encode('$username:$password'))}';
          options.headers['Authorization'] = basicAuth;
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
