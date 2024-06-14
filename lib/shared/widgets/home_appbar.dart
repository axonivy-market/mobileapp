import 'package:axon_ivy/core/app/app.dart';
import 'package:axon_ivy/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:axon_ivy/features/profile/presentation/bloc/logged_cubit/logged_in_cubit.dart';
import 'package:axon_ivy/features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeago/timeago.dart' as timeago;

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    this.isShowLastUpdated = false,
    this.scrolledUnderElevation = 15.0,
  });

  final bool isShowLastUpdated;
  final double scrolledUnderElevation;

  @override
  Size get preferredSize => Size.fromHeight(Constants.appBarHeight.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: scrolledUnderElevation,
      backgroundColor: Theme.of(context).colorScheme.background,
      shadowColor: Colors.black.withOpacity(0.3),
      surfaceTintColor: Theme.of(context).colorScheme.background,
      elevation: 0,
      leadingWidth: 120.w,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15).r,
        child: Theme.of(context).brightness == Brightness.light
            ? AppAssets.icons.logo.svg()
            : AppAssets.icons.logoDark.svg(),
      ),
      actions: [
        buildLastUpdatedTime(),
        SizedBox(
          width: 48,
          child: BlocBuilder<LoggedInCubit, LoggedInState>(
            builder: (context, state) {
              return Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      if (SharedPrefs.isLogin ?? false) {
                        context.pushNamed('notification');
                      }
                    },
                    icon: AppAssets.icons.notification.svg(
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.surface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  if (SharedPrefs.isLogin ?? false)
                    BlocBuilder<NotificationBloc, NotificationState>(
                      builder: (context, state) {
                        bool isUnreadNotification = false;
                        if (state is NotificationSuccessState) {
                          for (var notification in state.notifications) {
                            if (notification.read == false) {
                              isUnreadNotification = true;
                              break;
                            }
                          }
                        }

                        return isUnreadNotification
                            ? Positioned(
                                right: 15,
                                top: 12,
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                ],
              );
            },
          ),
        ),
        5.horizontalSpace
      ],
    );
  }

  Widget buildLastUpdatedTime() {
    return isShowLastUpdated
        ? BlocBuilder<OfflineIndicatorCubit, OfflineIndicatorState>(
            builder: (context, state) {
              final lastUpdatedTime = SharedPrefs.lastUpdatedTime;
              if (state is ShowOfflineIndicatorState &&
                  state.isNotEngineConnected &&
                  lastUpdatedTime != null) {
                final DateTime dateTime =
                    DateTime.fromMillisecondsSinceEpoch(lastUpdatedTime);
                return Row(
                  children: [
                    Text(
                      "tasksView.lastUpdated",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontSize: 13.sp,
                      ),
                    ).tr(
                      namedArgs: {
                        'time': timeago.format(dateTime),
                      },
                    ),
                    5.horizontalSpace,
                    AppAssets.icons.offline.svg(
                        height: 26.h,
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.onSecondary,
                            BlendMode.srcIn))
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          )
        : const SizedBox.shrink();
  }
}
