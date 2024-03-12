import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/presentation/process/bloc/process_bloc.dart';
import 'package:axon_ivy/presentation/process/process.dart';
import 'package:axon_ivy/presentation/process/view/widgets/process_offline_indicator_widget.dart';
import 'package:axon_ivy/presentation/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
import 'package:axon_ivy/presentation/tabbar/bloc/tabbar_cubit.dart';
import 'package:axon_ivy/presentation/task/bloc/offline_indicator_cubit.dart';
import 'package:axon_ivy/router/app_router.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProcessesView extends StatelessWidget {
  const ProcessesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: MultiBlocListener(
        listeners: [
          BlocListener<ProcessBloc, ProcessState>(
            listener: (context, state) {
              context.read<OfflineIndicatorCubit>().showOfflineIndicator(
                  state is ProcessSuccessState && !state.isOnline);
            },
          ),
          BlocListener<ConnectivityBloc, ConnectivityState>(
              listener: (context, state) {
            context.read<ProcessBloc>().add(
                ProcessEvent.showOfflinePopupEvent(state is ConnectedState));
          }),
        ],
        child: BlocBuilder<ProcessBloc, ProcessState>(
          builder: (context, state) {
            final processBloc = BlocProvider.of<ProcessBloc>(context);
            if (state is ProcessLoadingState) {
              return const LoadingWidget();
            }
            if (state is ProcessSuccessState) {
              final processes = state.processes;
              return Stack(
                children: [
                  CustomScrollView(
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    slivers: [
                      CupertinoSliverRefreshControl(
                        onRefresh: () async {
                          await Future.delayed(const Duration(seconds: 1));
                          processBloc.add(const ProcessEvent.getProcess());
                        },
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (_, index) {
                              return _buildProcessItem(
                                  processes, context, index);
                            },
                            childCount:
                                processes.isEmpty ? 1 : processes.length,
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (!state.isOnline)
                    OfflineIndicatorPopupWidget(
                      description: "offline.process_description".tr(),
                      isShowingProcesses: state.processes.isNotEmpty,
                    ),
                ],
              );
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _buildProcessItem(
      List<Process> processes, BuildContext context, int index) {
    if (processes.isEmpty) {
      return SizedBox(
        height: MediaQuery.of(context).size.height -
            Constants.appBarHeight -
            Constants.bottomNavigationBarHeight,
        child: DataEmptyWidget(
          message: 'process.emptyList',
          icon: AppAssets.icons.processEmpty.svg(
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onTertiaryContainer,
                  BlendMode.srcIn)),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        _navigateProcessActivity(context, processes[index]);
      },
      child: ProcessItemWidget(
        process: processes[index],
      ),
    );
  }

  void _navigateProcessActivity(BuildContext context, Process process) {
    context.push(AppRoutes.taskActivity,
        extra: {'path': process.fullRequestPath}).then((value) {
      if (value != null && value is int) {
        context.read<TabBarCubit>().navigateTaskList(value);
      }
    });
  }
}
