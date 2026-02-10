part of 'process_bloc.dart';

@freezed
abstract class ProcessState with _$ProcessState {
  const factory ProcessState.initial() = InitialState;

  const factory ProcessState.loading(bool isShowLoading) = ProcessLoadingState;

  const factory ProcessState.error(String error) = ProcessErrorState;

  const factory ProcessState.success({
    required List<Process> processes,
    @Default(true) bool isOnline,
  }) = ProcessSuccessState;
}
