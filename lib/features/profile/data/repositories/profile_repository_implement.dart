import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:axon_ivy/features/profile/domain/entities/profile/profile.dart';
import 'package:axon_ivy/features/profile/domain/repositories/profile_repository_interface.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRepositoryInterface)
class ProfileRepositoryImplement implements ProfileRepositoryInterface {
  ProfileRepositoryImplement(this._profileRemoteDataSource);

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
