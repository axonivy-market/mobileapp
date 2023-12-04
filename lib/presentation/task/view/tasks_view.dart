import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: AppAssets.icons.logo.svg(),
        ),
        actions: [
          const Text(
            'last updated 20:17',
            style: TextStyle(color: AppColors.babyTalkGrey),
          ),
          const SizedBox(
            width: 10,
          ),
          AppAssets.icons.offline.svg(),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: AppAssets.icons.notification.svg(),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            Row(
              children: [],
            ),
            Expanded(
              child: ListView(
                children: const [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
