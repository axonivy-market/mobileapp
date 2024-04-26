import 'package:axon_ivy/features/profile/presentation/bloc/logged_cubit/logged_in_cubit.dart';
import 'package:axon_ivy/features/profile/presentation/bloc/profile_bloc/profile_bloc.dart';
import 'package:axon_ivy/features/profile/presentation/widgets/profile_logged_in_widget.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:axon_ivy/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../widgets/login_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
    return BlocConsumer<LoggedInCubit, LoggedInState>(
      listener: (context, state) {
        context.read<ProfileBloc>().add(const ProfileEvent.fetchProfile());
      },
      builder: (context, state) {
        return Stack(
          children: [
            (SharedPrefs.isLogin ?? false)
                ? const ProfileLoggedInWidget()
                : const LoginWidget(),
            Positioned(
              bottom: 15.h,
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
