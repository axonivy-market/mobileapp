import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 86,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          color: AppColors.tropicSea),
                      child: SizedBox(
                        child: Center(
                          child: Text(
                            "All",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 86,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          color: AppColors.bleachedSilk),
                      child: SizedBox(
                        child: Center(
                          child: Text(
                            "Expired",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.sonicSilver),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container()
              ],
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 15),
                children: const [
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  TaskItemWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
