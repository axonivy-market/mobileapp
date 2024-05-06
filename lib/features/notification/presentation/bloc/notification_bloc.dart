import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/app/demo_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/features/notification/domain/entities/notification.dart';
import 'package:axon_ivy/features/notification/domain/usecases/get_notifications_use_case.dart';
import 'package:axon_ivy/features/notification/domain/usecases/mark_read_all_notification_use_case.dart';
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

@singleton
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetNotificationUseCase getNotificationUseCase;
  final MarkReadNotificationUseCase markReadNotificationUseCase;
  final MarkReadAllNotificationUseCase markReadAllNotificationUseCase;

  List<Notification> notifications = [];

  NotificationBloc(
    this.getNotificationUseCase,
    this.markReadNotificationUseCase,
    this.markReadAllNotificationUseCase,
  ) : super(const NotificationState.loading()) {
    on<NotificationEvent>((event, emit) async {
      await event.when(
        getNotifications: (page, pageSize) async {
          await getNotifications(page, pageSize, emit);
        },
        markReadNotification: (uuid) async {
          await markReadNotification(uuid, emit);
        },
        markReadAllNotification: () async {
          await markReadAllNotification(emit);
        },
        showOfflinePopupEvent: (isConnected) async {
          showOfflinePopupEvent(isConnected, emit);
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
          emit(NotificationSuccessState(notifications: r));
        },
      );
    } catch (e) {
      emit(NotificationErrorState(e.toString()));
    }
  }

  Future markReadAllNotification(Emitter emit) async {
    emit(const NotificationState.loading());
    try {
      final response = await markReadAllNotificationUseCase.execute(
        body: Constants.markReadNotificationBody,
        requestBy: APIHeader.requestBy,
      );
      response.fold(
        (l) {
          emit(NotificationErrorState(l.toString()));
        },
        (r) {
          for (int i = 0; i < notifications.length; i++) {
            notifications[i] = notifications[i].copyWith(read: true);
          }
          emit(NotificationSuccessState(notifications: notifications));
        },
      );
    } catch (e) {
      emit(NotificationErrorState(e.toString()));
    }
  }

  Future markReadNotification(String uuid, Emitter emit) async {
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
          emit(NotificationSuccessState(notifications: notifications));
        },
      );
    } catch (e) {
      emit(NotificationErrorState(e.toString()));
    }
  }

  showOfflinePopupEvent(bool isConnected, Emitter emit) {
    emit(NotificationSuccessState(
        notifications: notifications, isOnline: isConnected));
  }
}
