import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/notification/domain/entities/notification.dart';
import 'package:axon_ivy/features/notification/domain/repositories/notification_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNotificationUseCase {
  final NotificationRepositoryInterface repository;

  GetNotificationUseCase({required this.repository});
  Future<Either<Failure, List<Notification>>> execute(
      {required int page, required int pageSize}) async {
    try {
      final result =
          await repository.getNotifications(page: page, pageSize: pageSize);
      return result;
    } catch (error) {
      return left(AppError.handle(error).failure);
    }
  }
}
