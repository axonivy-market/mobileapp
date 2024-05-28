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
  });

  final bool isSearchPage;
  final Color? textColor;
  final String text;
  final int startIndex;
  final int endIndex;
  final int maxLine;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    int startIndexQuery = (startIndex < 0 || endIndex < 0) ? 0 : startIndex;
    int endIndexQuery = (startIndex < 0 || endIndex < 0) ? 0 : endIndex;

    return SizedBox(
      height: (fontSize + 4.sp) * maxLine,
      child: RichText(
        maxLines: maxLine,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: text.substring(0, startIndexQuery),
          style: GoogleFonts.inter(
            color: Theme.of(context).colorScheme.secondary,
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
                    : textColor,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
            TextSpan(
              text: text.substring(startIndexQuery + endIndexQuery),
              style: GoogleFonts.inter(
                color: isSearchPage
                    ? Theme.of(context).colorScheme.secondary
                    : textColor,
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
