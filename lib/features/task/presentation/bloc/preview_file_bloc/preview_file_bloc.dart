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

part 'preview_file_bloc.freezed.dart';

part 'preview_file_event.dart';

part 'preview_file_state.dart';

@injectable
class PreviewFileBloc extends Bloc<PreviewFileEvent, PreviewFileState> {
  static const String cacheFileName = 'temp';

  PreviewFileBloc() : super(const PreviewFileState.loading()) {
    on<PreviewFileEvent>((event, emit) async {
      await event.when(
        previewFile: (fileName, url) async {
          await previewFile(fileName, url, emit);
        },
        deletePreviewFile: () async {
          await deletePreviewFile(emit);
        },
      );
    });

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

  Future deletePreviewFile(Emitter emit) async {
    try {
      Directory dir = await getTemporaryDirectory();

      String cacheTempFolder = '${dir.path}/$cacheFileName';
      Directory(cacheTempFolder).deleteSync(recursive: true);
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future previewFile(String fileName, String url, Emitter emit) async {
    final username = SharedPrefs.getUsername;
    final password = SharedPrefs.getPassword;
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('$username:$password'))}';
    emit(const PreviewFileState.loading());

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {"Authorization": basicAuth},
      );

      if (response.statusCode == 200) {
        Directory dir = await getTemporaryDirectory();

        String cacheTempFolder = '${dir.path}/$cacheFileName';
        String filePath = '$cacheTempFolder/$fileName';
        await Directory(cacheTempFolder).create(recursive: true);

        File file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);
        final previewFile = File(filePath);

        final isFileExist = await previewFile.exists();

        if (isFileExist) {
          emit(
            PreviewFileState.success(filePath, fileName),
          );
        } else {
          emit(
            PreviewFileState.error("previewFile.failToPreview"
                .tr(namedArgs: {'fileName': fileName})),
          );
        }
      } else {
        emit(
          PreviewFileState.error("previewFile.failToPreview"
              .tr(namedArgs: {'fileName': fileName})),
        );
      }
    } catch (e) {
      emit(
        PreviewFileState.error(
            "previewFile.failToPreview".tr(namedArgs: {'fileName': fileName})),
      );
    }
  }
}
