import 'dart:math';

import 'package:axon_ivy/core/abstracts/base_page.dart';
import 'package:axon_ivy/core/di/di.dart';
import 'package:axon_ivy/features/notification/domain/entities/notification.dart'
    as entities;
import 'package:axon_ivy/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:axon_ivy/features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/generated/colors.gen.dart';
import 'package:axon_ivy/shared/extensions/date_time_ext.dart';
import 'package:axon_ivy/shared/widgets/widgets.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

enum NotificationType {
  all,
  unread;

  String get title => switch (this) {
        all => "notificationList.all".tr(),
        unread => "notificationList.unread".tr(),
      };
}

class TabEnitity {
  final NotificationType type;
  final List<entities.Notification> notificationList;

  TabEnitity({
    required this.type,
    required this.notificationList,
  });
}

class NotificationPage extends BasePage {
  const NotificationPage({
    super.key,
  });

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends BasePageState<NotificationPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  bool isNotConnectedInternet = false;
  List<entities.Notification> notifications = [];
  List<entities.Notification> notificationsUnread = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    if (context.read<ConnectivityBloc>().connectivityResult ==
        ConnectivityResult.none) {
      isNotConnectedInternet = true;
      context.read<NotificationBloc>().add(
            NotificationEvent.showOfflinePopupEvent(
                !isNotConnectedInternet is ConnectedState),
          );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _onRefresh(BuildContext context) async {
    context
        .read<NotificationBloc>()
        .add(const NotificationEvent.getNotifications(1, 9000));
  }

  @override
  Widget build(BuildContext context) {
    bool isNotificationOnline = true;
    List<TabEnitity> tabs = [];
    return MultiBlocListener(
      listeners: [
        BlocListener<NotificationBloc, NotificationState>(
          listener: (context, state) {
            if (state is NotificationLoadingState) {
              showLoading();
            } else {
              hideLoading();
            }
          },
        ),
        BlocListener<ConnectivityBloc, ConnectivityState>(
          listener: (context, state) {
            context.read<NotificationBloc>().add(
                  NotificationEvent.showOfflinePopupEvent(
                      state is ConnectedState),
                );
          },
        ),
      ],
      child: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is NotificationSuccessState) {
            notifications = state.notifications;
            isNotificationOnline = state.isOnline;
            isNotConnectedInternet = !state.isOnline;
            notificationsUnread =
                notifications.where((e) => e.read == false).toList();
            tabs = [
              TabEnitity(
                type: NotificationType.all,
                notificationList: notifications,
              ),
              TabEnitity(
                type: NotificationType.unread,
                notificationList: notificationsUnread,
              ),
            ];
          }
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                scrolledUnderElevation: 0,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                leadingWidth: 100.w,
                title: Text(
                  "notificationList.title".tr(),
                  style: GoogleFonts.inter(
                    color: Theme.of(context).colorScheme.surface,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: const BackButtonWidget(),
                actions: [
                  PopupMenuButton(
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.hardEdge,
                    elevation: 10,
                    shadowColor: Colors.black.withOpacity(0.3),
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    position: PopupMenuPosition.under,
                    surfaceTintColor:
                        Theme.of(context).colorScheme.onPrimaryContainer,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(10.0).r),
                    ),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          height: 30.h,
                          onTap: () {
                            context.read<NotificationBloc>().add(
                                  const NotificationEvent
                                      .markReadAllNotification(),
                                );
                          },
                          child: Row(
                            children: [
                              AppAssets.icons.iconMarkAsRead.svg(
                                colorFilter: ColorFilter.mode(
                                  Theme.of(context).colorScheme.surface,
                                  BlendMode.srcIn,
                                ),
                              ),
                              5.horizontalSpace,
                              Text(
                                "notificationList.markOnAsRead".tr(),
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 17.sp,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ];
                    },
                    icon: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
              body: Stack(
                children: [
                  NestedScrollView(
                    headerSliverBuilder: (context, innerBoxIsScrolled) {
                      return [
                        if (notifications.isNotEmpty)
                          SliverOverlapAbsorber(
                            handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                              context,
                            ),
                            sliver: SliverAppBar(
                              toolbarHeight: 60.h,
                              automaticallyImplyLeading: false,
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              pinned: true,
                              surfaceTintColor:
                                  Theme.of(context).colorScheme.background,
                              scrolledUnderElevation: 15,
                              shadowColor: Colors.black.withOpacity(0.3),
                              forceElevated: innerBoxIsScrolled,
                              titleSpacing: 0,
                              title: PreferredSize(
                                preferredSize: Size.fromHeight(10.h),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 15)
                                          .r,
                                  child: Container(
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .outline),
                                      borderRadius: BorderRadius.circular(
                                        10.0.r,
                                      ),
                                    ),
                                    child: TabBar(
                                      onTap: (index) {
                                        setState(() {});
                                      },
                                      labelPadding: EdgeInsets.zero,
                                      overlayColor:
                                          const MaterialStatePropertyAll(
                                        Colors.transparent,
                                      ),
                                      indicatorColor: Colors.transparent,
                                      dividerColor: Colors.transparent,
                                      unselectedLabelColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      labelColor: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                      controller: _tabController,
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      indicator: _tabController.index == 0
                                          ? BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      const Radius.circular(10)
                                                          .r,
                                                  bottomLeft:
                                                      const Radius.circular(10)
                                                          .r),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary)
                                          : BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight:
                                                      const Radius.circular(10)
                                                          .r,
                                                  bottomRight:
                                                      const Radius.circular(10)
                                                          .r),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                      tabs: tabs
                                          .map(
                                            (TabEnitity tab) => Tab(
                                              child: Text(
                                                tab.type.title,
                                                style: GoogleFonts.inter(
                                                  textStyle: TextStyle(
                                                    fontSize: 17.sp,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ];
                    },
                    body: notifications.isNotEmpty
                        ? TabBarView(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: _tabController,
                            children: tabs
                                .map(
                                  (TabEnitity tab) => SafeArea(
                                    top: false,
                                    bottom: false,
                                    child: Builder(
                                      builder: (BuildContext context) {
                                        return SlidableAutoCloseBehavior(
                                          child: CustomScrollView(
                                            physics:
                                                const BouncingScrollPhysics(
                                              parent:
                                                  AlwaysScrollableScrollPhysics(),
                                            ),
                                            key: PageStorageKey(
                                              tab.type.title,
                                            ),
                                            slivers: [
                                              CupertinoSliverRefreshControl(
                                                onRefresh: () async =>
                                                    _onRefresh(
                                                  context,
                                                ),
                                              ),
                                              SliverOverlapInjector(
                                                handle: NestedScrollView
                                                    .sliverOverlapAbsorberHandleFor(
                                                        context),
                                              ),
                                              if (tab.notificationList.isEmpty)
                                                SliverFillRemaining(
                                                  child: DataEmptyWidget(
                                                    message:
                                                        "notificationList.noUnreadNotifications"
                                                            .tr(),
                                                    icon: AppAssets.icons
                                                        .iconEmptyUnreadNotifications
                                                        .svg(
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                        Theme.of(context)
                                                            .colorScheme
                                                            .tertiaryContainer,
                                                        BlendMode.srcIn,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (tab
                                                  .notificationList.isNotEmpty)
                                                SliverPadding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 15.0,
                                                  ).r,
                                                  sliver: SliverList(
                                                    delegate:
                                                        SliverChildBuilderDelegate(
                                                      childCount: max(
                                                        1,
                                                        tab.notificationList
                                                            .length,
                                                      ),
                                                      (BuildContext context,
                                                          int index) {
                                                        return notificationItemWidget(
                                                          index,
                                                          context,
                                                          tab.notificationList,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                )
                                .toList(),
                          )
                        : Builder(
                            builder: (BuildContext context) {
                              return CustomScrollView(
                                slivers: [
                                  CupertinoSliverRefreshControl(
                                    onRefresh: () async => _onRefresh(
                                      context,
                                    ),
                                  ),
                                  SliverFillRemaining(
                                    child: DataEmptyWidget(
                                      message:
                                          "notificationList.noNotifications"
                                              .tr(),
                                      icon: AppAssets
                                          .icons.iconEmptyNotifications
                                          .svg(
                                        colorFilter: ColorFilter.mode(
                                          Theme.of(context)
                                              .colorScheme
                                              .tertiaryContainer,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                  ),
                  if (!isNotificationOnline)
                    OfflinePopupWidget(
                      description: "notificationList.offlineNotification".tr(),
                      onRefresh: () => _onRefresh(context),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget notificationItemWidget(int index, BuildContext context,
      List<entities.Notification> notifications) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ).r,
      child: Slidable(
        key: ValueKey(index),
        startActionPane: ActionPane(
          extentRatio: 0.22.w,
          key: ValueKey(index),
          motion: const BehindMotion(),
          children: [
            CustomSlidableAction(
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10).r,
                  bottomLeft: const Radius.circular(10).r),
              autoClose: true,
              padding: EdgeInsets.zero,
              onPressed: (context) {},
              backgroundColor: AppColors.darkSouls,
              foregroundColor: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppAssets.icons.iconInfoNotification.svg(
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onSurface,
                      BlendMode.srcIn,
                    ),
                  ),
                  Text(
                    "notificationList.infos".tr(),
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 13.sp,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        endActionPane: ActionPane(
          extentRatio: 0.22.w,
          key: ValueKey(index),
          motion: const BehindMotion(),
          children: [
            CustomSlidableAction(
              borderRadius: BorderRadius.only(
                  topRight: const Radius.circular(10).r,
                  bottomRight: const Radius.circular(10).r),
              autoClose: true,
              padding: EdgeInsets.zero,
              onPressed: (context) {
                getIt<NotificationBloc>().add(
                  NotificationEvent.markReadNotification(
                    notifications[index].uuid,
                  ),
                );
              },
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onSurface,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppAssets.icons.iconMarkRead.svg(
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onSurface,
                      BlendMode.srcIn,
                    ),
                  ),
                  Text(
                    "notificationList.markRead".tr(),
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 13.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        child: AppListTile(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Theme.of(context).colorScheme.outline, width: 1),
            borderRadius: BorderRadius.circular(12).r,
          ),
          horizontalTitleGap: 6.w,
          minLeadingWidth: 0,
          leading: Column(
            children: [
              if (!notifications[index].read) ...[
                const Expanded(child: SizedBox()),
                Icon(
                  Icons.circle,
                  size: 10.r,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ] else
                SizedBox(
                  width: 8.w,
                ),
              const Expanded(
                flex: 19,
                child: SizedBox(),
              ),
            ],
          ),
          textColor: Theme.of(context).colorScheme.surface,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10).r,
          title: Text(
            notifications[index].message,
            style: GoogleFonts.inter(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.surface,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            notifications[index].createdAt.formatDateYearWithTwoNumber,
            style: GoogleFonts.inter(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppAssets.icons.chevronRight.svg(
                height: 21.h,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.surface,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
          tileColor: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}
