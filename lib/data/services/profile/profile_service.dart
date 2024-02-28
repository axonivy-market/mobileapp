import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/data/models/profile/profile.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_service.g.dart';

@RestApi()
@injectable
abstract class ProfileService {
  @factoryMethod
  factory ProfileService(Dio dio) = _ProfileService;

  @GET('/api/me')
  Future<Profile> getProfileInfo();
}
