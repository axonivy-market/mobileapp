part of 'upload_file_bloc.dart';

@freezed
abstract class UploadFileState with _$UploadFileState {
  const factory UploadFileState.loading() = UploadLoadingState;
  const factory UploadFileState.error(String error) = UploadErrorState;
  const factory UploadFileState.success(String message, String fileNames) =
      UploadSuccessState;
  const factory UploadFileState.changeFileName(String fileName) =
      UploadChangeFileNameState;
}
