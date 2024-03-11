import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/data/data_sources/process/process_remote_data_source.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/data/repositories/process/process_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network/failure.dart';

@Injectable(as: ProcessRepository)
class ProcessRepositoryImpl implements ProcessRepository {
  ProcessRepositoryImpl(this._processRemoteDataSource);

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
