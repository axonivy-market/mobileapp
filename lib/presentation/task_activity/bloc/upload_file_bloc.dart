import 'dart:io';

import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/repositories/upload_file/upload_file_repository.dart';
import 'package:axon_ivy/util/resources/constants.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'upload_file_bloc.freezed.dart';
part 'upload_file_event.dart';
part 'upload_file_state.dart';

enum UploadFileType { recent, images, camera }

@injectable
class UploadFileBloc extends Bloc<UploadFileEvent, UploadFileState> {
  final UploadFileRepository _uploadFileRepository;
  String uploadMessage = "";
  int maxFileSize = 10000000;
  UploadFileBloc(this._uploadFileRepository)
      : super(const UploadFileState.loading(false)) {
    on<_UploadFiles>(_uploadFile);

    getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : SharedPrefs.getBaseUrl!;
  }

  Future<void> _uploadFile(event, Emitter<UploadFileState> emit) async {
    UploadFileType type;
    if (event is UploadFileEvent) {
      type = event.type;
    } else {
      return;
    }

    switch (type) {
      case UploadFileType.recent:
        await getFileRecent(caseId: event.caseId, emit: emit);
        uploadMessage = "";
        break;
      case UploadFileType.images:
        await getImages(caseId: event.caseId, emit: emit);
        uploadMessage = "";
        break;
      case UploadFileType.camera:
        await usingCamera(caseId: event.caseId, emit: emit);
        uploadMessage = "";
        break;
    }
    return;
  }

  Future<void> getFileRecent(
      {required int caseId, required Emitter emit}) async {
    FilePickerResult? result;

    result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      allowMultiple: true,
    );
    emit(const UploadFileState.loading(true));
    if (result != null) {
      for (var file in result.files) {
        if (file.size < maxFileSize) {
          // 10MB
          File fileUpload = File(file.path!);

          await uploadFiles(
              caseId: caseId,
              file: fileUpload,
              emit: emit,
              fileName: file.name);
        } else {
          uploadMessage +=
              "uploadFile.fileTooLarge".tr(namedArgs: {'fileName': file.name});
        }
      }
      if (uploadMessage.contains("successfully")) {
        emit(UploadFileState.success(uploadMessage));
      } else {
        emit(UploadErrorState(uploadMessage));
      }
    } else {
      emit(UploadErrorState('uploadFile.cannotSelectFiles'.tr()));
    }
  }

  Future<void> uploadFiles(
      {required int caseId,
      required File file,
      required Emitter emit,
      bool isUsingCamera = false,
      required String fileName}) async {
    try {
      FormData data = FormData.fromMap(
        {
          "file": await MultipartFile.fromFile(
            file.path,
            filename: file.path.split('/').last,
          ),
        },
      );

      final tasks = await _uploadFileRepository.uploadFiles(
          caseId, APIHeader.contentType, APIHeader.requestBy, data);

      tasks.fold(
        (l) {
          uploadMessage +=
              "uploadFile.failUpload".tr(namedArgs: {'fileName': fileName});
        },
        (r) {
          uploadMessage += "${r.message}\n";
        },
      );
    } catch (e) {
      uploadMessage +=
          "uploadFile.failUpload".tr(namedArgs: {'fileName': fileName});
    }
  }

  Future<void> getImages({required int caseId, required Emitter emit}) async {
    FilePickerResult? result;

    result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );

    emit(const UploadFileState.loading(true));
    if (result != null) {
      for (var file in result.files) {
        if (file.size < maxFileSize) {
          // 10MB
          File fileUpload = File(file.path!);

          await uploadFiles(
              caseId: caseId,
              file: fileUpload,
              emit: emit,
              fileName: file.name);
        } else {
          uploadMessage +=
              "uploadFile.fileTooLarge".tr(namedArgs: {'fileName': file.name});
        }
      }
      if (uploadMessage.contains("successfully")) {
        emit(UploadFileState.success(uploadMessage));
      } else {
        emit(UploadErrorState(uploadMessage));
      }
    } else {
      emit(UploadErrorState('uploadFile.cannotSelectFiles'.tr()));
    }
  }

  Future<void> usingCamera({required int caseId, required Emitter emit}) async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) {
      emit(UploadFileState.error(uploadMessage));
      return;
    }
    emit(const UploadFileState.loading(true));
    File file = File(image.path);
    if (file.lengthSync() < maxFileSize) {
      await uploadFiles(
          caseId: caseId, file: file, emit: emit, fileName: image.name);
      emit(UploadFileState.success(uploadMessage));
    } else {
      uploadMessage +=
          "uploadFile.fileTooLarge".tr(namedArgs: {'fileName': image.name});
      emit(UploadFileState.error(uploadMessage));
    }
  }
}
