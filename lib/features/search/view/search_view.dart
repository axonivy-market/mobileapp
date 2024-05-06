import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/extensions/list_ext.dart';
import 'package:axon_ivy/core/router/router.dart';
import 'package:axon_ivy/core/util/widgets/widgets.dart';
import 'package:axon_ivy/data/models/search/search.dart';
import 'package:axon_ivy/features/process/process.dart';
import 'package:axon_ivy/features/search/bloc/engine_info_cubit/engine_info_cubit.dart';
import 'package:axon_ivy/features/search/bloc/search_bloc/search_bloc.dart';
import 'package:axon_ivy/features/search/bloc/search_filter_cubit/search_filter_cubit.dart';
import 'package:axon_ivy/features/search/bloc/task_conflict_cubit/task_conflict_cubit.dart';
import 'package:axon_ivy/features/search/view/widgets/widgets.dart';
import 'package:axon_ivy/features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
import 'package:axon_ivy/features/tabbar/bloc/tabbar_cubit.dart';
import 'package:axon_ivy/features/task/presentation/widgets/task_item_widget.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchFilterCubit>(),
      child: Scaffold(
        appBar: const HomeAppBar(
          scrolledUnderElevation: 0,
        ),
        body: BlocListener<EngineInfoCubit, EngineInfoState>(
          listener: (context, state) {
            if (state is GetEngineInfo) {
              if (state.engineInfo != null) {
                context
                    .read<ConnectivityBloc>()
                    .add(const ConnectivityEvent.connectedEvent());
              } else {
                context
                    .read<ConnectivityBloc>()
                    .add(const ConnectivityEvent.notConnectedEvent());
              }
            }
          },
          child: Stack(
            children: [
              Column(
                children: [
                  16.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16).r,
                    child: const SearchTextField(),
                  ),
                  Expanded(
                    child: BlocBuilder<SearchBloc, SearchState>(
                      builder: (context, state) {
                        if (state is SearchResultState) {
                          return state.items.isEmptyOrNull
                              ? DataEmptyWidget(
                                  message: state.emptyMessage!.tr(),
                                  icon: AppAssets.icons.icSearchNotFound.svg(
                                    colorFilter: ColorFilter.mode(
                                      Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      BlendMode.srcIn,
                                    ),
                                  ))
                              : searchItemList(context, state);
                        } else {
                          return DataEmptyWidget(
                              message: 'search.nothingThereYet'.tr(),
                              icon: AppAssets.icons.icSearchInitial.svg(
                                colorFilter: ColorFilter.mode(
                                  Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                  BlendMode.srcIn,
                                ),
                              ));
                        }
                      },
                    ),
                  ),
                ],
              ),
              BlocBuilder<ConnectivityBloc, ConnectivityState>(
                  builder: (context, state) {
                if (state is NotConnectedState) {
                  return OfflinePopupWidget(
                    description: "offline.search_description".tr(),
                    onRefresh: () async {
                      final engineCubit = context.read<EngineInfoCubit>();
                      await Future.delayed(const Duration(seconds: 1));
                      engineCubit.getEngineInfo();
                    },
                  );
                }
                return Container();
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget searchItemList(BuildContext context, SearchResultState state) {
    return CustomScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          toolbarHeight: 62.h,
          pinned: true,
          scrolledUnderElevation: 15,
          shadowColor: Colors.black.withOpacity(0.3),
          surfaceTintColor: Theme.of(context).colorScheme.background,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10).r,
              child: const SearchFilterWidget(),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext _, int index) {
              final item = state.items![index];
              if (item is SectionHeader) {
                return Padding(
                  padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 10, top: 10)
                      .r,
                  child: Text(
                    item.title.tr(),
                    style: GoogleFonts.inter(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                );
              } else if (item is TaskItem) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16).r,
                  child: GestureDetector(
                    onTap: () {
                      WidgetsBinding.instance.focusManager.primaryFocus
                          ?.unfocus();
                      context
                          .read<TaskConflictCubit>()
                          .checkTaskConflict(item.task);
                    },
                    child: TaskItemWidget(
                      name: item.task.name,
                      description: item.task.description,
                      priority: item.task.priority,
                      expiryTimeStamp: item.task.expiryTimeStamp,
                      query: state.query.trim(),
                    ),
                  ),
                );
              } else if (item is ProcessItem) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16).r,
                  child: GestureDetector(
                    onTap: () {
                      WidgetsBinding.instance.focusManager.primaryFocus
                          ?.unfocus();
                      context.push(AppRoutes.taskActivity, extra: {
                        'path': item.process.fullRequestPath
                      }).then((value) {
                        if (value != null && value is int) {
                          context.read<TabBarCubit>().navigateTaskList(value);
                        }
                      });
                    },
                    child: ProcessItemWidget(
                      process: item.process,
                      query: state.query.trim(),
                    ),
                  ),
                );
              }
              return null;
            },
            childCount: state.items!.length,
          ),
        ),
      ],
    );
  }
}
