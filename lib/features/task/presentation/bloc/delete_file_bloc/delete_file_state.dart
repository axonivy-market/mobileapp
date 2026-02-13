part of 'delete_file_bloc.dart';

@freezed
abstract class DeleteFileState with _$DeleteFileState {
  const factory DeleteFileState.loading() = DeleteLoadingState;
  const factory DeleteFileState.error(String error) = DeleteErrorState;
  const factory DeleteFileState.success(String message) = DeleteSuccessState;
}
