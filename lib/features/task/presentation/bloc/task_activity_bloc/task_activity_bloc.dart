import 'dart:io';

import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/shared/enums/task_state_enum.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app/app.dart';
import '../../../data/datasources/hive_task_storage.dart';

part 'task_activity_event.dart';

part 'task_activity_state.dart';

part 'task_activity_bloc.freezed.dart';

@injectable
class TaskActivityBloc extends Bloc<TaskActivityEvent, TaskActivityState> {
  final HiveTaskStorage _hiveTaskStorage;

  TaskActivityBloc(this._hiveTaskStorage)
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
      _finishTask(emit, response.headers, taskIvy);
    } on DioException catch (e) {
      _finishTask(emit, e.response?.headers, taskIvy);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _finishTask(Emitter emit, Headers? headers, TaskIvy taskIvy) {
    String finishedTask = headers?.map[Constants.ivyFinishedTask]?.first ?? "";
    String currentRunningTask =
        headers?.map[Constants.ivyCurrentRunningTask]?.first ?? "";
    var isFinishedTask = finishedTask.isNotEmpty && currentRunningTask.isEmpty;
    if (isFinishedTask) {
      _hiveTaskStorage.removeTask(taskIvy.id);
      emit(FinishedTaskOffline(taskIvy));
    } else {
      var caseTask = _hiveTaskStorage.getCaseByTaskId(taskIvy.id);
      var task = taskIvy.copyWith(
          state: TaskStateEnum.doneInOffline.value, caseTask: caseTask);
      _hiveTaskStorage.addTask(task);
      emit(FinishedTaskOffline(task));
    }
  }
}
