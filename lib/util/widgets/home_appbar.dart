import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key, this.isShowLastUpdated = false});

  final bool isShowLastUpdated;

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 1,
      shadowColor: AppColors.mercury,
      surfaceTintColor: Colors.white,
      elevation: 0,
      leadingWidth: 120,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: AppAssets.icons.logo.svg(),
      ),
      actions: [
        isShowLastUpdated
            ? const Text(
                'last updated 20:17',
                style: TextStyle(color: AppColors.babyTalkGrey),
              )
            : Container(),
        const SizedBox(
          width: 10,
        ),
        isShowLastUpdated ? AppAssets.icons.offline.svg() : Container(),
        IconButton(
          onPressed: () {},
          icon: AppAssets.icons.notification.svg(),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
