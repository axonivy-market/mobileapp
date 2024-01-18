import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';
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
  });

  final String text;
  final int startIndex;
  final int endIndex;
  final int maxLine;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: text.substring(0, startIndex),
        style: GoogleFonts.inter(
            color: AppColors.darkSouls,
            fontWeight: fontWeight,
            fontSize: fontSize),
        children: [
          TextSpan(
            text: text.substring(startIndex, startIndex + endIndex),
            style: GoogleFonts.inter(
                color: AppColors.eerieBlack,
                fontWeight: fontWeight,
                fontSize: fontSize),
          ),
          TextSpan(
              text: text.substring(startIndex + endIndex),
              style: GoogleFonts.inter(
                  color: AppColors.darkSouls,
                  fontWeight: fontWeight,
                  fontSize: fontSize)),
        ],
      ),
    );
  }
}
