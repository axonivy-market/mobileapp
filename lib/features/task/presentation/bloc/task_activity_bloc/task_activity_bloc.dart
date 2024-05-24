import 'dart:io';

import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/shared/enums/task_state_enum.dart';
import 'package:axon_ivy/shared/utils/authorization_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

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
      HttpHeaders.authorizationHeader: AuthorizationUtils.authorizationHeader,
    };
    TaskIvy taskIvy = event.taskIvy;

    try {
      var uri = Uri.parse(dio.options.baseUrl);
      var submitFullUrl =
          "${uri.scheme}://${uri.host}${taskIvy.submitUrlOffline}";
      final response = await http.post(
        Uri.parse(submitFullUrl),
        headers: headers,
        body: taskIvy.doneTaskFormDataSerializedOffline,
      );
      _finishTask(emit, response.headers, taskIvy);
    } catch (e) {
      var caseTask = _hiveTaskStorage.getCaseByTaskId(taskIvy.id);
      var task = taskIvy.copyWith(
          state: TaskStateEnum.doneInOffline.value, caseTask: caseTask);
      _hiveTaskStorage.addTask(task);
      emit(FinishedTaskOffline(task));
    }
  }

  void _finishTask(Emitter emit, Map<String, String> headers, TaskIvy taskIvy) {
    String finishedTask = headers[Constants.ivyFinishedTask] ?? "";
    String currentRunningTask = headers[Constants.ivyCurrentRunningTask] ?? "";
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
