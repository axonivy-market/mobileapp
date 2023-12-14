import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:dartz/dartz.dart';

abstract class ProcessRepository {
  Future<Either<AppError, List<Process>>> getProcesses();
}
