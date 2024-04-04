part of 'upload_file_bloc.dart';

@freezed
class UploadFileEvent with _$UploadFileEvent {
  const factory UploadFileEvent.uploadFiles(int caseId, UploadFileType type) =
      _UploadFiles;
  const factory UploadFileEvent.changeFileName(String fileName) =
      _ChangeFileName;
}
