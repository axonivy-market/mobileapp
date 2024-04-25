import 'dart:io';

import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/extensions/string_ext.dart';
import 'package:axon_ivy/core/util/resources/constants.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/models/enums/file_local_state_enum.dart';
import 'package:axon_ivy/features/task/data/datasources/hive_task_storage.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/domain/repositories/file_repository_interface.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'upload_file_bloc.freezed.dart';

part 'upload_file_event.dart';

part 'upload_file_state.dart';

enum UploadFileType { recent, images, camera }

@injectable
class UploadFileBloc extends Bloc<UploadFileEvent, UploadFileState> {
  final FileRepositoryInterface _uploadFileRepository;
  final HiveTaskStorage _hiveTaskStorage;
  String uploadMessage = "";
  int maxFileSize = 10000000;
  var filePath = "";
  var fileName = "";
  var caseId = 0;
  var fileType = "";
  File? cameraFile;
  TaskIvy? taskIvy;

  UploadFileBloc(this._uploadFileRepository, this._hiveTaskStorage)
      : super(const UploadFileState.loading()) {
    on<_UploadFiles>(_uploadFile);
    on<_ChangeFileName>(_changeFileName);
    on<CacheFileOfflineEvent>(_cacheFileOffline);

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

  Future _changeFileName(
      _ChangeFileName event, Emitter<UploadFileState> emit) async {
    final newFileName = "${event.fileName}.$fileType";

    if (fileName != newFileName) {
      String dir = path.dirname(filePath);
      String newName = path.join(dir, newFileName);
      File file = cameraFile!.renameSync(newName);
      emit(const UploadFileState.loading());
      await uploadFiles(
          caseId: caseId, file: file, emit: emit, fileName: newFileName);
      // emit(UploadFileState.success(uploadMessage, newFileName));
    } else {
      emit(const UploadFileState.loading());

      await uploadFiles(
          caseId: caseId, file: cameraFile!, emit: emit, fileName: fileName);
      // emit(UploadFileState.success(uploadMessage, fileName));
    }

    cameraFile = null;

    uploadMessage = "";
    FilePicker.platform.clearTemporaryFiles();
    return;
  }

  Future _uploadFile(_UploadFiles event, Emitter<UploadFileState> emit) async {
    UploadFileType type;
    type = event.type;
    taskIvy = event.taskIvy;
    caseId = event.taskIvy.caseTask!.id;
    switch (type) {
      case UploadFileType.recent:
        await getFileRecent(caseId: caseId, emit: emit);
        uploadMessage = "";
        FilePicker.platform.clearTemporaryFiles();
        break;
      case UploadFileType.images:
        await getImages(caseId: caseId, emit: emit);
        uploadMessage = "";
        FilePicker.platform.clearTemporaryFiles();
        break;
      case UploadFileType.camera:
        await usingCamera(caseId: caseId, emit: emit);
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
      emit(const UploadFileState.loading());
      if (platformFile.size < maxFileSize) {
        File fileUpload = File(platformFile.path!);

        await uploadFiles(
            caseId: caseId,
            file: fileUpload,
            emit: emit,
            fileName: platformFile.name);
      } else {
        uploadMessage = "uploadFile.fileTooLarge"
            .tr(namedArgs: {'fileName': platformFile.name});
        emit(UploadErrorState(uploadMessage));
      }
    } else {
      return;
    }
  }

  Future uploadFiles({
    required int caseId,
    required File file,
    required Emitter emit,
    required String fileName,
  }) async {
    Uint8List bytes = await file.readAsBytes();
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
        caseId: caseId,
        contentType: APIHeader.contentType,
        requestBy: APIHeader.requestBy,
        data: data,
      );

      tasks.fold(
        (l) {
          if (taskIvy?.offline == true) {
            add(UploadFileEvent.cacheFileOfflineEvent(
                bytes, fileName, FileLocalStateEnum.kPendingUpload.value));
          } else {
            uploadMessage =
                "uploadFile.failUpload".tr(namedArgs: {'fileName': fileName});
            emit(UploadErrorState(uploadMessage));
          }
        },
        (r) {
          _hiveTaskStorage.addDocument(taskIvy!.id, r.document);
          uploadMessage = r.message;
          emit(UploadFileState.success(uploadMessage, fileName));
        },
      );
    } catch (e) {
      if (taskIvy?.offline == true) {
        add(UploadFileEvent.cacheFileOfflineEvent(
            bytes, fileName, FileLocalStateEnum.kPendingUpload.value));
      } else {
        uploadMessage =
            "uploadFile.failUpload".tr(namedArgs: {'fileName': fileName});
        emit(UploadErrorState(uploadMessage));
      }
    }
  }

  Future getImages({required int caseId, required Emitter emit}) async {
    FilePickerResult? result;

    result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      PlatformFile platformFile = result.files.first;
      emit(const UploadFileState.loading());
      if (platformFile.size < maxFileSize) {
        // 10MB
        File fileUpload = File(platformFile.path!);
        await uploadFiles(
            caseId: caseId,
            file: fileUpload,
            emit: emit,
            fileName: platformFile.name);
      } else {
        uploadMessage = "uploadFile.fileTooLarge"
            .tr(namedArgs: {'fileName': platformFile.name});
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
      uploadMessage =
          "uploadFile.fileTooLarge".tr(namedArgs: {'fileName': shortName});
      emit(UploadErrorState(uploadMessage));
    }
  }

  Future _cacheFileOffline(CacheFileOfflineEvent event, Emitter emit) async {
    try {
      Directory dir = await getApplicationSupportDirectory();

      final subfolderDir = Directory(
          "${dir.path}/${AppConfig.appName.replaceAll(' ', '_').toLowerCase()}");
      bool isExists = await subfolderDir.exists();
      if (!isExists) {
        await subfolderDir.create(recursive: true);
      }
      String filePath = '${subfolderDir.path}/${event.fileName}';
      File file = File(filePath);
      await file.writeAsBytes(event.bytes);
      Document document = Document(
        id: DateTime.now().millisecondsSinceEpoch,
        name: event.fileName,
        fileLocalState: event.fileState,
        fileUploadPath: filePath,
      );

      _hiveTaskStorage.addDocument(taskIvy!.id, document);
      uploadMessage = "uploadFile.savedFileOfflineSuccess"
          .tr(namedArgs: {'fileName': event.fileName});
      emit(UploadFileState.success(uploadMessage, event.fileName));
    } catch (e) {
      uploadMessage =
          "uploadFile.failUpload".tr(namedArgs: {'fileName': event.fileName});
      emit(UploadErrorState(uploadMessage));
    }
  }
}
