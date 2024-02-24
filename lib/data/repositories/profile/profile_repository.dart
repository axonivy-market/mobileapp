import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/data/models/profile/profile.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Profile>> getProfileInfo();
}
