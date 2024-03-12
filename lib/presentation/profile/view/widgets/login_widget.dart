import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/presentation/profile/bloc/logged_in_cubit.dart';
import 'package:axon_ivy/router/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/shared_preference.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 242,
        height: 210,
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
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.surface),
            ),
            const SizedBox(height: 20),
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
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        "profile.signIn".tr(),
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
