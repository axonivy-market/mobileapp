import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
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
                    const SizedBox(
                      width: 10,
                    ),
                    AppAssets.icons.offline.svg(
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.secondary,
                            BlendMode.srcIn)),
                    const SizedBox(
                      width: 10,
                    ),
                    AppAssets.icons.notification.svg()
                  ],
                )
              ],
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                "Notification View",
                style: TextStyle(fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
