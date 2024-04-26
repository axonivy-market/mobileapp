import 'package:axon_ivy/features/profile/domain/entities/profile/profile.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class ProfileRemoteDataSource {
  @factoryMethod
  factory ProfileRemoteDataSource(Dio dio) = _ProfileRemoteDataSource;

  @GET('/api/me')
  Future<Profile> getProfileInfo();
}
