import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
