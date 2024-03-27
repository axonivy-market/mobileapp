import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/util/resources/widget_heights.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskConflictWidget extends StatelessWidget {
  const TaskConflictWidget({
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
      color: Colors.black54,
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
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppAssets.icons.cloudOff.svg(),
                        const SizedBox(height: 10),
                        Text(
                          "Task State Conflicted",
                          style: GoogleFonts.inter(
                            color: AppColors.eerieBlack,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          description,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: AppColors.sonicSilver,
                            fontSize: 17,
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
