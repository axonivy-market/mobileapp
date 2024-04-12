part of 'upload_file_bloc.dart';

@freezed
class UploadFileEvent with _$UploadFileEvent {
  const factory UploadFileEvent.uploadFiles(
      TaskIvy taskIvy, UploadFileType type) = _UploadFiles;

  const factory UploadFileEvent.changeFileName(String fileName) =
      _ChangeFileName;

  const factory UploadFileEvent.cacheFileOfflineEvent(
      File file, String fileName, int fileState) = CacheFileOfflineEvent;
}
