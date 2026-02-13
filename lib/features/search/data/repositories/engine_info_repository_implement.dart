import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/search/data/datasources/engine_info_remote_data_source.dart';
import 'package:axon_ivy/features/search/domain/entities/engine_info.dart';
import 'package:axon_ivy/features/search/domain/repositories/engine_info_repository_interface.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: EngineInfoRepositoryInterface)
class EngineInfoRepositoryImplement implements EngineInfoRepositoryInterface {
  EngineInfoRepositoryImplement(this._engineInfoRemoteDataSource);

  final EngineInfoRemoteDataSource _engineInfoRemoteDataSource;

  @override
  Future<Either<Failure, EngineInfo>> getEngineInfo() async {
    try {
      final result = await _engineInfoRemoteDataSource.getEngineInfo();
      return right(result);
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }
}
