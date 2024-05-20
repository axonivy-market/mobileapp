import 'package:axon_ivy/core/abstracts/base_page.dart';
import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/presentation/bloc/delete_file_bloc/delete_file_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/download_file_bloc/download_file_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/preview_file_bloc/preview_file_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/task_detail_bloc/task_detail_bloc.dart';
import 'package:axon_ivy/features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/extensions/extensions.dart';
import 'package:axon_ivy/shared/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_file_plus/open_file_plus.dart';

class DocumentListPage extends BasePage {
  const DocumentListPage({super.key, required this.task});

  final TaskIvy task;

  @override
  State<DocumentListPage> createState() => _DocumentListPageState();
}

class _DocumentListPageState extends BasePageState<DocumentListPage>
    with WidgetsBindingObserver {
  late UploadFileBloc _uploadFileBloc;
  late DeleteFileBloc _deleteFileBloc;
  late TaskDetailBloc _taskDetailBloc;
  late DownloadFileBloc _downloadFileBloc;
  late PreviewFileBloc _previewFileBloc;

  bool shouldFetchTaskList = false;
  dynamic model;
  late List<Document> documents = [];
  OpenResult? openResult;

  @override
  void initState() {
    super.initState();
    _uploadFileBloc = getIt<UploadFileBloc>();
    _taskDetailBloc = getIt<TaskDetailBloc>();
    _deleteFileBloc = getIt<DeleteFileBloc>();
    _downloadFileBloc = getIt<DownloadFileBloc>();
    _previewFileBloc = getIt<PreviewFileBloc>();
    WidgetsBinding.instance.addObserver(this);
    documents = widget.task.caseTask?.availableDocuments ?? [];
    _previewFileBloc.caseId = widget.task.caseTask?.id;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed &&
        openResult?.type == ResultType.done) {
      openResult = null;
      _previewFileBloc.add(const PreviewFileEvent.deletePreviewFile());
    }
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

  @override
  Widget build(BuildContext context) {
    TaskIvy task = widget.task;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _uploadFileBloc),
        BlocProvider(create: (context) => _deleteFileBloc),
        BlocProvider(create: (context) => _taskDetailBloc),
        BlocProvider(create: (context) => _downloadFileBloc),
        BlocProvider(create: (context) => _previewFileBloc),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<UploadFileBloc, UploadFileState>(
            listener: (context, state) async {
              if (state is UploadSuccessState) {
                hideLoading();
                _taskDetailBloc.add(TaskDetailEvent.getTaskDetail(task));
                showMessageDialog(
                    title: "uploadFile.successTitle".tr(),
                    message: state.message);
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
                    title: "downloadFile.deleteSuccessTitle".tr(),
                    message: state.message);
                _taskDetailBloc.add(TaskDetailEvent.getTaskDetail(task));
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
              if (state is DownloadLoadingState) {
                showLoading();
              } else {
                hideLoading();
                if (state is DownloadErrorState) {
                  showMessageDialog(
                      title: "documentList.errorTitle".tr(),
                      message: state.error);
                } else if (state is DownloadSuccessState) {
                  showMessageDialog(
                      title: "downloadFile.downloadSuccessTitle".tr(),
                      message: state.message);
                }
              }
            },
          ),
          BlocListener<PreviewFileBloc, PreviewFileState>(
            listener: (context, state) async {
              if (state is PreviewErrorState) {
                hideLoading();
                showMessageDialog(
                    title: "documentList.errorTitle".tr(),
                    message: state.error);
              } else if (state is PreviewSuccessState) {
                hideLoading();
                openResult = await OpenFile.open(state.filePath);
                if (openResult != null && openResult?.type != ResultType.done) {
                  showMessageDialog(
                      title: "documentList.errorTitle".tr(),
                      message: "previewFile.failToPreview"
                          .tr(namedArgs: {'fileName': state.fileName}));
                }
              } else if (state is PreviewLoadingState) {
                showLoading();
              }
            },
          ),
        ],
        child: PopScope(
          canPop: false,
          onPopInvoked: (didPop) async {
            if (didPop && loading != null) {
              return;
            }
            Navigator.of(context).pop(shouldFetchTaskList);
          },
          child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: AppBar(
              scrolledUnderElevation: 0,
              backgroundColor: Theme.of(context).colorScheme.background,
              centerTitle: true,
              title: Text(
                "documentList.title".tr(),
                style: GoogleFonts.inter(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500),
              ),
              leading: BackButtonWidget(
                shouldFetch: shouldFetchTaskList,
              ),
              leadingWidth: 100.w,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 5).r,
                  child: PopupMenuButton<UploadFileType>(
                    elevation: 10,
                    shadowColor: Colors.black.withOpacity(0.3),
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    position: PopupMenuPosition.under,
                    surfaceTintColor:
                        Theme.of(context).colorScheme.onPrimaryContainer,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(10.0).r)),
                    onSelected: (value) {
                      switch (value) {
                        case UploadFileType.recent:
                          _uploadFileBloc.add(UploadFileEvent.uploadFiles(
                              widget.task, UploadFileType.recent));
                        case UploadFileType.images:
                          _uploadFileBloc.add(UploadFileEvent.uploadFiles(
                              widget.task, UploadFileType.images));
                        case UploadFileType.camera:
                          _uploadFileBloc.add(UploadFileEvent.uploadFiles(
                              widget.task, UploadFileType.camera));
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
                                height: 21.h,
                                colorFilter: ColorFilter.mode(
                                  Theme.of(context).colorScheme.surface,
                                  BlendMode.srcIn,
                                ),
                              ),
                              5.horizontalSpace,
                              Expanded(
                                child: Text(
                                  "documentList.attachFile".tr(),
                                  style: GoogleFonts.inter(
                                    fontSize: 17.sp,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontWeight: FontWeight.w400,
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
                                height: 21.h,
                                colorFilter: ColorFilter.mode(
                                    Theme.of(context).colorScheme.surface,
                                    BlendMode.srcIn),
                              ),
                              5.horizontalSpace,
                              Expanded(
                                child: Text(
                                  "documentList.attachPicture".tr(),
                                  style: GoogleFonts.inter(
                                    fontSize: 17.sp,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontWeight: FontWeight.w400,
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
                                height: 21.h,
                                colorFilter: ColorFilter.mode(
                                    Theme.of(context).colorScheme.surface,
                                    BlendMode.srcIn),
                              ),
                              5.horizontalSpace,
                              Expanded(
                                child: Text(
                                  "documentList.takePicture".tr(),
                                  style: GoogleFonts.inter(
                                    fontSize: 17.sp,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    fontWeight: FontWeight.w400,
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
                        Theme.of(context).colorScheme.surface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: BlocBuilder<TaskDetailBloc, TaskDetailState>(
              builder: (context, state) {
                if (state is TaskDetailSuccessState) {
                  task = state.task;
                  documents = task.caseTask?.availableDocuments ?? [];
                }
                return documents.isNotEmpty
                    ? SlidableAutoCloseBehavior(
                        child: ListView.separated(
                          itemCount: documents.length,
                          itemBuilder: (context, index) {
                            return Slidable(
                              startActionPane: ActionPane(
                                  extentRatio: 0.2,
                                  motion: const ScrollMotion(),
                                  children: [
                                    CustomSlidableAction(
                                      autoClose: true,
                                      padding: EdgeInsets.zero,
                                      onPressed: (context) async {
                                        _downloadFileBloc.add(
                                          DownloadFileEvent.downloadFile(
                                              documents[index].name,
                                              documents[index].url),
                                        );
                                      },
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      foregroundColor: Colors.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AppAssets.icons.iconDownload.svg(
                                            colorFilter: ColorFilter.mode(
                                              Theme.of(context)
                                                  .colorScheme
                                                  .background,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                          Text(
                                            'documentList.download'.tr(),
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                fontSize: 13.sp,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                              endActionPane: ActionPane(
                                extentRatio: 0.2,
                                motion: const ScrollMotion(),
                                children: [
                                  CustomSlidableAction(
                                    autoClose: true,
                                    padding: EdgeInsets.zero,
                                    onPressed: (context) {
                                      showConfirmDialog(
                                        title:
                                            "Do you really want to delete this file?",
                                        onConfirm: () => _deleteFileBloc.add(
                                          DeleteFileEvent.deleteFile(
                                              task.caseTask!.id,
                                              documents[index],
                                              task.id,
                                              task.offline),
                                        ),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFEE4A52),
                                    foregroundColor: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppAssets.icons.iconDelete.svg(),
                                        Text(
                                          "documentList.delete".tr(),
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              child: AppListTile(
                                textColor:
                                    Theme.of(context).colorScheme.surface,
                                contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 0)
                                    .r,
                                onTap: () {
                                  _previewFileBloc.add(
                                    PreviewFileEvent.previewFile(
                                        task.offline, documents[index]),
                                  );
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
                                            Theme.of(context)
                                                .colorScheme
                                                .surface,
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
                            color: Theme.of(context).dividerTheme.color,
                          ),
                        ),
                      )
                    : DataEmptyWidget(
                        icon: AppAssets.images.iconPaperclipEmpty.image(
                          width: 62.w,
                          height: 65.h,
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                        ),
                        message: "documentList.emptyList".tr(),
                      );
              },
            ),
          ),
        ),
      ),
    );
  }
}
