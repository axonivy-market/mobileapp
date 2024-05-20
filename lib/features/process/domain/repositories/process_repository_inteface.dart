import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/process/domain/entities/process.dart';
import 'package:dartz/dartz.dart';

abstract class ProcessRepositoryInterface {
  Future<Either<Failure, List<Process>>> getProcesses();
}
