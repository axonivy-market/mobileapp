import 'package:axon_ivy/core/router/app_router.dart';
import 'package:axon_ivy/core/util/resources/resources.dart';
import 'package:axon_ivy/core/util/widgets/widgets.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/features/process/bloc/process_bloc.dart';
import 'package:axon_ivy/features/process/process.dart';
import 'package:axon_ivy/features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
import 'package:axon_ivy/features/tabbar/bloc/tabbar_cubit.dart';
import 'package:axon_ivy/features/task/presentation/bloc/offline_indicator_cubit/offline_indicator_cubit.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                        onRefresh: () async => _getProcesses(context),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20)
                            .r,
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
                    OfflinePopupWidget(
                      description: "offline.process_description".tr(),
                      onRefresh: () => _getProcesses(context),
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
        height: getNoDataViewHeight(MediaQuery.of(context).size.height,
            MediaQuery.of(context).viewInsets.bottom),
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

  void _getProcesses(BuildContext context) async {
    final processBloc = context.read<ProcessBloc>();
    await Future.delayed(const Duration(seconds: 1));
    processBloc.add(const ProcessEvent.getProcess());
  }
}
