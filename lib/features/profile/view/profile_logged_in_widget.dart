import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/extensions/string_ext.dart';
import 'package:axon_ivy/core/theme/theme.dart'; // Import your theme data
import 'package:axon_ivy/core/util/widgets/widgets.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/features/base_page/base_page.dart';
import 'package:axon_ivy/features/profile/bloc/logged_in_cubit.dart';
import 'package:axon_ivy/features/profile/bloc/profile_bloc.dart';
import 'package:axon_ivy/features/theme/bloc/theme_bloc.dart'; // Import the ThemeBloc
import 'package:axon_ivy/features/theme/bloc/theme_event.dart';
import 'package:axon_ivy/features/theme/bloc/theme_state.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileLoggedInWidget extends BasePage {
  const ProfileLoggedInWidget({super.key});

  @override
  State<ProfileLoggedInWidget> createState() => _ProfileLoggedInWidgetState();
}

class _ProfileLoggedInWidgetState extends State<ProfileLoggedInWidget> {
  @override
  void initState() {
    super.initState();
  }

  bool isDemoMode = SharedPrefs.demoSetting ?? false;
  bool isDemoLogin = SharedPrefs.isDemoLogin ?? false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
            final profile = SharedPrefs.getProfileInfo();
            String fullName = profile?.fullName ?? "";
            String email = profile?.emailAddress ?? "";
            if (state is ProfileInfo) {
              fullName = state.profile.fullName;
              email = state.profile.emailAddress;
            }
            return _buildUserInfo(fullName, email);
          }),
          25.verticalSpace,
          _buildDemo(),
          _buildDarkMode(),
          _buildLanguage(),
          const Spacer(),
          _buildSignOutButton(),
          30.verticalSpace
        ],
      ),
    );
  }

  ElevatedButton _buildSignOutButton() {
    return ElevatedButton(
      onPressed: () {
        SharedPrefs.clear();
        context.read<LoggedInCubit>().loggedIn(false);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8).r,
        ),
        elevation: 0,
      ),
      child: SizedBox(
        height: 44.h,
        child: Center(
          child: Text(
            'profile.signOut'.tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 17.sp,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ),
    );
  }

  Row _buildUserInfo(String fullName, String emailAddress) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CachedNetworkImage(
          imageBuilder: (context, imageProvider) => Container(
            width: 60.0.h,
            height: 60.0.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl: context.read<LoggedInCubit>().getGravatarUrl(emailAddress),
          errorWidget: (context, url, error) => CircleAvatar(
            radius: 30.r,
            backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            child: Text(
              context
                  .read<LoggedInCubit>()
                  .displayShortNameAvatar(fullName)
                  .toUpperCase(),
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 22.sp,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
        10.horizontalSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fullName,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                  color: Theme.of(context).colorScheme.surface,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              5.verticalSpace,
              if (emailAddress.isNotEmpty)
                Text(
                  emailAddress,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildLanguage() {
    return Container(
      height: 44.h,
      padding: const EdgeInsets.symmetric(horizontal: 10).r,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(8).r,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "profile.language".tr(),
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 17.sp,
                color: Theme.of(context).colorScheme.surface),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "English",
                style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.w400),
              ),
              AppAssets.icons.chevronRight.svg(
                  width: 21.h,
                  height: 21.h,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDemo() {
    return Container(
      height: 44.h,
      padding: const EdgeInsets.symmetric(horizontal: 10).r,
      margin: const EdgeInsets.only(bottom: 10).r,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(8).r,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "profile.demoMode".tr(),
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 17.sp,
                color: Theme.of(context).colorScheme.surface),
          ),
          SwitchWidget(
            isActive: isDemoMode,
            onChanged: (value) {
              setState(() {
                isDemoMode = value;
              });
              if (!isDemoMode) {
                if (!isDemoLogin) {
                  SharedPrefs.setDemoSetting(false);
                  getIt<Dio>().options.baseUrl =
                      SharedPrefs.getBaseUrl.isEmptyOrNull
                          ? AppConfig.baseUrl
                          : SharedPrefs.getBaseUrl!;
                } else {
                  SharedPrefs.clear(); // Clear shared preferences
                  context.read<LoggedInCubit>().loggedIn(false);
                }
              } else {
                context.read<LoggedInCubit>().setDemoUser();
                SharedPrefs.setDemoSetting(true);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDarkMode() {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final isDarkMode = state.themeData?.brightness == Brightness.dark;
        return Container(
          height: 44.h,
          padding: const EdgeInsets.symmetric(horizontal: 10).r,
          margin: const EdgeInsets.only(bottom: 10).r,
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.outline),
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            borderRadius: BorderRadius.circular(8).r,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "profile.darkMode".tr(),
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
              SwitchWidget(
                isActive: isDarkMode,
                onChanged: (value) {
                  context.read<ThemeBloc>().add(
                        ThemeEvent.changeTheme(value ? darkMode : lightMode),
                      );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
