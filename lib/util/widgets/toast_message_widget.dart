import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:flutter/material.dart';
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
        margin: const EdgeInsets.symmetric(horizontal: 11),
        child: Card(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          surfaceTintColor: Theme.of(context).colorScheme.onPrimaryContainer,
          elevation: 15,
          shadowColor: Colors.black.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                leadingIcon.svg(),
                const SizedBox(width: 15),
                Expanded(
                  child: Text(
                    message,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).colorScheme.surface,
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
