part of 'preview_file_bloc.dart';

@freezed
class PreviewFileEvent with _$PreviewFileEvent {
  const factory PreviewFileEvent.previewFile(String fileName, String url) =
      _PreviewFile;
  const factory PreviewFileEvent.deletePreviewFile() = _DeletePreviewFile;
}
