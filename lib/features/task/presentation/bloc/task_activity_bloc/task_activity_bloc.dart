import 'dart:io';

import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/data/models/enums/task_state_enum.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app/app.dart';
import '../../../data/datasources/task_local_data_source.dart';

part 'task_activity_event.dart';

part 'task_activity_state.dart';

part 'task_activity_bloc.freezed.dart';

@injectable
class TaskActivityBloc extends Bloc<TaskActivityEvent, TaskActivityState> {
  final TaskLocalDataSource _taskLocalDataSource;

  TaskActivityBloc(this._taskLocalDataSource)
      : super(const TaskActivityState.initial()) {
    on<_FinishTaskOfflineEvent>(_finishTaskOffline);
  }

  Future<void> _finishTaskOffline(event, emit) async {
    emit(const TaskActivityState.loading(true));
    var dio = getIt<Dio>();
    final headers = {
      Constants.xRequestByHeader: Constants.xRequestBy,
      HttpHeaders.contentTypeHeader: Constants.formUrlEncodedContentType,
    };
    dio.options.headers = headers;
    TaskIvy taskIvy = event.taskIvy;
    try {
      final response = await dio.post(
        taskIvy.submitUrlOffline!,
        data: taskIvy.doneTaskFormDataSerializedOffline,
      );
      String finishedTask =
          response.headers.map[Constants.ivyFinishedTask]?.first ?? "";
      String currentRunningTask =
          response.headers.map[Constants.ivyCurrentRunningTask]?.first ?? "";
      var isFinishedTask =
          finishedTask.isNotEmpty && currentRunningTask.isEmpty;
      if (isFinishedTask) {
        _taskLocalDataSource.removeTask(taskIvy.id);
        emit(FinishedTaskOffline(taskIvy));
      } else {
        var task = taskIvy.copyWith(state: TaskStateEnum.doneInOffline.value);
        _taskLocalDataSource.addTask(task);
        emit(FinishedTaskOffline(task));
      }
    } catch (e) {
      var task = taskIvy.copyWith(state: TaskStateEnum.doneInOffline.value);
      _taskLocalDataSource.addTask(task);
      emit(FinishedTaskOffline(task));
    }
  }
}
