import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/shared/extensions/list_ext.dart';
import 'package:axon_ivy/data/models/search/search.dart';
import 'package:axon_ivy/presentation/process/process.dart';
import 'package:axon_ivy/presentation/search/bloc/engine_info_cubit.dart';
import 'package:axon_ivy/presentation/search/bloc/search_bloc.dart';
import 'package:axon_ivy/presentation/search/bloc/search_filter_cubit.dart';
import 'package:axon_ivy/presentation/search/view/widgets/widgets.dart';
import 'package:axon_ivy/presentation/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
import 'package:axon_ivy/presentation/tabbar/bloc/tabbar_cubit.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_item_widget.dart';
import 'package:axon_ivy/router/router.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/generated/colors.gen.dart';
import '../../process/view/widgets/process_offline_indicator_widget.dart';

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
                  const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SearchTextField(),
                  ),
                  Expanded(
                    child: BlocBuilder<SearchBloc, SearchState>(
                      builder: (context, state) {
                        if (state is SearchResultState) {
                          return Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 10),
                                child: SearchFilterWidget(),
                              ),
                              Expanded(
                                  child: state.items.isEmptyOrNull
                                      ? DataEmptyWidget(
                                          message: state.emptyMessage!.tr(),
                                          icon: AppAssets.icons.icSearchNotFound
                                              .svg(),
                                        )
                                      : searchItemList(context, state)),
                            ],
                          );
                        } else {
                          return DataEmptyWidget(
                            message: 'search.nothingThereYet'.tr(),
                            icon: AppAssets.icons.icSearchInitial.svg(),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
              BlocBuilder<ConnectivityBloc, ConnectivityState>(
                  builder: (context, state) {
                if (state is NotConnectedState) {
                  return OfflineIndicatorPopupWidget(
                    description: "offline.search_description".tr(),
                    isShowingProcesses: false,
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
      slivers: [
        const SliverAppBar(
          toolbarHeight: 10,
          pinned: true,
          scrolledUnderElevation: 0.2,
          shadowColor: AppColors.mercury,
          surfaceTintColor: Colors.white,
          elevation: 0,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext _, int index) {
              final item = state.items![index];
              if (item is SectionHeader) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 10, top: 10),
                  child: Text(
                    item.title.tr(),
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.eerieBlack,
                    ),
                  ),
                );
              } else if (item is TaskItem) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () {
                      WidgetsBinding.instance.focusManager.primaryFocus
                          ?.unfocus();
                      context.push(AppRoutes.taskActivity, extra: {
                        'task': item.task,
                        'path': item.task.fullRequestPath
                      }).then((value) {
                        if (value != null && value is int) {
                          context
                              .read<TabBarCubit>()
                              .navigateTaskList(value);
                        }
                      });
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
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () {
                      WidgetsBinding.instance.focusManager.primaryFocus
                          ?.unfocus();
                      context.push(AppRoutes.taskActivity, extra: {
                        'path': item.process.fullRequestPath
                      }).then((value) {
                        if (value != null && value is int) {
                          context
                              .read<TabBarCubit>()
                              .navigateTaskList(value);
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
