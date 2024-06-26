import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/router/router.dart';
import 'package:axon_ivy/features/process/presentation/widgets/process_item_widget.dart';
import 'package:axon_ivy/features/search/domain/entities/search.dart';
import 'package:axon_ivy/features/search/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:axon_ivy/features/search/presentation/bloc/search_filter_cubit/search_filter_cubit.dart';
import 'package:axon_ivy/features/search/presentation/widgets/widgets.dart';
import 'package:axon_ivy/features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
import 'package:axon_ivy/features/tabbar/bloc/engine_info_cubit/engine_info_cubit.dart';
import 'package:axon_ivy/features/tabbar/bloc/tabbar_cubit.dart';
import 'package:axon_ivy/features/task/presentation/bloc/task_conflict_cubit/task_conflict_cubit.dart';
import 'package:axon_ivy/features/task/presentation/widgets/task_item_widget.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/enums/search_type.dart';
import 'package:axon_ivy/shared/extensions/list_ext.dart';
import 'package:axon_ivy/shared/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchFilterCubit>(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const HomeAppBar(
          scrolledUnderElevation: 0,
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<EngineInfoCubit, EngineInfoState>(
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
            }),
            BlocListener<ConnectivityBloc, ConnectivityState>(
                listener: (context, state) {
              context.read<SearchBloc>().isOfflineMode =
                  state is NotConnectedState;
              context.read<SearchBloc>().add(
                    SearchEvent.searchItem(
                        context.read<SearchBloc>().query, SearchType.tasks),
                  );
            }),
          ],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              16.verticalSpace,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16).r,
                child: const SearchTextField(),
              ),
              Flexible(
                flex: 1,
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state is SearchResultState) {
                      return Stack(
                        children: [
                          searchItemList(context, state),
                          if (state.items.isEmptyOrNull)
                            Padding(
                              padding: EdgeInsets.only(top: 62.h),
                              child: Container(
                                color: Theme.of(context).colorScheme.background,
                                child: DataEmptyWidget(
                                  message: state.emptyMessage!.tr(),
                                  icon: AppAssets.icons.icSearchNotFound.svg(
                                    colorFilter: ColorFilter.mode(
                                      Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      );
                    } else {
                      return DataEmptyWidget(
                        message: 'search.nothingThereYet'.tr(),
                        icon: AppAssets.icons.icSearchInitial.svg(
                          colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.tertiaryContainer,
                            BlendMode.srcIn,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
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
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10).r,
          sliver: SliverList.separated(
            itemCount: state.items.isEmptyOrNull ? 1 : state.items!.length,
            separatorBuilder: (context, index) => 10.verticalSpace,
            itemBuilder: (context, index) {
              if (state.items.isEmptyOrNull) {
                return const SizedBox.shrink();
              }
              final item = state.items![index];
              if (item is SectionHeader) {
                return Text(
                  item.title.tr(),
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                );
              } else if (item is TaskItem) {
                return TaskItemWidget(
                  isSearchPage: true,
                  onTap: () {
                    if (item.task.isTaskDone) {
                      return;
                    }
                    WidgetsBinding.instance.focusManager.primaryFocus
                        ?.unfocus();
                    context
                        .read<TaskConflictCubit>()
                        .checkTaskConflict(item.task);
                  },
                  name: item.task.name,
                  description: item.task.description,
                  priority: item.task.priority,
                  expiryTimeStamp: item.task.expiryTimeStamp,
                  query: state.query.trim(),
                  isOffline: item.task.offline,
                  isTaskDone: item.task.isTaskDone,
                );
              } else if (item is ProcessItem) {
                return ProcessItemWidget(
                  onTap: () {
                    WidgetsBinding.instance.focusManager.primaryFocus
                        ?.unfocus();
                    context.push(AppRoutes.taskActivity, extra: {
                      'path': item.process.fullRequestPath
                    }).then((value) {
                      if (value != null && value is Map) {
                        context.read<TabBarCubit>().navigateTaskList(value);
                      }
                    });
                  },
                  isSearchPage: true,
                  process: item.process,
                  query: state.query.trim(),
                );
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
