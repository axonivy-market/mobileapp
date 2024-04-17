import 'dart:convert';
import 'dart:io';

import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/extensions/string_ext.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

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
        Directory dir = await getApplicationDocumentsDirectory();
        // Directory? dirDownload = await getDownloadsDirectory();
        String fileName = event.fileName;
        String filePath = '${dir.path}/$fileName';
        File file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);

        emit(
          DownloadFileState.success(
            "downloadFile.downloadSuccess".tr(
              namedArgs: {'fileName': fileName},
            ),
          ),
        );
      } else {
        emit(
          DownloadFileState.error(
            "downloadFile.failToDownload".tr(
              namedArgs: {'fileName': event.fileName},
            ),
          ),
        );
      }
    } catch (e) {
      emit(
        DownloadFileState.error(
          "downloadFile.failToDownload".tr(
            namedArgs: {'fileName': event.fileName},
          ),
        ),
      );
    }
  }
}
