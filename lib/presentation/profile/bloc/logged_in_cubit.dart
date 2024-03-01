import 'dart:convert';

import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logged_in_state.dart';

part 'logged_in_cubit.freezed.dart';

@injectable
class LoggedInCubit extends Cubit<LoggedInState> {
  LoggedInCubit() : super(const LoggedInState.initial());

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
    emit(LoggedInState.loggedIn(isLogged));
  }
}
