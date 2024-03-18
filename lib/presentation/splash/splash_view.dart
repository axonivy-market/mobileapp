import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/presentation/splash/splash_cubit.dart';
import 'package:axon_ivy/router/app_router.dart';
import 'package:axon_ivy/util/widgets/version_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashCubit>()
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
                  child: Center(
                    child: Theme.of(context).brightness == Brightness.light
                        ? AppAssets.images.splashAxonIvyLogo.svg()
                        : AppAssets.images.splashAxonIvyLogoDark.svg(),
                  ),
                ),
                VersionNameWidget(versionName: state.packageInfo.version),
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
