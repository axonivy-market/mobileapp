import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AuthInterceptor extends Interceptor {
  static const String _username = "Developer";
  static const String _password = "Developer";

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('$_username:$_password'))}';
    options.headers['Authorization'] = basicAuth;
    return super.onRequest(options, handler);
  }
}

class AppDio with DioMixin implements Dio {
  AppDio() {
    String platform = '';
    if (Platform.isAndroid) {
      platform = 'Android';
    } else if (Platform.isIOS) {
      platform = 'iOS';
    }
    options = BaseOptions(
      connectTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
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
    interceptors.add(AuthInterceptor());

    // interceptors.add(
    //   InterceptorsWrapper(
    //     onRequest: (options, handler) async {
    //       final token = SharedPrefs.getAccessToken;
    //       PackageInfo packageInfo = await PackageInfo.fromPlatform();
    //       String version = packageInfo.version;
    //       options.headers.putIfAbsent('X-Application-Version', () => version);
    //       if (token.isNotEmptyOrNull) {
    //         options.headers.putIfAbsent('Authorization', () => 'Bearer $token');
    //       }
    //       options.data ??= {};
    //       debugPrint('Headers: ${options.headers}');
    //       return handler.next(options);
    //     },
    //     onError: (error, handler) {
    //       if (error.response != null) {
    //         handler.next(error);
    //       }
    //     },
    //   ),
    // );

    httpClientAdapter = HttpClientAdapter();
  }
}
