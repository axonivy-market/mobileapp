part of 'process_bloc.dart';

@freezed
class ProcessEvent with _$ProcessEvent {
  const factory ProcessEvent.getProcess() = GetProcess;

  const factory ProcessEvent.showOfflinePopupEvent(bool isConnected) =
      ShowOfflinePopupEvent;
}
