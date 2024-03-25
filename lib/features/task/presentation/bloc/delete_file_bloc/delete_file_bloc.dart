import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/extensions/string_ext.dart';
import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/util/resources/constants.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/features/task/domain/usecases/delete_file_use_case.dart';
import 'package:dio/dio.dart';
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
  DeleteFileBloc(this._fileRepository)
      : super(const DeleteFileState.loading(false)) {
    on<_DeleteFile>(deleteFile);
    getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : SharedPrefs.getBaseUrl!;
  }

  Future deleteFile(DeleteFileEvent event, Emitter emit) async {
    emit(const DeleteFileState.loading(true));
    try {
      final tasks = await _fileRepository.execute(
          event.caseId, event.documentId, APIHeader.requestBy);
      tasks.fold(
        (l) {
          emit(
            DeleteFileState.error(l.message),
          );
        },
        (r) {
          emit(DeleteFileState.success(r.message));
        },
      );
    } catch (e) {
      emit(
        DeleteFileState.error(AppError.handle(e).failure.message),
      );
    }
  }
}
