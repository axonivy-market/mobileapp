import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:dartz/dartz.dart';

abstract class TaskRepository {
  Future<Either<Failure, List<TaskIvy>>> getTasks();
  Future<Either<Failure, TaskIvy>> getTaskDetail(int taskId);
}
