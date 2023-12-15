import 'package:axon_ivy/core/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:axon_ivy/data/models/task/task.dart';

abstract class TaskRepository {
  Future<Either<Failure, List<TaskIvy>>> getTasks();
}
