import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/data/repositories/process/process_repository.dart';
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
  final ProcessRepository _processRepository;
  List<Process> processes = [];

  ProcessBloc(this._processRepository) : super(const ProcessState.initial()) {
    on<GetProcess>(_getProcesses);
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
      final response = await _processRepository.getProcesses();
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
}
