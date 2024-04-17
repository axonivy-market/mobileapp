part of 'delete_file_bloc.dart';

@freezed
class DeleteFileEvent with _$DeleteFileEvent {
  const factory DeleteFileEvent.deleteFile(
      int caseId, Document document, int taskId, bool offline) = _DeleteFile;
}
