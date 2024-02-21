import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/presentation/profile/bloc/profile_bloc.dart';
import 'package:axon_ivy/presentation/profile/view/profile_logged_in_widget.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'widgets/login_widget.dart';

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
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Stack(
          children: [
            (SharedPrefs.isLogin ?? false)
                ? const ProfileLoggedInWidget()
                : const LoginWidget(),
            Positioned(
              bottom: 15,
              right: 0,
              left: 0,
              child: VersionNameWidget(
                versionName: appVersionNumber,
              ),
            )
          ],
        );
      },
    );
  }
}
