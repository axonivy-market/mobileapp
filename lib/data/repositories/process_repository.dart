import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:dartz/dartz.dart';

abstract class ProcessRepository {
  Future<Either<Failure, List<Process>>> getProcesses();
}
