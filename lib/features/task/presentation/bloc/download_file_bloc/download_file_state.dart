part of 'download_file_bloc.dart';

@freezed
class DownloadFileState with _$DownloadFileState {
  const factory DownloadFileState.loading() = DownloadLoadingState;
  const factory DownloadFileState.error(String error) = DownloadErrorState;
  const factory DownloadFileState.success(String message) =
      DownloadSuccessState;
}
