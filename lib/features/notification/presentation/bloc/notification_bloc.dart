import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/features/notification/domain/entities/notification.dart';
import 'package:axon_ivy/features/notification/domain/usecases/get_notifications_use_case.dart';
import 'package:axon_ivy/features/notification/domain/usecases/mark_read_notification_use_case.dart';
import 'package:axon_ivy/shared/extensions/extensions.dart';
import 'package:axon_ivy/shared/resources/constants.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetNotificationUseCase getNotificationUseCase;
  final MarkReadNotificationUseCase markReadNotificationUseCase;

  List<Notification> notifications = [];

  NotificationBloc(
      this.getNotificationUseCase, this.markReadNotificationUseCase)
      : super(const NotificationState.loading()) {
    on<NotificationEvent>((event, emit) async {
      await event.when(
        getNotifications: (page, pageSize) async {
          await getNotifications(page, pageSize, emit);
        },
        markReadNotification: (uuid) async {
          await markReadNotifications(uuid, emit);
        },
      );
    });
    final isDemoSetting = SharedPrefs.demoSetting ?? false;
    if (isDemoSetting) {
      getIt<Dio>().options.baseUrl = DemoConfig.demoServerUrl.isEmptyOrNull
          ? AppConfig.baseUrl
          : DemoConfig.demoServerUrl;
    } else {
      getIt<Dio>().options.baseUrl = SharedPrefs.getBaseUrl.isEmptyOrNull
          ? AppConfig.baseUrl
          : SharedPrefs.getBaseUrl!;
    }
  }

  Future getNotifications(int page, int pageSize, Emitter emit) async {
    emit(const NotificationState.loading());
    try {
      final response =
          await getNotificationUseCase.execute(page: page, pageSize: pageSize);
      response.fold(
        (l) {
          emit(NotificationErrorState(l.toString()));
        },
        (r) {
          notifications = List.from(r);
          emit(NotificationSuccessState(r));
        },
      );
    } catch (e) {
      emit(NotificationErrorState(e.toString()));
    }
  }

  Future markReadNotifications(String uuid, Emitter emit) async {
    emit(const NotificationState.loading());
    try {
      final response = await markReadNotificationUseCase.execute(
        uuid: uuid,
        body: Constants.markReadNotificationBody,
        requestBy: APIHeader.requestBy,
      );
      response.fold(
        (l) {
          emit(NotificationErrorState(l.toString()));
        },
        (r) {
          for (int i = 0; i < notifications.length; i++) {
            if (notifications[i].uuid == uuid) {
              notifications[i] = notifications[i].copyWith(read: true);
            }
          }
          emit(NotificationSuccessState(notifications));
        },
      );
    } catch (e) {
      emit(NotificationErrorState(e.toString()));
    }
  }
}
