import 'package:axon_ivy/data/models/task/task.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'task_detail_state.dart';

part 'task_detail_cubit.freezed.dart';

@injectable
class TaskDetailCubit extends Cubit<TaskDetailState> {
  TaskDetailCubit() : super(const TaskDetailState.initial());

  void startTask(TaskIvy taskIvy) {
    emit(TaskDetailState.startTask(taskIvy, DateTime.now()));
  }
}
