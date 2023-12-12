import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/data/repositories/process_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'process_bloc.freezed.dart';
part 'process_event.dart';
part 'process_state.dart';

@injectable
class ProcessBloc extends Bloc<ProcessEvent, ProcessState> {
  final ProcessRepository _processRepository;

  ProcessBloc(this._processRepository)
      : super(const ProcessState.loading(false)) {
    on<_GetProcess>(_getProcesses);
    getIt<Dio>().options.baseUrl = (SharedPrefs.getBaseUrl.isEmptyOrNull
        ? AppConfig.baseUrl
        : SharedPrefs.getBaseUrl)!;
  }

  Future<void> _getProcesses(event, Emitter emitter) async {
    print("_getProcesses");
    emit(const ProcessState.loading(true));
    try {
      final processes = await _processRepository.getProcesses();
      print("----> $processes");
      processes.fold(
        (l) => emit(ProcessState.error(l)),
        (r) {},
      );
    } on AppError catch (e) {}
  }
}
