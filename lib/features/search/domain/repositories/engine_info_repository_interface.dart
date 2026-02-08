import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/search/domain/entities/engine_info.dart';
import 'package:fpdart/fpdart.dart';

abstract class EngineInfoRepositoryInterface {
  Future<Either<Failure, EngineInfo>> getEngineInfo();
}
