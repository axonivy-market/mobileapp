// ignore_for_file: constant_identifier_names

import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/shared/resources/string_manager.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

class AppError implements Exception {
  late Failure failure;

  AppError.handle(dynamic error) {
    if (error is DioException) {
      failure = _handleError(error);
    } else {
      failure = DataSource.DEFAULT.getFailure();
    }
  }
}

Failure _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.CONNECT_TIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.SEND_TIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.RECIEVE_TIMEOUT.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return Failure(error.response?.statusCode ?? 0,
            error.response?.data["errorMessage"] ?? "");
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.cancel:
      if (error.error == Constants.insecureConnectionError) {
        return DataSource.INSECURE_CONNECTION.getFailure();
      }
      return DataSource.CANCEL.getFailure();
    case DioExceptionType.connectionError:
      return DataSource.CONNECTION_ERROR.getFailure();
    case DioExceptionType.unknown:
      return DataSource.DEFAULT.getFailure();
    default:
      return DataSource.DEFAULT.getFailure();
  }
}

enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  CONNECTION_ERROR,
  INSECURE_CONNECTION,
  UNKNOWN,
  DEFAULT
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.SUCCESS:
        return Failure(ResponseCode.SUCCESS, ResponseMessage.SUCCESS.tr());
      case DataSource.NO_CONTENT:
        return Failure(
            ResponseCode.NO_CONTENT, ResponseMessage.NO_CONTENT.tr());
      case DataSource.BAD_REQUEST:
        return Failure(
            ResponseCode.BAD_REQUEST, ResponseMessage.BAD_REQUEST.tr());
      case DataSource.FORBIDDEN:
        return Failure(ResponseCode.FORBIDDEN, ResponseMessage.FORBIDDEN.tr());
      case DataSource.UNAUTORISED:
        return Failure(
            ResponseCode.UNAUTORISED, ResponseMessage.UNAUTORISED.tr());
      case DataSource.NOT_FOUND:
        return Failure(ResponseCode.NOT_FOUND, ResponseMessage.NOT_FOUND.tr());
      case DataSource.INTERNAL_SERVER_ERROR:
        return Failure(ResponseCode.INTERNAL_SERVER_ERROR,
            ResponseMessage.INTERNAL_SERVER_ERROR.tr());
      case DataSource.CONNECT_TIMEOUT:
        return Failure(
            ResponseCode.CONNECT_TIMEOUT, ResponseMessage.CONNECT_TIMEOUT.tr());
      case DataSource.CANCEL:
        return Failure(ResponseCode.CANCEL, ResponseMessage.CANCEL.tr());
      case DataSource.RECIEVE_TIMEOUT:
        return Failure(
            ResponseCode.RECIEVE_TIMEOUT, ResponseMessage.RECIEVE_TIMEOUT.tr());
      case DataSource.SEND_TIMEOUT:
        return Failure(
            ResponseCode.SEND_TIMEOUT, ResponseMessage.SEND_TIMEOUT.tr());
      case DataSource.CACHE_ERROR:
        return Failure(
            ResponseCode.CACHE_ERROR, ResponseMessage.CACHE_ERROR.tr());
      case DataSource.NO_INTERNET_CONNECTION:
        return Failure(ResponseCode.NO_INTERNET_CONNECTION,
            ResponseMessage.NO_INTERNET_CONNECTION.tr());
      case DataSource.CONNECTION_ERROR:
        return Failure(ResponseCode.CONNECTION_ERROR,
            ResponseMessage.CONNECTION_ERROR.tr());
      case DataSource.INSECURE_CONNECTION:
        return Failure(ResponseCode.INSECURE_CONNECTION,
            ResponseMessage.INSECURE_CONNECTION.tr());
      case DataSource.UNKNOWN:
        return Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT.tr());
      case DataSource.DEFAULT:
        return Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT.tr());
    }
  }
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTORISED = 401; // failure, user is not authorised
  static const int FORBIDDEN = 403; //  failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int CONNECTION_ERROR = -7;
  static const int INSECURE_CONNECTION = -8;
  static const int DEFAULT = -9;
}

class ResponseMessage {
  static const String SUCCESS = AppStrings.success; // success with data
  static const String NO_CONTENT =
      AppStrings.success; // success with no data (no content)
  static const String BAD_REQUEST =
      AppStrings.strBadRequestError; // failure, API rejected request
  static const String UNAUTORISED =
      AppStrings.strUnauthorizedError; // failure, user is not authorised
  static const String FORBIDDEN =
      AppStrings.strForbiddenError; //  failure, API rejected request
  static const String INTERNAL_SERVER_ERROR =
      AppStrings.strInternalServerError; // failure, crash in server side
  static const String NOT_FOUND =
      AppStrings.strNotFoundError; // failure, crash in server side

  // local status code
  static const String CONNECT_TIMEOUT = AppStrings.strTimeoutError;
  static const String CANCEL = AppStrings.strDefaultError;
  static const String RECIEVE_TIMEOUT = AppStrings.strTimeoutError;
  static const String SEND_TIMEOUT = AppStrings.strTimeoutError;
  static const String CACHE_ERROR = AppStrings.strCacheError;
  static const String NO_INTERNET_CONNECTION = AppStrings.strNoInternetError;
  static const String CONNECTION_ERROR = AppStrings.strConnectionError;
  static const String INSECURE_CONNECTION = AppStrings.strInsecureConnectionError;
  static const String DEFAULT = AppStrings.strDefaultError;
}

class ApiInternalStatus {
  static const int SUCCESS = 200;
  static const int FAILURE = 400;
}
