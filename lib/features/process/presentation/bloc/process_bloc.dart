import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/features/process/domain/entities/process.dart';
import 'package:axon_ivy/features/process/domain/usecases/get_processes_use_case.dart';
import 'package:axon_ivy/shared/extensions/string_ext.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'process_bloc.freezed.dart';
part 'process_event.dart';
part 'process_state.dart';

@injectable
class ProcessBloc extends Bloc<ProcessEvent, ProcessState> {
  final GetProcessesUseCase _processRepository;
  List<Process> processes = [];

  ProcessBloc(this._processRepository) : super(const ProcessState.initial()) {
    on<GetProcess>(_getProcesses);
    on<ShowOfflinePopupEvent>(_showOfflinePopupEvent);
    getIt<Dio>().options.baseUrl = (SharedPrefs.getBaseUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : SharedPrefs.getBaseUrl)!;
  }

  Future<void> _getProcesses(GetProcess event, Emitter emitter) async {
    if (state is ProcessLoadingState) {
      return;
    }
    emitter(const ProcessState.loading(true));
    try {
      final response = await _processRepository.execute();
      response.fold(
        (error) {
          emitter(ProcessState.success(processes: processes, isOnline: false));
        },
        (processes) {
          SharedPrefs.setLastUpdated(DateTime.now().millisecondsSinceEpoch);
          this.processes = processes;
          emitter(ProcessState.success(processes: processes));
        },
      );
    } catch (e) {
      emitter(ProcessState.success(processes: processes, isOnline: false));
    }
  }

  void _showOfflinePopupEvent(event, Emitter emit) {
    emit(ProcessState.success(
        processes: processes, isOnline: event.isConnected));
  }
}
