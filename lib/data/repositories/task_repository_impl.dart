import 'package:axon_ivy/core/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/network/dio_error_handler.dart';
import '../data_sources/task_remote_data_source.dart';
import 'task_repository.dart';
import 'package:axon_ivy/data/models/task/task.dart';

@Injectable(as: TaskRepository)
class TaskRepositoryImpl extends TaskRepository {
  TaskRepositoryImpl(this._remoteDataSource);

  final TaskRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<TaskIvy>>> getTasks() async {
    try {
      final result = await _remoteDataSource.getTasks();
      return right(result);
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }
}