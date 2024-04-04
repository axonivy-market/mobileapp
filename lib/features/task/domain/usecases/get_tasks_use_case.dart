import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/domain/repositories/task_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTaskListUseCase {
  final TaskRepositoryInterface repository;

  GetTaskListUseCase({required this.repository});

  Future<Either<Failure, List<TaskIvy>>> execute() async {
    try {
      final result = await repository.getTaskList();
      return result;
    } catch (error) {
      return left(AppError.handle(error).failure);
    }
  }
}
