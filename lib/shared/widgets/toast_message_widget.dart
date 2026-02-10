import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ToastMessageWidget extends StatelessWidget {
  final Function cancelFunc;
  final String message;
  final SvgGenImage leadingIcon;

  const ToastMessageWidget(
      {super.key,
      required this.cancelFunc,
      required this.message,
      required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        cancelFunc.call();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 11).r,
        child: Card(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(const Radius.circular(10.0).r),
          ),
          surfaceTintColor: Theme.of(context).colorScheme.onPrimaryContainer,
          elevation: 15,
          shadowColor: Colors.black.withValues(alpha: 0.3),
          child: Padding(
            padding: const EdgeInsets.all(15).r,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                leadingIcon.svg(),
                SizedBox(width: 15.w),
                Expanded(
                  child: Text(
                    message,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 17.sp,
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
