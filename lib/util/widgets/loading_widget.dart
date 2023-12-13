import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitRing(
        color: AppColors.tropicSea,
        lineWidth: 4,
        size: 50,
      ),
    );
  }
}
