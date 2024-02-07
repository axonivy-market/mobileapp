import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/models/profile/profile.dart';
import 'package:axon_ivy/presentation/base_view/base_view.dart';
import 'package:axon_ivy/presentation/profile/bloc/logged_in_cubit.dart';
import 'package:axon_ivy/presentation/profile/bloc/profile_bloc.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileLoggedInWidget extends BasePageScreen {
  const ProfileLoggedInWidget({super.key});

  final Profile profileTest = const Profile(
      name: "Developer User", email: "tung.leminh@axonactive.com");

  @override
  State<ProfileLoggedInWidget> createState() => _ProfileLoggedInWidgetState();
}

class _ProfileLoggedInWidgetState
    extends BasePageScreenState<ProfileLoggedInWidget> {
  late final LoggedInCubit loggedInCubit;

  Future<void> uploadFile() async {
    FilePickerResult? result;

    result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      allowMultiple: true,
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      debugPrint("----> file name ${file.name}");
      debugPrint("----> file size ${file.size / 1000000} MB");
      debugPrint("----> file extension ${file.extension}");
      debugPrint("----> file path ${file.path}");
    } else {
      debugPrint("----> null file");
    }
  }

  Future<void> uploadImage() async {
    FilePickerResult? result;

    result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      debugPrint("----> image name ${file.name}");
      debugPrint("----> image size ${file.size / 1000000} MB");
      debugPrint("----> image extension ${file.extension}");
      debugPrint("----> image path ${file.path}");
    } else {
      debugPrint("----> null file");
    }
  }

  @override
  void initState() {
    super.initState();
    loggedInCubit = getIt<LoggedInCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loggedInCubit,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserInfo(),
            const SizedBox(height: 25),
            _buildDemo(),
            _buildLanguage(),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      uploadFile();
                    },
                    child: const Text("Attach file")),
                ElevatedButton(
                    onPressed: () {
                      uploadImage();
                    },
                    child: const Text("Attach picture")),
              ],
            ),
            const Spacer(),
            _buildSignOutButton(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  ElevatedButton _buildSignOutButton() {
    return ElevatedButton(
      onPressed: () {
        SharedPrefs.clear();
        context.read<ProfileBloc>().add(
              const ProfileEvent.loggedIn(false),
            );
      },
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          backgroundColor: AppColors.placebo),
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            'profile.signOut'.tr(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: AppColors.watermelonade,
            ),
          ),
        ),
      ),
    );
  }

  Row _buildUserInfo() {
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
          imageUrl: loggedInCubit.getGravatarUrl(widget.profileTest.email),
          errorWidget: (context, url, error) => CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.bleachedSilk,
            child: Text(
              loggedInCubit
                  .displayShortNameAvatar(widget.profileTest.name)
                  .toUpperCase(),
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: AppColors.silver,
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
                widget.profileTest.name,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: AppColors.eerieBlack,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Text(
                widget.profileTest.email,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: AppColors.eerieBlack,
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
        color: AppColors.bleachedSilk,
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
                color: AppColors.eerieBlack),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "English",
                style: GoogleFonts.inter(
                    fontSize: 13,
                    color: AppColors.eerieBlack,
                    fontWeight: FontWeight.w400),
              ),
              AppAssets.icons.chevronRight.svg(
                  colorFilter: const ColorFilter.mode(
                AppColors.tropicSea,
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
        color: AppColors.bleachedSilk,
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
                color: AppColors.eerieBlack),
          ),
          const SwitchWidget(),
        ],
      ),
    );
  }
}
