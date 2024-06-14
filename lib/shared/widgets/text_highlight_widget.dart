import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHighlightWidget extends StatelessWidget {
  const TextHighlightWidget({
    super.key,
    required this.text,
    required this.startIndex,
    required this.endIndex,
    required this.maxLine,
    required this.fontSize,
    required this.fontWeight,
    this.textColor,
    this.isSearchPage = false,
    this.isTaskDone = false,
  });

  final bool isSearchPage;
  final Color? textColor;
  final String text;
  final int startIndex;
  final int endIndex;
  final int maxLine;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isTaskDone;

  @override
  Widget build(BuildContext context) {
    int startIndexQuery = (startIndex < 0 || endIndex < 0) ? 0 : startIndex;
    int endIndexQuery = (startIndex < 0 || endIndex < 0) ? 0 : endIndex;
    Color defaultTextColor = isTaskDone
        ? Theme.of(context)
            .colorScheme
            .secondary // Change to desired color for done tasks
        : (textColor ?? Theme.of(context).colorScheme.onSecondary);

    return SizedBox(
      height: (fontSize + 4.sp) * maxLine,
      child: RichText(
        maxLines: maxLine,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: text.substring(0, startIndexQuery),
          style: GoogleFonts.inter(
            color: defaultTextColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
          children: [
            TextSpan(
              text: text.substring(
                  startIndexQuery, startIndexQuery + endIndexQuery),
              style: GoogleFonts.inter(
                color: isSearchPage
                    ? Theme.of(context).colorScheme.onSurfaceVariant
                    : defaultTextColor,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
            TextSpan(
              text: text.substring(startIndexQuery + endIndexQuery),
              style: GoogleFonts.inter(
                color: isSearchPage
                    ? Theme.of(context).colorScheme.onSecondary
                    : defaultTextColor,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
