part of 'preview_file_bloc.dart';

@freezed
class PreviewFileState with _$PreviewFileState {
  const factory PreviewFileState.loading() = PreviewLoadingState;

  const factory PreviewFileState.error(String error) = PreviewErrorState;

  const factory PreviewFileState.success(String filePath, String fileName) =
      PreviewSuccessState;
}
