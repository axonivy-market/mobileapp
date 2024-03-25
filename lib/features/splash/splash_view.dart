import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/router/app_router.dart';
import 'package:axon_ivy/core/util/widgets/version_name_widget.dart';
import 'package:axon_ivy/features/splash/splash_cubit.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                25.verticalSpace,
              ],
            ),
          );
        }
        return Container();
      }),
    );
  }
}
