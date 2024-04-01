import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/extensions/extensions.dart';
import 'package:axon_ivy/core/util/widgets/back_button_widget.dart';
import 'package:axon_ivy/core/util/widgets/data_empty_widget.dart';
import 'package:axon_ivy/features/base_page/base_page.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/presentation/bloc/delete_file_bloc/delete_file_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/download_file_bloc/download_file_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentListPage extends BasePage {
  const DocumentListPage({super.key, required this.task});
  final TaskIvy task;

  @override
  State<DocumentListPage> createState() => _DocumentListPageState();
}

class _DocumentListPageState extends BasePageState<DocumentListPage> {
  late UploadFileBloc _uploadFileBloc;
  late DeleteFileBloc _deleteFileBloc;
  late TaskDetailBloc _taskDetailBloc;
  late DownloadFileBloc _downloadFileBloc;
  bool shouldFetchTaskList = false;
  dynamic model;
  late List<Document> documents = [];

  @override
  void initState() {
    super.initState();
    _uploadFileBloc = getIt<UploadFileBloc>();
    _taskDetailBloc = getIt<TaskDetailBloc>();
    _deleteFileBloc = getIt<DeleteFileBloc>();
    _downloadFileBloc = getIt<DownloadFileBloc>();
  }

  bool isUploadDuplicateFile(UploadSuccessState state, TaskIvy task) {
    if ((task.caseTask?.documents.length ?? 0) > 0) {
      for (var document in task.caseTask!.documents) {
        if (document.name == state.fileNames) {
          return true;
        }
      }
    }
    return false;
  }

  void doNothing(BuildContext context) {}
  @override
  Widget build(BuildContext context) {
    TaskIvy task = widget.task;
    documents = widget.task.caseTask?.documents.reversed.toList() ?? [];
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _uploadFileBloc),
        BlocProvider(create: (context) => _deleteFileBloc),
        BlocProvider(create: (context) => _taskDetailBloc),
        BlocProvider(create: (context) => _downloadFileBloc),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<UploadFileBloc, UploadFileState>(
            listener: (context, state) async {
              if (state is UploadSuccessState) {
                hideLoading();
                if (isUploadDuplicateFile(state, task)) {
                  showMessageDialog(
                      title: "documentList.errorTitle".tr(),
                      message: "documentList.errorMessage"
                          .tr(namedArgs: {'fileName': state.fileNames}));
                } else {
                  _taskDetailBloc.add(TaskDetailEvent.getTaskDetail(task.id));
                  showMessageDialog(
                      title: "documentList.successTitle".tr(),
                      message: state.message);
                }
              } else if (state is UploadErrorState) {
                hideLoading();
                showMessageDialog(
                    title: "documentList.errorTitle".tr(),
                    message: state.error);
              } else if (state is UploadChangeFileNameState) {
                await displayTextInputDialog(
                    context: context, fileName: state.fileName);
              } else if (state is UploadLoadingState) {
                showLoading();
              }
            },
          ),
          BlocListener<DeleteFileBloc, DeleteFileState>(
            listener: (context, state) {
              if (state is DeleteErrorState) {
                hideLoading();
              } else if (state is DeleteSuccessState) {
                hideLoading();
                showMessageDialog(
                    title: "documentList.deleteSuccessTitle".tr(),
                    message: state.message);
                _taskDetailBloc.add(TaskDetailEvent.getTaskDetail(task.id));
              } else if (state is DeleteLoadingState) {
                showLoading();
              }
            },
          ),
          BlocListener<TaskDetailBloc, TaskDetailState>(
            listener: (context, state) {
              if (state is TaskDetailSuccessState) {
                setState(() {
                  shouldFetchTaskList = true;
                });
              }
            },
          ),
          BlocListener<DownloadFileBloc, DownloadFileState>(
            listener: (context, state) {
              if (state is DownloadErrorState) {
                hideLoading();
                showMessageDialog(
                    title: "documentList.errorTitle".tr(),
                    message: state.error);
              } else if (state is DownloadSuccessState) {
                hideLoading();
                showMessageDialog(
                    title: "documentList.downloadSuccessTitle".tr(),
                    message: state.message);
              } else if (state is DownloadLoadingState) {
                showLoading();
              }
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: Theme.of(context).colorScheme.background,
            title: Text(
              "documentList.title".tr(),
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
            ),
            leading: BackButtonWidget(
              shouldFetch: shouldFetchTaskList,
            ),
            leadingWidth: 100.w,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 5).r,
                child: PopupMenuButton<UploadFileType>(
                  elevation: 0.2,
                  color: Theme.of(context).colorScheme.background,
                  position: PopupMenuPosition.under,
                  onSelected: (value) {
                    switch (value) {
                      case UploadFileType.recent:
                        _uploadFileBloc.add(UploadFileEvent.uploadFiles(
                            widget.task.caseTask!.id, UploadFileType.recent));
                      case UploadFileType.images:
                        _uploadFileBloc.add(UploadFileEvent.uploadFiles(
                            widget.task.caseTask!.id, UploadFileType.images));
                      case UploadFileType.camera:
                        _uploadFileBloc.add(UploadFileEvent.uploadFiles(
                            widget.task.caseTask!.id, UploadFileType.camera));
                    }
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        value: UploadFileType.recent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppAssets.icons.iconFile.svg(
                              colorFilter: ColorFilter.mode(
                                  Theme.of(context).colorScheme.surface,
                                  BlendMode.srcIn),
                            ),
                            5.horizontalSpace,
                            Expanded(
                              child: Text(
                                "documentList.attachFile".tr(),
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 17.sp,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: UploadFileType.images,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppAssets.icons.iconImage.svg(
                              colorFilter: ColorFilter.mode(
                                  Theme.of(context).colorScheme.surface,
                                  BlendMode.srcIn),
                            ),
                            5.horizontalSpace,
                            Expanded(
                              child: Text(
                                "documentList.attachPicture".tr(),
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 17.sp,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: UploadFileType.camera,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppAssets.icons.iconCamera.svg(
                              colorFilter: ColorFilter.mode(
                                  Theme.of(context).colorScheme.surface,
                                  BlendMode.srcIn),
                            ),
                            5.horizontalSpace,
                            Expanded(
                              child: Text(
                                "documentList.takePicture".tr(),
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 17.sp,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ];
                  },
                  icon: AppAssets.icons.iconAddAttachment.svg(
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.surface, BlendMode.srcIn),
                  ),
                ),
              ),
            ],
          ),
          body: BlocBuilder<TaskDetailBloc, TaskDetailState>(
            builder: (context, state) {
              if (state is TaskDetailSuccessState) {
                task = state.task;
                documents = task.caseTask?.documents.reversed.toList() ?? [];
              }
              return documents.isNotEmpty
                  ? SlidableAutoCloseBehavior(
                      child: ListView.separated(
                        itemCount: documents.length,
                        itemBuilder: (context, index) {
                          return Slidable(
                            key: ValueKey(index),
                            endActionPane: ActionPane(
                              extentRatio: 0.175,
                              key: ValueKey(index),
                              motion: const ScrollMotion(),
                              children: [
                                CustomSlidableAction(
                                  autoClose: true,
                                  padding: EdgeInsets.zero,
                                  onPressed: (context) {
                                    _deleteFileBloc.add(
                                        DeleteFileEvent.deleteFile(
                                            task.caseTask!.id,
                                            documents[index].id));
                                  },
                                  backgroundColor: const Color(0xFFEE4A52),
                                  foregroundColor: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AppAssets.icons.iconDelete.svg(),
                                      Text(
                                        "documentList.delete".tr(),
                                        style: TextStyle(fontSize: 13.sp),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            child: AppListTile(
                              textColor: Theme.of(context).colorScheme.surface,
                              contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 0)
                                  .r,
                              onTap: () {
                                _downloadFileBloc.add(
                                    DownloadFileEvent.downloadFile(
                                        documents[index].name,
                                        documents[index].url));
                              },
                              leading: documents[index].name.isContainImage
                                  ? AppAssets.icons.iconImage.svg(
                                      colorFilter: ColorFilter.mode(
                                          Theme.of(context)
                                              .colorScheme
                                              .onBackground,
                                          BlendMode.srcIn),
                                    )
                                  : AppAssets.icons.iconFile.svg(
                                      colorFilter: ColorFilter.mode(
                                          Theme.of(context).colorScheme.surface,
                                          BlendMode.srcIn),
                                    ),
                              title: Text(
                                documents[index].name,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: AppAssets.icons.chevronRight.svg(
                                colorFilter: ColorFilter.mode(
                                    Theme.of(context).colorScheme.surface,
                                    BlendMode.srcIn),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(
                          height: 0,
                          endIndent: 20.w,
                          indent: 20.w,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                    )
                  : DataEmptyWidget(
                      icon: AppAssets.images.iconPaperclipEmpty
                          .image(width: 62.w, height: 65.h),
                      message: "documentList.emptyList".tr(),
                    );
            },
          ),
        ),
      ),
    );
  }
}

class AppListTile extends ListTile {
  const AppListTile({
    super.key,
    super.contentPadding,
    super.onTap,
    super.leading,
    super.trailing,
    super.title,
    super.textColor,
  });

  @override
  Widget build(BuildContext context) {
    // ListTile Background Color Appears outside of ListView bounds
    // Preffered URL: https://github.com/flutter/flutter/issues/94261
    return Card(
      color: Theme.of(context).colorScheme.background,
      elevation: 0,
      child: ListTile(
        textColor: textColor,
        contentPadding: contentPadding,
        title: title,
        leading: leading,
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
