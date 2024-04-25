import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/extensions/string_ext.dart';
import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/util/resources/constants.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/models/enums/file_local_state_enum.dart';
import 'package:axon_ivy/features/task/data/datasources/hive_task_storage.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:axon_ivy/features/task/domain/usecases/delete_file_use_case.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_file_bloc.freezed.dart';

part 'delete_file_event.dart';

part 'delete_file_state.dart';

@injectable
class DeleteFileBloc extends Bloc<DeleteFileEvent, DeleteFileState> {
  final DeleteFileUseCase _fileRepository;
  final HiveTaskStorage _hiveTaskStorage;

  DeleteFileBloc(this._fileRepository, this._hiveTaskStorage)
      : super(const DeleteFileState.loading()) {
    on<_DeleteFile>(deleteFile);
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

  Future deleteFile(DeleteFileEvent event, Emitter emit) async {
    emit(const DeleteFileState.loading());
    try {
      if (event.document.fileLocalState ==
          FileLocalStateEnum.kPendingUpload.value) {
        _hiveTaskStorage.deleteDocument(event.caseId, event.document.name);
        emit(DeleteFileState.success("documentList.deleteFileSuccess"
            .tr(namedArgs: {'fileName': event.document.name})));
        return;
      }
      final tasks = await _fileRepository.execute(
          event.caseId, event.document.id, APIHeader.requestBy);
      tasks.fold(
        (l) {
          if (event.offline) {
            if (event.document.fileLocalState ==
                FileLocalStateEnum.kNew.value) {
              _hiveTaskStorage.updateDocumentState(
                  event.caseId,
                  event.document.name,
                  FileLocalStateEnum.kMarkedForDeletion.value);
            } else {
              _hiveTaskStorage.deleteDocument(
                  event.caseId, event.document.name);
            }
            emit(DeleteFileState.success("documentList.deleteFileSuccess"
                .tr(namedArgs: {'fileName': event.document.name})));
          } else {
            emit(
              DeleteFileState.error(l.message),
            );
          }
        },
        (r) {
          if (event.offline) {
            _hiveTaskStorage.deleteDocument(event.caseId, event.document.name);
          }
          emit(DeleteFileState.success(r.message));
        },
      );
    } catch (e) {
      if (event.offline) {
        if (event.document.fileLocalState == FileLocalStateEnum.kNew.value) {
          _hiveTaskStorage.updateDocumentState(event.caseId,
              event.document.name, FileLocalStateEnum.kMarkedForDeletion.value);
        } else {
          _hiveTaskStorage.deleteDocument(event.caseId, event.document.name);
        }
        emit(DeleteFileState.success("documentList.deleteFileSuccess"
            .tr(namedArgs: {'fileName': event.document.name})));
      } else {
        emit(
          DeleteFileState.error(AppError.handle(e).failure.message),
        );
      }
    }
  }
}
