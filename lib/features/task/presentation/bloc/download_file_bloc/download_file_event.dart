part of 'download_file_bloc.dart';

@freezed
class DownloadFileEvent with _$DownloadFileEvent {
  const factory DownloadFileEvent.downloadFile(String fileName, String url) =
      _DownloadFile;
}
