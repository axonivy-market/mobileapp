import 'package:axon_ivy/data/models/profile/profile.dart';

abstract class ProfileRemoteDataSource {
  Future<Profile> getProfileInfo();
}
