import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropShadowWidget extends StatelessWidget {
  const DropShadowWidget({
    super.key,
    this.yOffset = 4,
  });

  final double yOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 30.r,
            offset: Offset(0, yOffset),
            spreadRadius: 0,
          ),
        ],
      ),
    );
  }
}
