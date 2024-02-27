import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop(false);
      },
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            AppAssets.icons.chevronLeft.svg(),
            Expanded(
              child: Text(
                "generalBack".tr(),
                style: GoogleFonts.inter(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColors.tropicSea,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}