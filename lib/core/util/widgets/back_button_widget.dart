import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BackButtonWidget extends StatelessWidget {
  BackButtonWidget({super.key, this.shouldFetch = false});
  bool shouldFetch;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop(shouldFetch);
      },
      child: Container(
        color: Theme.of(context).colorScheme.background,
        child: Row(
          children: [
            AppAssets.icons.chevronLeft.svg(
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn)),
            Expanded(
              child: Text(
                "generalBack".tr(),
                style: GoogleFonts.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
