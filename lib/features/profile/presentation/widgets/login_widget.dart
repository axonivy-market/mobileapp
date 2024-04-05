import 'package:axon_ivy/core/router/app_router.dart';
import 'package:axon_ivy/features/profile/presentation/bloc/logged_cubit/logged_in_cubit.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 242.w,
        height: 210.h,
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
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        "profile.demoMode".tr(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
