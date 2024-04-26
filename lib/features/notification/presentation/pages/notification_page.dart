import 'dart:math';

import 'package:axon_ivy/core/abstracts/base_page.dart';
import 'package:axon_ivy/core/di/di.dart';
import 'package:axon_ivy/features/notification/domain/entities/notification.dart'
    as entities;
import 'package:axon_ivy/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:axon_ivy/features/task/presentation/pages/document_list_page.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/generated/colors.gen.dart';
import 'package:axon_ivy/shared/extensions/date_time_ext.dart';
import 'package:axon_ivy/shared/widgets/back_button_widget.dart';
import 'package:axon_ivy/shared/widgets/data_empty_widget.dart';
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
        all => 'All',
        unread => 'Unread',
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
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends BasePageState<NotificationPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  late NotificationBloc _notificationBloc;
  List<entities.Notification> notifications = [];
  List<entities.Notification> notificationsUnread = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _notificationBloc = getIt<NotificationBloc>()
      ..add(const NotificationEvent.getNotifications(1, 11));
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _onRefresh(
      BuildContext context, NotificationType notificationType) async {
    _notificationBloc.add(const NotificationEvent.getNotifications(1, 11));
  }

  @override
  Widget build(BuildContext context) {
    List<TabEnitity> tabs = [];

    return BlocProvider(
      create: (context) => _notificationBloc,
      child: BlocListener<NotificationBloc, NotificationState>(
        listener: (context, state) {
          if (state is NotificationLoadingState) {
            showLoading();
          } else {
            hideLoading();
          }
        },
        child: BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            if (state is NotificationSuccessState) {
              notifications = state.notifications;
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
                body: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverOverlapAbsorber(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                        sliver: SliverAppBar(
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          leadingWidth: 100.w,
                          title: Text(
                            'Notification',
                            style: GoogleFonts.inter(
                                color: Theme.of(context).cardColor),
                          ),
                          leading: const BackButtonWidget(),
                          actions: [
                            PopupMenuButton<String>(
                              elevation: 0.2,
                              color: Theme.of(context).colorScheme.background,
                              position: PopupMenuPosition.under,
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppAssets.icons.iconFile.svg(
                                          colorFilter: ColorFilter.mode(
                                            Theme.of(context)
                                                .colorScheme
                                                .surface,
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                        5.horizontalSpace,
                                        Expanded(
                                          child: Text(
                                            "Mark on as read",
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                fontSize: 17.sp,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .surface,
                                                fontWeight: FontWeight.w400,
                                              ),
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
                          pinned: true,
                          expandedHeight: 80.0,
                          surfaceTintColor:
                              Theme.of(context).colorScheme.background,
                          scrolledUnderElevation: 15,
                          shadowColor: Colors.black.withOpacity(0.3),
                          forceElevated: innerBoxIsScrolled,
                          bottom: notifications.isNotEmpty
                              ? PreferredSize(
                                  preferredSize: Size.fromHeight(50.h),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10)
                                        .r,
                                    child: Container(
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.zhenZhuBaiPear,
                                        borderRadius: BorderRadius.circular(
                                          10.0.r,
                                        ),
                                      ),
                                      child: TabBar(
                                        // onTap: (index) {},
                                        labelPadding: EdgeInsets.zero,
                                        overlayColor:
                                            const MaterialStatePropertyAll(
                                          Colors.transparent,
                                        ),
                                        indicatorColor: Colors.transparent,
                                        dividerColor: Colors.transparent,
                                        unselectedLabelColor:
                                            AppColors.blackMana,
                                        labelColor: Colors.white,
                                        controller: _tabController,
                                        indicatorSize: TabBarIndicatorSize.tab,
                                        indicator: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10.0.r,
                                          ),
                                          color: AppColors.tropicSea,
                                        ),
                                        tabs: tabs
                                            .map(
                                              (TabEnitity tab) => Tab(
                                                child: Text(
                                                  tab.type.title,
                                                  style: GoogleFonts.inter(
                                                    textStyle: TextStyle(
                                                      fontSize: 17.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                    ),
                                  ),
                                )
                              : null,
                        ),
                      ),
                    ];
                  },
                  body: notifications.isNotEmpty
                      ? TabBarView(
                          controller: _tabController,
                          children: tabs
                              .map(
                                (TabEnitity tab) => SafeArea(
                                  top: false,
                                  bottom: false,
                                  child: Builder(
                                    builder: (BuildContext context) {
                                      return tab.notificationList.isNotEmpty
                                          ? CustomScrollView(
                                              key: PageStorageKey(
                                                  tab.type.title),
                                              slivers: [
                                                CupertinoSliverRefreshControl(
                                                  onRefresh: () async =>
                                                      _onRefresh(
                                                    context,
                                                    tab.type,
                                                  ),
                                                ),
                                                SliverOverlapInjector(
                                                  handle: NestedScrollView
                                                      .sliverOverlapAbsorberHandleFor(
                                                          context),
                                                ),
                                                SliverPadding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10.0,
                                                          horizontal: 15.0)
                                                      .r,
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
                                            )
                                          : DataEmptyWidget(
                                              message:
                                                  'There are no unread notifications',
                                              icon: AppAssets.icons
                                                  .iconEmptyUnreadNotifications
                                                  .svg(),
                                            );
                                    },
                                  ),
                                ),
                              )
                              .toList(),
                        )
                      : DataEmptyWidget(
                          message:
                              'There are no notifications at the moment...',
                          icon: AppAssets.icons.iconEmptyNotifications.svg(),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget notificationItemWidget(int index, BuildContext context,
      List<entities.Notification> notifications) {
    return Slidable(
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
            backgroundColor: AppColors.sonicSilver,
            foregroundColor: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.info_outline_rounded),
                Text(
                  'Infos',
                  style: TextStyle(fontSize: 13.sp),
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
              _notificationBloc.add(
                NotificationEvent.markReadNotification(
                  notifications[index].uuid,
                ),
              );
            },
            backgroundColor: AppColors.tropicSea,
            foregroundColor: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.remove_red_eye_outlined),
                Text(
                  'Mark read',
                  style: TextStyle(fontSize: 13.sp),
                )
              ],
            ),
          ),
        ],
      ),
      child: AppListTile(
        minLeadingWidth: 0,
        leading: Column(
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            if (!notifications[index].read) ...[
              const Icon(
                Icons.circle,
                size: 10,
                color: AppColors.tropicSea,
              ),
            ] else
              const SizedBox(
                width: 10,
              ),
            const Expanded(
              flex: 9,
              child: SizedBox(),
            ),
          ],
        ),
        textColor: Theme.of(context).colorScheme.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10).r,
        onTap: () {},
        title: Text(
          notifications[index].message,
          style: GoogleFonts.inter(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
            '${notifications[index].createdAt.formatDateYearWithTwoNumber} - Zug'),
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
      ),
    );
  }
}
