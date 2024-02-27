import 'package:axon_ivy/data/data_sources/profile/profile_remote_data_source.dart';
import 'package:axon_ivy/data/models/profile/profile.dart';
import 'package:axon_ivy/data/services/profile/profile_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  ProfileRemoteDataSourceImpl(this._service);

  final ProfileService _service;

  @override
  Future<Profile> getProfileInfo() {
    return _service.getProfileInfo();
  }
}
