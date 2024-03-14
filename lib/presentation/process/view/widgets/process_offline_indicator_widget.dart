import 'dart:ui';

import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfflineIndicatorPopupWidget extends StatelessWidget {
  const OfflineIndicatorPopupWidget({
    super.key,
    required this.description,
    this.isShowingProcesses = false,
  });

  final bool isShowingProcesses;
  final String description;

  @override
  Widget build(BuildContext context) {
    if (isShowingProcesses) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
        child: _buildOfflineDialog(context),
      );
    } else {
      return _buildOfflineDialog(context);
    }
  }

  Widget _buildOfflineDialog(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppAssets.icons.cloudOff.svg(
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.tertiaryContainer,
                      BlendMode.srcIn)),
              const SizedBox(height: 10),
              Text(
                "offline.popup_title".tr(),
                style: GoogleFonts.inter(
                  color: Theme.of(context).colorScheme.surface,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
