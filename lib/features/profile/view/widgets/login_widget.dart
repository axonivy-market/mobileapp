import 'package:axon_ivy/core/router/app_router.dart';
import 'package:axon_ivy/core/util/widgets/offline_popup_widget.dart';
import 'package:axon_ivy/features/profile/bloc/logged_in_cubit.dart';
import 'package:axon_ivy/features/search/bloc/engine_info_cubit/engine_info_cubit.dart';
import 'package:axon_ivy/features/tabbar/bloc/connectivity_bloc/connectivity_bloc.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/shared_preference.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(98, 0, 98, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppAssets.icons.login.svg(
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.tertiaryContainer,
                      BlendMode.srcIn)),
              Text(
                "profile.noServer".tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.surface),
              ),
              20.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (!(SharedPrefs.isLogin ?? false)) {
                          context.push(AppRoutes.login).then(
                                (value) => context
                                    .read<LoggedInCubit>()
                                    .loggedIn(value as bool),
                              );
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10).r,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.all(
                            const Radius.circular(8).r,
                          ),
                        ),
                        child: Text(
                          "profile.signIn".tr(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                      ),
                    ),
                  ),
                  5.horizontalSpace
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        SharedPrefs.setIsDemoLogin(true);
                        SharedPrefs.setDemoSetting(true);
                        context.read<LoggedInCubit>().setDemoUser();
                        context.read<LoggedInCubit>().loggedIn(true);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10).r,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.all(
                            const Radius.circular(8).r,
                          ),
                        ),
                        child: Text(
                          "profile.demoMode".tr(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ),
                  ),
                  5.horizontalSpace
                ],
              ),
            ],
          ),
        ),
      ),
      BlocBuilder<ConnectivityBloc, ConnectivityState>(
        builder: (context, state) {
          if (state is NotConnectedState) {
            return OfflinePopupWidget(
              description: "offline.login_description".tr(),
              onRefresh: () async {
                final engineCubit = context.read<EngineInfoCubit>();
                await Future.delayed(const Duration(seconds: 1));
                engineCubit.getEngineInfo();
              },
            );
          }
          return Container();
        },
      ),
    ] 
    );
  }
}
