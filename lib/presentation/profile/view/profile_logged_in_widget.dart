import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/presentation/base_view/base_view.dart';
import 'package:axon_ivy/presentation/profile/bloc/profile_bloc.dart';
import 'package:axon_ivy/theme/bloc/theme_event.dart';
import 'package:axon_ivy/theme/bloc/theme_state.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:axon_ivy/presentation/profile/bloc/logged_in_cubit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:axon_ivy/theme/bloc/theme_bloc.dart'; // Import the ThemeBloc
import 'package:axon_ivy/theme/theme.dart'; // Import your theme data

class ProfileLoggedInWidget extends BasePageScreen {
  const ProfileLoggedInWidget({super.key});

  @override
  State<ProfileLoggedInWidget> createState() => _ProfileLoggedInWidgetState();
}

class _ProfileLoggedInWidgetState extends State<ProfileLoggedInWidget> {
  bool _isDemoMode = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
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
          const SizedBox(height: 25),
          _buildDemo(),
          _buildDarkMode(),
          _buildLanguage(),
          const Spacer(),
          _buildSignOutButton(),
          const SizedBox(height: 30),
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
            borderRadius: BorderRadius.circular(8),
          ),
        elevation: 0, 
      ),
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            'profile.signOut'.tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 17,
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
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl: context.read<LoggedInCubit>().getGravatarUrl(emailAddress),
          errorWidget: (context, url, error) => CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            child: Text(
              context
                  .read<LoggedInCubit>()
                  .displayShortNameAvatar(fullName)
                  .toUpperCase(),
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fullName,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Theme.of(context).colorScheme.surface,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              if (emailAddress.isNotEmpty)
                Text(
                  emailAddress,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
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
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "profile.language".tr(),
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Theme.of(context).colorScheme.surface),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "English",
                style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.w400),
              ),
              AppAssets.icons.chevronRight.svg(
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
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "profile.demoMode".tr(),
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Theme.of(context).colorScheme.surface),
          ),
          SwitchWidget(
            isDarkMode: false,
            isDemoMode: _isDemoMode,
            onThemeChanged: (value) {},
            onDemoModeChanged: (value) {
              setState(() {
                _isDemoMode = value;
              });
              // You can put your logic for demo mode change here
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
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.outline),
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "profile.darkMode".tr(),
                style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
              SwitchWidget(
                isDarkMode: isDarkMode,
                isDemoMode: false,
                onThemeChanged: (value) {
                  context.read<ThemeBloc>().add(
                        ThemeEvent.changeTheme(value ? darkMode : lightMode),
                      );
                },
                onDemoModeChanged: (value) {
                  // Handle demo mode change here if needed
                },
              ),
            ],
          ),
        );
      },
    );
}
}
