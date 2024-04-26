import 'dart:convert';

import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/shared/extensions/string_ext.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:dio/dio.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

part 'download_file_bloc.freezed.dart';
part 'download_file_event.dart';
part 'download_file_state.dart';

@injectable
class DownloadFileBloc extends Bloc<DownloadFileEvent, DownloadFileState> {
  DownloadFileBloc() : super(const DownloadFileState.loading()) {
    on<_DownloadFile>(downloadFile);
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
  }

  Future downloadFile(DownloadFileEvent event, Emitter emit) async {
    final username = SharedPrefs.getUsername;
    final password = SharedPrefs.getPassword;
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('$username:$password'))}';
    emit(const DownloadFileState.loading());
    try {
      final response = await http.get(
        Uri.parse(event.url),
        headers: {"Authorization": basicAuth},
      );
      if (response.statusCode == 200) {
        String fileName = event.fileName;
        await FileSaver.instance.saveFile(
          name: fileName,
          bytes: response.bodyBytes,
        );

        emit(DownloadFileState.success(
            "Download ${event.fileName} successfully"));
      } else {
        emit(
            DownloadFileState.error("Fail to download file ${event.fileName}"));
      }
    } catch (e) {
      emit(DownloadFileState.error("Fail to download file ${event.fileName}"));
    }
  }
}
