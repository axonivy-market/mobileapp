part of 'delete_file_bloc.dart';

@freezed
class DeleteFileEvent with _$DeleteFileEvent {
  const factory DeleteFileEvent.deleteFile(int caseId, int documentId) =
      _DeleteFile;
}
