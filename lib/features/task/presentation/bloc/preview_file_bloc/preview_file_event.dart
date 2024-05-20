part of 'preview_file_bloc.dart';

@freezed
class PreviewFileEvent with _$PreviewFileEvent {
  const factory PreviewFileEvent.previewFile(
      bool isOffline, Document document) = _PreviewFile;

  const factory PreviewFileEvent.deletePreviewFile() = _DeletePreviewFile;
}
