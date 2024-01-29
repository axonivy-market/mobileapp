import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/shared/extensions/number_ext.dart';
import 'package:axon_ivy/core/shared/extensions/string_ext.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/presentation/task_activity/widgets/task_web_view_widget.dart';
import 'package:axon_ivy/util/widgets/measure_size_widget.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskActivityWidget extends StatefulWidget {
  const TaskActivityWidget(
      {super.key, this.taskIvy, required this.fullRequestPath});

  final TaskIvy? taskIvy;
  final String fullRequestPath;

  @override
  State<TaskActivityWidget> createState() => _TaskActivityWidgetState();
}

class _TaskActivityWidgetState extends State<TaskActivityWidget>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  late Animation<double> _rotationAnimation;
  late AnimationController _controller;
  late double screenHeight;
  double taskDetailPanelHeight = 0;
  double appBarHeight = 0;
  bool isScrollToTop = true;
  bool canScrollVertical = false;
  bool isKeyboardVisible = false;
  final GlobalKey _appBartKey = GlobalKey();
  double _progress = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 0.5).animate(_controller);

    WidgetsBinding.instance.addPostFrameCallback((_) => _appBarHeight());
  }

  _appBarHeight() {
    Size? size = _appBartKey.currentContext?.size;
    appBarHeight = size?.height ?? kToolbarHeight;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenHeight = mediaQuery.size.height;
    isKeyboardVisible = mediaQuery.viewInsets.bottom > 100;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        key: _appBartKey,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        leadingWidth: 80,
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: BackButtonWidget(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              icon: AppAssets.icons.paperclip.svg(),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: canScrollVertical | isKeyboardVisible
                      ? 0
                      : taskDetailPanelHeight),
              child: TaskWebViewWidget(
                fullRequestPath: widget.fullRequestPath,
                onScrollToTop: _updateScrollingChanged,
                canScrollVertical: _canScrollVertical,
                onProgressChanged: _onProgressChanged,
              ),
            ),
            if (isScrollToTop && !isKeyboardVisible && widget.taskIvy != null)
              _taskDetailPanel(),
            if (!isScrollToTop)
              const Divider(color: AppColors.mercury, height: 1),
            if (_progress < 1.0)
              LinearProgressIndicator(
                minHeight: 2,
                value: _progress,
                backgroundColor: AppColors.mercury,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(AppColors.tropicSea),
              ),
          ],
        ),
      ),
    );
  }

  void _updateScrollingChanged(bool isScrollToTop) {
    setState(() {
      this.isScrollToTop = isScrollToTop;
    });
  }

  void _onProgressChanged(double progress) {
    setState(() {
      _progress = progress;
    });
  }

  void _canScrollVertical(bool canScroll) {
    setState(() {
      canScrollVertical = canScroll;
    });
  }

  Widget _taskDetailPanel() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacer(),
        MeasureSize(
          onChange: (size) {
            setState(() {
              if (!isExpanded) {
                taskDetailPanelHeight = size.height;
              }
            });
          },
          child: Container(
            decoration: const BoxDecoration(
              border:
                  Border(top: BorderSide(color: AppColors.mercury, width: 1.0)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    if (isExpanded) {
                      _controller.reverse();
                    } else {
                      _controller.forward();
                    }
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: AnimatedContainer(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    duration: const Duration(milliseconds: 300),
                    child: Stack(
                      children: [
                        AppAssets.icons.priorityHigh.svg(),
                        Padding(
                          padding: const EdgeInsets.only(left: 26, right: 35),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                maxLines: isExpanded ? null : 1,
                                overflow:
                                    isExpanded ? null : TextOverflow.ellipsis,
                                widget.taskIvy!.name.isEmptyOrNull
                                    ? "tasksView.noTaskName".tr()
                                    : widget.taskIvy!.name,
                                style: GoogleFonts.inter(
                                  color: AppColors.eerieBlack,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                maxLines: isExpanded ? null : 2,
                                overflow:
                                    isExpanded ? null : TextOverflow.ellipsis,
                                widget.taskIvy!.description.isEmptyOrNull
                                    ? "tasksView.noTaskDescription".tr()
                                    : widget.taskIvy!.description,
                                style: GoogleFonts.inter(
                                  color: AppColors.sonicSilver,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: RotationTransition(
                            turns: _rotationAnimation,
                            child: Container(
                              width: 28,
                              height: 28,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.bleachedSilk,
                              ),
                              child: AppAssets.icons.chevronUp.svg(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                if (isExpanded)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 3),
                    child: Column(
                      children: [
                        TaskInfoRowWidget(
                          icon: AppAssets.icons.paperclip.svg(height: 16),
                          title: "taskDetails.attachments".tr(),
                          value: "taskDetails.documents"
                              .plural(widget.taskIvy!.documents.length),
                        ),
                        TaskInfoRowWidget(
                          icon: AppAssets.icons.clock.svg(height: 16),
                          title: "taskDetails.expiryDate".tr(),
                          value: widget.taskIvy!.expiryTimeStamp == null
                              ? "taskDetails.na".tr()
                              : widget.taskIvy!.expiryTimeStamp!
                                  .formatDateYearWithFourNumber,
                        ),
                        TaskInfoRowWidget(
                          icon: AppAssets.icons.calendar.svg(height: 16),
                          title: "taskDetails.creationDate".tr(),
                          value: widget.taskIvy!.startTimeStamp
                              .formatDateYearWithFourNumber,
                        ),
                        TaskInfoRowWidget(
                          icon: AppAssets.icons.category2.svg(height: 16),
                          title: "taskDetails.category".tr(),
                          value: widget.taskIvy!.category.isNotEmptyOrNull
                              ? widget.taskIvy!.category
                              : "taskDetails.na".tr(),
                        ),
                        TaskInfoRowWidget(
                          icon:
                              AppAssets.icons.priorityHighBlack.svg(height: 16),
                          title: "taskDetails.priority".tr(),
                          value: widget.taskIvy!.priority.priorityName,
                        ),
                        TaskInfoRowWidget(
                          icon: AppAssets.icons.users.svg(height: 16),
                          title: "taskDetails.responsible".tr(),
                          value: widget.taskIvy!.activatorName,
                          isShowDivider: false,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
