import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: Center(
        child: ProfileForm(),
      ),
    );
  }
}

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final baseUrlController = TextEditingController();
  String appVersionNumber = "1.0.1";
  @override
  void initState() {
    baseUrlController.text = SharedPrefs.getBaseUrl ?? '';
    super.initState();
    getAppVersionNumber();
  }

  @override
  void dispose() {
    baseUrlController.dispose();
    super.dispose();
  }

  Future<void> getAppVersionNumber() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      appVersionNumber = info.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Center(
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
                            if ((SharedPrefs.isLogin ?? false) == false) {
                              context.push("/login");
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
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            SharedPrefs.clear();
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
                              "profile.signOut".tr(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.tropicSea),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //PackageInfo
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Text(
              'splashCopyright',
              style:
                  GoogleFonts.inter(fontSize: 12, color: AppColors.blackMana),
            ).tr(
              namedArgs: {'version': appVersionNumber},
            ),
          )
        ],
      ),
    );
  }
}
