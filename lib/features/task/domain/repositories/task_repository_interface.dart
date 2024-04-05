import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:dartz/dartz.dart';

abstract class TaskRepositoryInterface {
  Future<Either<Failure, List<TaskIvy>>> getTaskList();
  Future<Either<Failure, TaskIvy>> getTaskDetail({required int taskId});
}
