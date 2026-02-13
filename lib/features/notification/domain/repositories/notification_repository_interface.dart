import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/notification/domain/entities/notification.dart';
import 'package:fpdart/fpdart.dart';
import 'package:retrofit/retrofit.dart';

abstract class NotificationRepositoryInterface {
  Future<Either<Failure, List<Notification>>> getNotifications({
    required int page,
    required int pageSize,
  });

  Future<Either<Failure, HttpResponse>> markReadNotification({
    required String uuid,
    required Map<String, dynamic> body,
    required String requestBy,
  });

  Future<Either<Failure, HttpResponse>> markReadAllNotification({
    required Map<String, dynamic> body,
    required String requestBy,
  });
}
