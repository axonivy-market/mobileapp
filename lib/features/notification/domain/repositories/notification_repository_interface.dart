import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/notification/domain/entities/notification.dart';
import 'package:dartz/dartz.dart';

abstract class NotificationRepositoryInterface {
  Future<Either<Failure, List<Notification>>> getNotifications({
    required int page,
    required int pageSize,
  });

  Future<Either<Failure, bool>> markReadNotification({
    required String uuid,
    required Map<String, dynamic> body,
    required String requestBy,
  });
}
