import 'dart:convert';

import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/features/task/data/datasources/hive_task_storage.dart';
import 'package:axon_ivy/shared/extensions/string_ext.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'logged_in_cubit.freezed.dart';

part 'logged_in_state.dart';

@injectable
class LoggedInCubit extends Cubit<LoggedInState> {
  final HiveTaskStorage _hiveTaskStorage;

  LoggedInCubit(this._hiveTaskStorage) : super(const LoggedInState.initial());

  String displayShortNameAvatar(String name) {
    return name
        .split(' ')
        .where((word) => word.isNotEmpty)
        .take(2)
        .map((word) => word[0])
        .join();
  }

  String getGravatarUrl(String email) {
    var bytes = utf8.encode(email);
    var digest = md5.convert(bytes);
    var url = "${Constants.gravatarUrl}/$digest?s=200&d=404";
    return url;
  }

  void loggedIn(bool isLogged) {
    if (!isLogged) {
      _hiveTaskStorage.removeAllTasks();
    }
    emit(LoggedInState.loggedIn(isLogged));
  }

  void setDemoUser() {
    SharedPrefs.setIsLogin(true);

    getIt<Dio>().options.baseUrl = DemoConfig.demoServerUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : DemoConfig.demoServerUrl;
  }
}
