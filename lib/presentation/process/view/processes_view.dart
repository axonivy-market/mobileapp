import 'dart:math';

import 'package:axon_ivy/core/di/di_setup.dart';
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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Random().nextInt(1) != 0
              ? const ProcessEmptyWidget()
              : ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index) {
                            return const Column(
                              children: [
                                ProcessItemWidget(),
                                SizedBox(height: 10),
                              ],
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
        ),
      ),
    );
  }
}
