import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/profile/domain/entities/profile/profile.dart';
import 'package:fpdart/fpdart.dart';

abstract class ProfileRepositoryInterface {
  Future<Either<Failure, Profile>> getProfileInfo();
}
