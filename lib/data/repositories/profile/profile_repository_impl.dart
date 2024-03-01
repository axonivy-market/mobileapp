import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/data/data_sources/profile/profile_remote_data_source.dart';
import 'package:axon_ivy/data/models/profile/profile.dart';
import 'package:axon_ivy/data/repositories/profile/profile_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl(this._profileRemoteDataSource);

  final ProfileRemoteDataSource _profileRemoteDataSource;

  @override
  Future<Either<Failure, Profile>> getProfileInfo() async {
    try {
      final result = await _profileRemoteDataSource.getProfileInfo();
      return right(result);
    } catch (exception) {
      return left(AppError.handle(exception).failure);
    }
  }
}
