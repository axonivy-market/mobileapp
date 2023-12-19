import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/data/models/processes/process.dart';
import 'package:axon_ivy/presentation/process/bloc/process_bloc.dart';
import 'package:axon_ivy/presentation/process/process.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProcessesView extends StatefulWidget {
  const ProcessesView({super.key});

  @override
  State<ProcessesView> createState() => _ProcessesViewState();
}

class _ProcessesViewState extends State<ProcessesView> {
  late final ProcessBloc _processBloc;

  @override
  void initState() {
    super.initState();
    _processBloc = getIt<ProcessBloc>();
    _processBloc.add(const ProcessEvent.getProcess());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _processBloc,
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: BlocBuilder<ProcessBloc, ProcessState>(
          builder: (context, state) {
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
              return RefreshIndicator(
                color: AppColors.tropicSea,
                onRefresh: () async {
                  _processBloc.add(const ProcessEvent.getProcess());
                },
                child: processes.isEmpty
                    ? SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height -
                              Constants.appBarHeight -
                              Constants.bottomNavigationBarHeight,
                          child: const ProcessEmptyWidget(),
                        ),
                      )
                    : _processList(processes),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _processList(List<Process> processes) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      itemCount: processes.length,
      itemBuilder: (context, index) {
        final process = processes[index];
        return ProcessItemWidget(
          process: process,
        );
      },
    );
  }
}
