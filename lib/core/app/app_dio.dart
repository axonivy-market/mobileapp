import 'dart:convert';
import 'dart:io';

import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AppDio with DioMixin implements Dio {
  late String username;
  late String password;
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
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        'X-Platform': platform,
        'Accept-Language': 'en'
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
          final isDemoSetting = SharedPrefs.demoSetting ?? false;
          if (isDemoSetting) {
            username = DemoConfig.demoUserName;
            password = DemoConfig.demoPassword;
          } else {
            username = SharedPrefs.getUsername ?? '';
            password = SharedPrefs.getPassword ?? '';
          }
          String basicAuth =
              'Basic ${base64Encode(utf8.encode('$username:$password'))}';
          options.headers['Authorization'] = basicAuth;
          options.data ??= {};
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
