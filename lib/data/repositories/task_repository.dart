import 'package:dartz/dartz.dart';
import '../../core/network/dio_error_handler.dart';
import 'package:axon_ivy/data/models/task/task.dart';

abstract class TaskRepository {
  Future<Either<AppError, List<TaskIvy>>> getTasks();
}
