import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0).r,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppAssets.icons.logo.svg(),
                Expanded(child: Container()),
                Expanded(child: Container()),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'last updated 20:17',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    10.horizontalSpace,
                    AppAssets.icons.offline.svg(
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.secondary,
                            BlendMode.srcIn)),
                    10.horizontalSpace,
                    AppAssets.icons.notification.svg()
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Notification View",
                style: TextStyle(fontSize: 30.sp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
