import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/process/domain/entities/process.dart';
import 'package:fpdart/fpdart.dart';

abstract class ProcessRepositoryInterface {
  Future<Either<Failure, List<Process>>> getProcesses();
}
