import 'package:axon_ivy/features/notification/data/models/notification_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'notification_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class NotificationRemoteDataSource {
  @factoryMethod
  factory NotificationRemoteDataSource(Dio dio) = _NotificationRemoteDataSource;

  @GET('/api/notifications')
  Future<List<NotificationModel>> getNotifications(
    @Query('page') int? page,
    @Query('pageSize') int? pageSize,
  );

  @PATCH('/api/notifications/{uuid}')
  Future markReadNotification(
    @Path('uuid') String uuid,
    @Header('X-Requested-By') String requestBy,
    @Body() body,
  );
}
