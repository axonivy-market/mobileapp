import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/data/repositories/task/task_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'task_detail_bloc.freezed.dart';
part 'task_detail_event.dart';
part 'task_detail_state.dart';

@injectable
class TaskDetailBloc extends Bloc<TaskDetailEvent, TaskDetailState> {
  final TaskRepository _taskRepository;
  TaskDetailBloc(this._taskRepository)
      : super(const TaskDetailState.loading(false)) {
    on<_GetTaskDetail>(getTaskDetail);
    final isDemoSetting = SharedPrefs.demoSetting ?? false;
    if (isDemoSetting) {
      getIt<Dio>().options.baseUrl = DemoConfig.demoServerUrl.isEmptyOrNull
          ? AppConfig.baseUrl
          : DemoConfig.demoServerUrl;
    } else {
      getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
          ? AppConfig.baseUrl
          : SharedPrefs.getBaseUrl!;
    }
  }

  Future getTaskDetail(TaskDetailEvent event, Emitter emit) async {
    emit(const TaskDetailState.loading(true));
    try {
      final tasks = await _taskRepository.getTaskDetail(event.taskId);
      tasks.fold(
        (l) {
          emit(
            TaskDetailState.error(l.message),
          );
        },
        (r) {
          emit(TaskDetailState.success(r));
        },
      );
    } catch (e) {
      emit(
        TaskDetailState.error(AppError.handle(e).failure.message),
      );
    }
  }
}
