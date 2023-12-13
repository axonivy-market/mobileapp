import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppAssets.icons.logo.svg(),
                Expanded(child: Container()),
                Expanded(child: Container()),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'last updated 20:17',
                      style: TextStyle(color: AppColors.babyTalkGrey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    AppAssets.icons.offline.svg(),
                    const SizedBox(
                      width: 10,
                    ),
                    AppAssets.icons.notification.svg()
                  ],
                )
              ],
            ),
          ),
          const Expanded(
            child: Center(
              child: ProfileForm(),
            ),
          )
        ],
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

  @override
  void initState() {
    baseUrlController.text = SharedPrefs.getBaseUrl ?? '';
    super.initState();
  }

  @override
  void dispose() {
    baseUrlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(children: [
        TextFormField(
          controller: baseUrlController,
          decoration: const InputDecoration(
            hintText: 'Server URL like http://127.0.0.1:8081/api',
          ),
        ),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () {
            if (baseUrlController.text.isNotEmptyOrNull) {
              SharedPrefs.setBaseUrl(baseUrlController.text);
            }
          },
          child: Text(
            'Apply',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: AppColors.eerieBlack,
            ),
          ),
        ),
      ]),
    );
  }
}
