import 'package:flutter/material.dart';

class DropShadowWidget extends StatelessWidget {
  const DropShadowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 30,
            offset: const Offset(0, -4),
            spreadRadius: 0,
          ),
        ],
      ),
    );
  }
}
