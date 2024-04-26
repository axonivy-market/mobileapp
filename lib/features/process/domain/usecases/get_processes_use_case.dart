import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/process/domain/entities/process.dart';
import 'package:axon_ivy/features/process/domain/repositories/process_repository_inteface.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProcessesUseCase {
  final ProcessRepositoryInterface repository;

  GetProcessesUseCase({required this.repository});

  Future<Either<Failure, List<Process>>> execute() async {
    try {
      final result = await repository.getProcesses();
      return result;
    } catch (error) {
      return left(AppError.handle(error).failure);
    }
  }
}
