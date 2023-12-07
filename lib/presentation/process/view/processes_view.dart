import 'dart:math';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/presentation/process/view/widgets/process_item_widget.dart';
import 'package:axon_ivy/presentation/util/widgets/home_appbar.dart';
// import 'package:axon_ivy/presentation/util/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/process_empty_widget.dart';

class ProcessesView extends StatelessWidget {
  const ProcessesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
