import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/task/data/datasources/task_remote_data_source/task_remote_data_source.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/domain/repositories/task_repository_interface.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TaskRepositoryInterface)
class TaskRepositoryImplement implements TaskRepositoryInterface {
  TaskRepositoryImplement(this._remoteDataSource);

  final TaskRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<TaskIvy>>> getTaskList() async {
    try {
      final response = await _remoteDataSource.getTasks();
      return right(response.map((model) => model.toEntity()).toList());
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, TaskIvy>> getTaskDetail({required int taskId}) async {
    try {
      final response = await _remoteDataSource.getTaskDetail(taskId);
      return right(response.toEntity());
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }
}
