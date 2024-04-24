import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/extensions/date_time_ext.dart';
import 'package:axon_ivy/core/extensions/number_ext.dart';
import 'package:axon_ivy/core/extensions/string_ext.dart';
import 'package:axon_ivy/core/util/widgets/widgets.dart';
import 'package:axon_ivy/features/base_page/base_page.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart';
import 'package:axon_ivy/features/task/presentation/widgets/task_web_view_widget.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskActivityPage extends BasePage {
  const TaskActivityPage(
      {super.key, this.taskIvy, required this.fullRequestPath});

  final TaskIvy? taskIvy;
  final String fullRequestPath;

  @override
  State<TaskActivityPage> createState() => _TaskActivityPageState();
}

class _TaskActivityPageState extends BasePageState<TaskActivityPage>
    with SingleTickerProviderStateMixin {
  LoadingOverlay loadingOverlay = LoadingOverlay();
  late Animation<double> _rotationAnimation;
  late AnimationController _controller;
  late TaskDetailBloc taskDetailBloc;
  late double screenHeight;
  final GlobalKey _appBarKey = GlobalKey();
  double taskDetailPanelHeight = 0;
  double appBarHeight = 0;
  bool isScrollToTop = true;
  bool canScrollVertical = false;
  bool isKeyboardVisible = false;
  double _progress = 0;
  bool isExpanded = false;
  int documentLength = 0;
  bool shouldFetchTaskList = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _rotationAnimation = Tween<double>(begin: 0, end: 0.5).animate(_controller);
    taskDetailBloc = getIt<TaskDetailBloc>();
    WidgetsBinding.instance.addPostFrameCallback((_) => _appBarHeight());
  }

  _appBarHeight() {
    Size? size = _appBarKey.currentContext?.size;
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
    isKeyboardVisible = mediaQuery.viewInsets.bottom > 100.h;
    TaskIvy? task = widget.taskIvy;
    documentLength = task?.caseTask?.documents.length ?? 0;
    return BlocProvider(
      create: (context) => taskDetailBloc,
      child: BlocListener<TaskDetailBloc, TaskDetailState>(
        listener: (context, state) {
          if (state is TaskDetailLoadingState) {
            showLoading();
          } else if (state is TaskDetailSuccessState) {
            setState(() {
              shouldFetchTaskList = true;
            });
            hideLoading();
          } else if (state is TaskDetailErrorState) {
            hideLoading();
            showMessageDialog(
                title: "documentList.errorTitle".tr(), message: state.error);
          }
        },
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            key: _appBarKey,
            backgroundColor: Theme.of(context).colorScheme.background,
            automaticallyImplyLeading: false,
            surfaceTintColor: Theme.of(context).colorScheme.background,
            leadingWidth: 100.w,
            leading: BackButtonWidget(shouldFetch: shouldFetchTaskList),
            actions: [
              if (task != null)
                BlocBuilder<TaskDetailBloc, TaskDetailState>(
                  builder: (context, state) {
                    if (state is TaskDetailSuccessState) {
                      task = state.task;
                    }
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0).r,
                      child: IconButton(
                        icon: AppAssets.icons.paperclip.svg(
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.surface,
                                BlendMode.srcIn)),
                        onPressed: () {
                          context
                              .pushNamed("documentList", extra: task)
                              .then((value) {
                            if (value is bool && value == true) {
                              taskDetailBloc
                                  .add(TaskDetailEvent.getTaskDetail(task!.id));
                            }
                          });
                        },
                      ),
                    );
                  },
                ),
            ],
          ),
          body: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: canScrollVertical || isKeyboardVisible
                          ? 0
                          : taskDetailPanelHeight),
                  child: TaskWebViewWidget(
                    fullRequestPath: widget.fullRequestPath,
                    onScrollToTop: _updateScrollingChanged,
                    canScrollVertical: _canScrollVertical,
                    onProgressChanged: _onProgressChanged,
                  ),
                ),
                if (isScrollToTop &&
                    !isKeyboardVisible &&
                    widget.taskIvy != null)
                  BlocBuilder<TaskDetailBloc, TaskDetailState>(
                    builder: (context, state) {
                      return _taskDetailPanel(
                          state is TaskDetailSuccessState ? state.task : task);
                    },
                  ),
                if (!isScrollToTop) const DropShadowWidget(),
                if (_progress < 1.0)
                  LinearProgressIndicator(
                    minHeight: 2,
                    value: _progress,
                    backgroundColor: Theme.of(context).colorScheme.outline,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.primary,
                    ),
                  ),
              ],
            ),
          ),
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

  Widget _taskDetailPanel(TaskIvy? task) {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DropShadowWidget(
                yOffset: -4,
              ),
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
                  color: Theme.of(context).colorScheme.background,
                  padding: const EdgeInsets.fromLTRB(16, 15, 16, 15).r,
                  duration: const Duration(milliseconds: 300),
                  child: Stack(
                    children: [
                      widget.taskIvy!.priority.priorityIcon(context),
                      Padding(
                        padding: EdgeInsets.only(
                                left: widget.taskIvy!.priority == 2 ? 4 : 26,
                                right: 35)
                            .r,
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
                                color: Theme.of(context).colorScheme.surface,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.sp,
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
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
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
                            width: 28.w,
                            height: 28.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                            ),
                            child: AppAssets.icons.chevronUp.svg(
                                height: 20.h,
                                width: 20.w,
                                colorFilter: ColorFilter.mode(
                                    Theme.of(context).colorScheme.surface,
                                    BlendMode.srcIn)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (isExpanded)
                AnimatedContainer(
                  color: Theme.of(context).colorScheme.background,
                  duration: const Duration(milliseconds: 300),
                  padding:
                      const EdgeInsets.only(left: 18, right: 18, bottom: 15).r,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          await context
                              .pushNamed("documentList", extra: task)
                              .then((value) {
                            if (value is bool && value == true) {
                              taskDetailBloc
                                  .add(TaskDetailEvent.getTaskDetail(task!.id));
                            }
                          });
                        },
                        child: TaskInfoRowWidget(
                          isTitleHighlight: true,
                          icon: AppAssets.icons.paperclip.svg(
                              height: 16.sp,
                              colorFilter: ColorFilter.mode(
                                  Theme.of(context).colorScheme.surface,
                                  BlendMode.srcIn)),
                          title: "taskDetails.attachments".tr(),
                          value: "taskDetails.documents"
                              .plural(task?.caseTask?.documents.length ?? 0),
                        ),
                      ),
                      TaskInfoRowWidget(
                        icon: AppAssets.icons.clock.svg(
                            height: 16.h,
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.surface,
                                BlendMode.srcIn)),
                        title: "taskDetails.expiryDate".tr(),
                        value: widget.taskIvy!.expiryTimeStamp == null
                            ? "taskDetails.na".tr()
                            : widget.taskIvy!.expiryTimeStamp!
                                .formatDateYearWithFourNumber,
                      ),
                      TaskInfoRowWidget(
                        icon: AppAssets.icons.calendar.svg(
                            height: 16.h,
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.surface,
                                BlendMode.srcIn)),
                        title: "taskDetails.creationDate".tr(),
                        value: widget.taskIvy!.startTimeStamp
                            .formatDateYearWithFourNumber,
                      ),
                      TaskInfoRowWidget(
                        icon: AppAssets.icons.category2.svg(
                            height: 16.h,
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.surface,
                                BlendMode.srcIn)),
                        title: "taskDetails.category".tr(),
                        value: widget.taskIvy!.category.isNotEmptyOrNull
                            ? widget.taskIvy!.category
                            : "taskDetails.na".tr(),
                      ),
                      TaskInfoRowWidget(
                        icon: AppAssets.icons.priorityHighBlack.svg(
                            height: 16.h,
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.surface,
                                BlendMode.srcIn)),
                        title: "taskDetails.priority".tr(),
                        value: widget.taskIvy!.priority.priorityName,
                      ),
                      TaskInfoRowWidget(
                        icon: AppAssets.icons.users.svg(
                            height: 16.h,
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.surface,
                                BlendMode.srcIn)),
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
      ],
    );
  }
}
