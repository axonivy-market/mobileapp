import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/features/notification/domain/repositories/notification_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class MarkReadNotificationUseCase {
  final NotificationRepositoryInterface repository;

  MarkReadNotificationUseCase({required this.repository});
  Future execute({
    required String uuid,
    required Map<String, dynamic> body,
    required String requestBy,
  }) async {
    try {
      return await repository.markReadNotification(
        uuid: uuid,
        body: body,
        requestBy: requestBy,
      );
    } catch (error) {
      return left(AppError.handle(error).failure);
    }
  }
}
