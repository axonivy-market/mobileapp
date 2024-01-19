import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/presentation/profile/bloc/profile_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/generated/colors.gen.dart';
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
        height: 181,
        child: Column(
          children: [
            AppAssets.icons.login.svg(),
            Text(
              "profile.noServer".tr(),
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.eerieBlack),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (!(SharedPrefs.isLogin ?? false)) {
                        context.push("/login").then(
                              (value) => context.read<ProfileBloc>().add(
                                    ProfileEvent.loggedIn(value as bool),
                                  ),
                            );
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: const BoxDecoration(
                        color: AppColors.placebo,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        "profile.signIn".tr(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: AppColors.tropicSea),
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
