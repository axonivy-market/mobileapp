import 'package:axon_ivy/core/util/resources/widget_heights.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OfflinePopupWidget extends StatelessWidget {
  const OfflinePopupWidget({
    super.key,
    required this.description,
    required this.onRefresh,
  });

  final String description;

  final Function onRefresh;

  @override
  Widget build(BuildContext context) {
    return _buildOfflineDialog(context);
  }

  Widget _buildOfflineDialog(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          CupertinoSliverRefreshControl(
            onRefresh: () async => onRefresh(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => SizedBox(
                height: getNoDataViewHeight(MediaQuery.of(context).size.height,
                    MediaQuery.of(context).viewInsets.bottom),
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16).r,
                    padding: const EdgeInsets.all(16).r,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).r,
                        color: Theme.of(context).colorScheme.background),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppAssets.icons.cloudOff.svg(
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.tertiaryContainer,
                                BlendMode.srcIn)),
                        10.verticalSpace,
                        Text(
                          "offline.popup_title".tr(),
                          style: GoogleFonts.inter(
                            color: Theme.of(context).colorScheme.surface,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        10.verticalSpace,
                        Text(
                          description,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
