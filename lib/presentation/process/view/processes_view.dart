import 'package:axon_ivy/presentation/process/view/widgets/process_item_widget.dart';
// import 'package:axon_ivy/presentation/util/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class ProcessesView extends StatelessWidget {
  const ProcessesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  itemCount: 10,
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
