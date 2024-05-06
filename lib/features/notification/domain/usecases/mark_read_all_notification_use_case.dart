import 'package:axon_ivy/core/network/dio_error_handler.dart';
import 'package:axon_ivy/core/network/failure.dart';
import 'package:axon_ivy/features/notification/domain/repositories/notification_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class MarkReadAllNotificationUseCase {
  final NotificationRepositoryInterface repository;

  MarkReadAllNotificationUseCase({required this.repository});
  Future<Either<Failure, bool>> execute({
    required Map<String, dynamic> body,
    required String requestBy,
  }) async {
    try {
      final result = await repository.markReadAllNotification(
        body: body,
        requestBy: requestBy,
      );
      return right(true);
    } catch (error) {
      return left(AppError.handle(error).failure);
    }
  }
}
