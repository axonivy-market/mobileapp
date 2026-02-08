import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/domain/repositories/task_repository_interface.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTaskUseCase {
  final TaskRepositoryInterface repository;

  GetTaskUseCase({required this.repository});

  Future<Either<Failure, TaskIvy>> execute({required int taskId}) async {
    try {
      final result = await repository.getTaskDetail(taskId: taskId);
      return result;
    } catch (error) {
      return left(AppError.handle(error).failure);
    }
  }
}
