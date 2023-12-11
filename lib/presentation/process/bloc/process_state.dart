part of 'process_bloc.dart';

@freezed
class ProcessState with _$ProcessState {
  const factory ProcessState.loading(bool isShowLoading) = ProcessLoadingState;

  const factory ProcessState.error(AppError error) = ProcessErrorState;

  const factory ProcessState.success(List<Process> processes) =
      ProcessSuccessState;
}
