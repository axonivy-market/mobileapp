
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomUnderlinedText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final Color underlineColor;
  final double gap;

  const CustomUnderlinedText({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.underlineColor,
    required this.gap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: GoogleFonts.inter(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
          ),
        ),
        Positioned(
          bottom:
              gap, // Adjust this value to change the gap between text and underline
          left: 0,
          right: 0,
          child: Container(
            height: 0.5, // Adjust the thickness of the underline
            color: underlineColor,
          ),
        ),
      ],
    );
  }
}
