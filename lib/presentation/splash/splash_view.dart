import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/presentation/splash/splash_cubit.dart';
import 'package:axon_ivy/presentation/splash/splash_state.dart';
import 'package:axon_ivy/router/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()
        ..goToHomeScreen()
        ..initPackageInfo(),
      child: BlocConsumer<SplashCubit, SplashState>(listener: (_, state) {
        if (state is AppStarted) {
          context.go(AppRoutes.task);
        }
      }, builder: (context, state) {
        if (state is AppInfo) {
          return Scaffold(
            body: Column(
              children: [
                Expanded(
                  child:
                      Center(child: AppAssets.images.splashAxonIvyLogo.svg()),
                ),
                Text(
                  'splashCopyright',
                  style: GoogleFonts.inter(
                      fontSize: 12, color: AppColors.blackMana),
                ).tr(
                  namedArgs: {'version': state.packageInfo.version},
                ),
                const SizedBox(height: 25),
              ],
            ),
          );
        }
        return Container();
      }),
    );
  }
}
