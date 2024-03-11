import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskInfoRowWidget extends StatelessWidget {
  const TaskInfoRowWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.isShowDivider = true,
  });

  final SvgPicture icon;
  final String title;
  final String value;
  final bool isShowDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            icon,
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 13,
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
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ),
          ],
        ),
        isShowDivider ? const SizedBox(height: 10) : const SizedBox.shrink(),
        isShowDivider
            ? Divider(
                height: 0.5,
                color: Theme.of(context).colorScheme.outline,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
