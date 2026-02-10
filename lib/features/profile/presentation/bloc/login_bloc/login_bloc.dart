import 'dart:async';

import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/search/domain/usecases/get_engine_info_use_case.dart';
import 'package:axon_ivy/shared/extensions/string_ext.dart';
import 'package:axon_ivy/shared/resources/validators.dart';
import 'package:axon_ivy/shared/storage/secure_storage.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/di_setup.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetEngineInfoUseCase _engineInfoRepository;

  LoginBloc(this._engineInfoRepository) : super(const LoginState()) {
    on<_SubmitLogin>(_submitLogin);
    on<_UsernameOnChanged>(_usernameOnChanged);
    on<_PasswordOnChanged>(_passwordOnChanged);
    on<_UrlOnChanged>(_urlOnChanged);
  }

  void _urlOnChanged(_UrlOnChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(
        url: event.value, status: LoginStatus.init, invalidUrlMessage: null));
  }

  void _usernameOnChanged(_UsernameOnChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(
        username: event.value,
        status: LoginStatus.init,
        invalidUsernameMessage: null));
  }

  void _passwordOnChanged(_PasswordOnChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(
        password: event.value,
        status: LoginStatus.init,
        invalidPasswordMessage: null));
  }

  FutureOr<void> _submitLogin(event, Emitter emit) async {
    emit(const LoginState(status: LoginStatus.loading));
    final isDemoSetting = SharedPrefs.demoSetting ?? false;
    if (isDemoSetting) {
      getIt<Dio>().options.baseUrl = DemoConfig.demoServerUrl.isEmptyOrNull
          ? AppConfig.baseUrl
          : DemoConfig.demoServerUrl;
    } else {
      getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
          ? AppConfig.baseUrl
          : SharedPrefs.getBaseUrl!;
    }
    final uri = Uri.tryParse(getIt<Dio>().options.baseUrl);
    if (uri == null || uri.host.isEmptyOrNull) {
      emit(LoginState(
          status: LoginStatus.error,
          error: Failure(400, "notFoundError".tr())));
      return;
    }
    final invalidUrlMessage =
        Validators.validateNotEmpty(event.url, FieldType.url);
    final invalidPasswordMessage =
        Validators.validateNotEmpty(event.password, FieldType.password);
    final invalidUsernameMessage =
        Validators.validateNotEmpty(event.username, FieldType.username);
    if (invalidUrlMessage.isNotEmptyOrNull ||
        invalidUsernameMessage.isNotEmptyOrNull ||
        invalidPasswordMessage.isNotEmptyOrNull) {
      emit(LoginState(
          invalidPasswordMessage: invalidPasswordMessage,
          invalidUrlMessage: invalidUrlMessage,
          invalidUsernameMessage: invalidUsernameMessage));
    } else {
      try {
        final engineInfo = await _engineInfoRepository.execute();

        if (engineInfo.isLeft()) {
          await SecureStorage.clearCredentials();
          SharedPrefs.clear();
          final failure = engineInfo.fold((l) => l, (r) => null);
          emit(LoginState(status: LoginStatus.error, error: failure));
        } else {
          SharedPrefs.setLastUpdated(DateTime.now().millisecondsSinceEpoch);
          SharedPrefs.setIsLogin(true);
          SharedPrefs.setDemoSetting(false);
          emit(const LoginState(status: LoginStatus.success));
        }
      } catch (e) {
        await SecureStorage.clearCredentials();
        SharedPrefs.clear();
        emit(LoginState(
            status: LoginStatus.error, error: AppError.handle(e).failure));
      }
    }
  }
}
