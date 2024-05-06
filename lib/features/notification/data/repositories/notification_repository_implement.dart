import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/notification/data/datasources/notification_remote_data_source.dart';
import 'package:axon_ivy/features/notification/domain/entities/notification.dart';
import 'package:axon_ivy/features/notification/domain/repositories/notification_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/network/dio_error_handler.dart';

@Injectable(as: NotificationRepositoryInterface)
class NotificationRepositoryImplement extends NotificationRepositoryInterface {
  NotificationRepositoryImplement(this._remoteDataSource);

  final NotificationRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<Notification>>> getNotifications({
    required int page,
    required int pageSize,
  }) async {
    try {
      final result = await _remoteDataSource.getNotifications(page, pageSize);

      return right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, HttpResponse>> markReadNotification({
    required String uuid,
    required Map<String, dynamic> body,
    required String requestBy,
  }) async {
    try {
      final result =
          await _remoteDataSource.markReadNotification(uuid, requestBy, body);
      return right(result);
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, HttpResponse>> markReadAllNotification({
    required Map<String, dynamic> body,
    required String requestBy,
  }) async {
    try {
      final result =
          await _remoteDataSource.markReadAllNotification(requestBy, body);
      return right(result);
    } catch (e) {
      return left(AppError.handle(e).failure);
    }
  }
}
