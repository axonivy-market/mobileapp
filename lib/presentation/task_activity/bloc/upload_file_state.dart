part of 'upload_file_bloc.dart';

@freezed
class UploadFileState with _$UploadFileState {
  const factory UploadFileState.loading(bool isShowLoading) =
      UploadLoadingState;
  const factory UploadFileState.error(String error) = UploadErrorState;
  const factory UploadFileState.success(String fileNames) = UploadSuccessState;
  const factory UploadFileState.changeFileName(String fileName) =
      UploadChangeFileNameState;
}
