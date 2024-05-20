import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskInfoRowWidget extends StatelessWidget {
  const TaskInfoRowWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.value,
      this.isShowDivider = true,
      this.isTitleHighlight = false});

  final SvgPicture icon;
  final String title;
  final String value;
  final bool isShowDivider;
  final bool isTitleHighlight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.verticalSpace,
        Row(
          children: [
            icon,
            5.horizontalSpace,
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  value,
                  style: GoogleFonts.inter(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: isTitleHighlight
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.secondary),
                ),
              ),
            ),
          ],
        ),
        isShowDivider ? 10.verticalSpace : const SizedBox.shrink(),
        isShowDivider
            ? Divider(
                height: 0.5.h,
                color: Theme.of(context).colorScheme.secondaryContainer,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
