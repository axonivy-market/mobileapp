import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/features/process/data/datasources/process_remote_data_source.dart';
import 'package:axon_ivy/features/process/domain/entities/process.dart';
import 'package:axon_ivy/features/process/domain/repositories/process_repository_inteface.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/failure.dart';

@Injectable(as: ProcessRepositoryInterface)
class ProcessRepositoryImplement implements ProcessRepositoryInterface {
  ProcessRepositoryImplement(this._processRemoteDataSource);

  final ProcessRemoteDataSource _processRemoteDataSource;

  @override
  Future<Either<Failure, List<Process>>> getProcesses() async {
    try {
      final result = await _processRemoteDataSource.getProcesses();
      return right(result);
    } catch (exception) {
      return left(AppError.handle(exception).failure);
    }
  }
}
