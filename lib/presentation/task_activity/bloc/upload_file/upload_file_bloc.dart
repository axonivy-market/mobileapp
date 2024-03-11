import 'dart:io';

import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/repositories/file/file_repository.dart';
import 'package:axon_ivy/util/resources/constants.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;

part 'upload_file_bloc.freezed.dart';
part 'upload_file_event.dart';
part 'upload_file_state.dart';

enum UploadFileType { recent, images, camera }

@injectable
class UploadFileBloc extends Bloc<UploadFileEvent, UploadFileState> {
  final FileRepository _uploadFileRepository;
  String uploadMessage = "";
  int maxFileSize = 10000000;
  var filePath = "";
  var fileName = "";
  var caseId = 0;
  var fileType = "";
  File? cameraFile;

  UploadFileBloc(this._uploadFileRepository)
      : super(const UploadFileState.loading(false)) {
    on<_UploadFiles>(_uploadFile);
    on<_ChangeFileName>(_changeFileName);

    getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : SharedPrefs.getBaseUrl!;
  }

  Future _changeFileName(
      _ChangeFileName event, Emitter<UploadFileState> emit) async {
    final newFileName = "${event.fileName}.$fileType";

    if (fileName != newFileName) {
      String dir = path.dirname(filePath);
      String newName = path.join(dir, newFileName);
      File file = cameraFile!.renameSync(newName);
      emit(const UploadFileState.loading(true));
      await uploadFiles(
          caseId: caseId, file: file, emit: emit, fileName: newFileName);
    } else {
      emit(const UploadFileState.loading(true));

      await uploadFiles(
          caseId: caseId, file: cameraFile!, emit: emit, fileName: fileName);
    }

    cameraFile = null;
    emit(UploadFileState.success(uploadMessage));
    uploadMessage = "";
    FilePicker.platform.clearTemporaryFiles();
    return;
  }

  Future _uploadFile(_UploadFiles event, Emitter<UploadFileState> emit) async {
    UploadFileType type;
    type = event.type;
    caseId = event.caseId;
    switch (type) {
      case UploadFileType.recent:
        await getFileRecent(caseId: event.caseId, emit: emit);
        uploadMessage = "";
        FilePicker.platform.clearTemporaryFiles();
        break;
      case UploadFileType.images:
        await getImages(caseId: event.caseId, emit: emit);
        uploadMessage = "";
        FilePicker.platform.clearTemporaryFiles();

        break;
      case UploadFileType.camera:
        await usingCamera(caseId: event.caseId, emit: emit);
        break;
    }
    return;
  }

  Future getFileRecent({required int caseId, required Emitter emit}) async {
    FilePickerResult? result;

    result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );
    if (result != null) {
      PlatformFile platformFile = result.files.first;
      emit(const UploadFileState.loading(true));
      if (platformFile.size < maxFileSize) {
        File fileUpload = File(platformFile.path!);

        await uploadFiles(
            caseId: caseId,
            file: fileUpload,
            emit: emit,
            fileName: platformFile.name);
      } else {
        uploadMessage += "uploadFile.fileTooLarge"
            .tr(namedArgs: {'fileName': platformFile.name});
      }
      if (uploadMessage.contains("successfully")) {
        emit(UploadFileState.success(uploadMessage));
      } else {
        emit(UploadErrorState(uploadMessage));
      }
    } else {
      return;
    }
  }

  Future uploadFiles(
      {required int caseId,
      required File file,
      required Emitter emit,
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

  Future getImages({required int caseId, required Emitter emit}) async {
    FilePickerResult? result;

    result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      PlatformFile platformFile = result.files.first;
      emit(const UploadFileState.loading(true));
      if (platformFile.size < maxFileSize) {
        // 10MB
        File fileUpload = File(platformFile.path!);

        await uploadFiles(
            caseId: caseId,
            file: fileUpload,
            emit: emit,
            fileName: platformFile.name);
      } else {
        uploadMessage += "uploadFile.fileTooLarge"
            .tr(namedArgs: {'fileName': platformFile.name});
      }

      if (uploadMessage.contains("successfully")) {
        emit(UploadFileState.success(uploadMessage));
      } else {
        emit(UploadErrorState(uploadMessage));
      }
    } else {
      return;
    }
  }

  Future usingCamera({required int caseId, required Emitter emit}) async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) {
      return;
    }
    File file = File(image.path);
    List<String> imageFileName = image.path.split(".");
    String shortName =
        "${DateTime.now().millisecondsSinceEpoch}.${imageFileName.last}";
    String nameNoSuffix = "${DateTime.now().millisecondsSinceEpoch}";
    fileType = imageFileName.last;
    if (file.lengthSync() < maxFileSize) {
      String dir = path.dirname(image.path);
      String newName = path.join(dir, shortName);
      File fileWithShortName = File(image.path).renameSync(newName);

      cameraFile = fileWithShortName;
      filePath = fileWithShortName.path;
      fileName = shortName;
      emit(UploadChangeFileNameState(nameNoSuffix));
    } else {
      uploadMessage +=
          "uploadFile.fileTooLarge".tr(namedArgs: {'fileName': shortName});
    }
  }
}
