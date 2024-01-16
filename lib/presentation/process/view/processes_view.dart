import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/presentation/process/bloc/process_bloc.dart';
import 'package:axon_ivy/presentation/process/process.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProcessesView extends StatelessWidget {
  const ProcessesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: BlocBuilder<ProcessBloc, ProcessState>(
        builder: (context, state) {
          final processBloc = BlocProvider.of<ProcessBloc>(context);
          if (state is ProcessLoadingState) {
            return const LoadingWidget();
          }
          if (state is ProcessErrorState) {
            return Center(
              child: Text(
                state.error,
              ),
            );
          }
          if (state is ProcessSuccessState) {
            final processes = state.processes;
            return CustomScrollView(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (processes.isEmpty) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height -
                                Constants.appBarHeight -
                                Constants.bottomNavigationBarHeight,
                            child: DataEmptyWidget(
                              message: 'process.emptyList',
                              icon: AppAssets.icons.processEmpty.svg(),
                            ),
                          );
                        }

                        return ProcessItemWidget(
                          process: processes[index],
                        );
                      },
                      childCount: processes.isEmpty ? 1 : processes.length,
                    ),
                  ),
                ),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
