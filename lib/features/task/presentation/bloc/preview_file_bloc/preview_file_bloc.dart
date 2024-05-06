import 'dart:io';

import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/shared/extensions/extensions.dart';
import 'package:axon_ivy/features/task/data/datasources/hive_task_storage.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
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
  int? caseId;
  bool isTaskOffline = false;
  final HiveTaskStorage _hiveTaskStorage;

  PreviewFileBloc(this._hiveTaskStorage)
      : super(const PreviewFileState.loading()) {
    on<PreviewFileEvent>((event, emit) async {
      await event.when(
        previewFile: (offline, document) async {
          isTaskOffline = offline;
          await previewFile(document, emit);
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

  Future previewFile(Document document, Emitter emit) async {
    emit(const PreviewFileState.loading());
    try {
      var url = document.url;
      if (isTaskOffline && document.fileUploadPath.isNotEmptyOrNull) {
        File file = File(document.fileUploadPath);
        var fileLocalExists = await file.exists();
        if (fileLocalExists) {
          emit(
            PreviewFileState.success(document.fileUploadPath),
          );
          return;
        } else {
          var documentLocal =
              _hiveTaskStorage.getDocumentByCase(caseId, document.name);
          url = documentLocal?.url.isEmpty == true
              ? document.url
              : documentLocal!.url;
        }
      }

      final response = await http.get(
        Uri.parse(url),
        headers: {"Authorization": AuthorizationUtils.authorizationHeader},
      );

      if (response.statusCode == 200) {
        Directory dir = await getTemporaryDirectory();

        String cacheTempFolder = '${dir.path}/$cacheFileName';
        String filePath = '$cacheTempFolder/${document.name}';
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
                .tr(namedArgs: {'fileName': document.name})),
          );
        }
      } else {
        emit(
          PreviewFileState.error("previewFile.failToPreview"
              .tr(namedArgs: {'fileName': document.name})),
        );
      }
    } catch (e) {
      emit(
        PreviewFileState.error("previewFile.failToPreview"
            .tr(namedArgs: {'fileName': document.name})),
      );
    }
  }
}
