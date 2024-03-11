import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/shared/extensions/extensions.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/presentation/base_view/base_view.dart';
import 'package:axon_ivy/presentation/task_activity/bloc/delete_file/delete_file_bloc.dart';
import 'package:axon_ivy/presentation/task_activity/bloc/download_file/download_file_bloc.dart';
import 'package:axon_ivy/presentation/task_activity/bloc/task_detail/task_detail_bloc.dart';
import 'package:axon_ivy/presentation/task_activity/bloc/upload_file/upload_file_bloc.dart';
import 'package:axon_ivy/util/widgets/back_button_widget.dart';
import 'package:axon_ivy/util/widgets/data_empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentListView extends BasePageScreen {
  const DocumentListView({super.key, required this.task});
  final TaskIvy task;

  @override
  State<DocumentListView> createState() => _DocumentListViewState();
}

class _DocumentListViewState extends BasePageScreenState<DocumentListView> {
  late UploadFileBloc _uploadFileBloc;
  late DeleteFileBloc _deleteFileBloc;
  late TaskDetailBloc _taskDetailBloc;
  late DownloadFileBloc _downloadFileBloc;
  dynamic model;

  @override
  void initState() {
    super.initState();
    _uploadFileBloc = getIt<UploadFileBloc>();
    _taskDetailBloc = getIt<TaskDetailBloc>();
    _deleteFileBloc = getIt<DeleteFileBloc>();
    _downloadFileBloc = getIt<DownloadFileBloc>();
  }

  void doNothing(BuildContext context) {}
  @override
  Widget build(BuildContext context) {
    TaskIvy task = widget.task;
    int documentLength = widget.task.caseTask?.documents.length ?? 0;
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
                showUploadedDialog(
                    title: "Success process", message: state.fileNames);
                _taskDetailBloc.add(TaskDetailEvent.getTaskDetail(task.id));
              } else if (state is UploadErrorState) {
                hideLoading();
                showConfirmDialog(title: "Error", message: state.error);
              } else if (state is UploadChangeFileNameState) {
                await displayTextInputDialog(context, state.fileName);
              } else {
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
                showUploadedDialog(
                    title: "Delete successfully", message: state.message);
                _taskDetailBloc.add(TaskDetailEvent.getTaskDetail(task.id));
              } else {
                showLoading();
              }
            },
          ),
          BlocListener<TaskDetailBloc, TaskDetailState>(
            listener: (context, state) {
              if (state is TaskDetailErrorState) {
                hideLoading();
              } else if (state is TaskDetailSuccessState) {
                documentLength = state.task.caseTask?.documents.length ?? 0;
                hideLoading();
              } else {
                // showLoading();
              }
            },
          ),
          BlocListener<DownloadFileBloc, DownloadFileState>(
            listener: (context, state) {
              if (state is DownloadErrorState) {
                hideLoading();
                showUploadedDialog(title: "Error", message: state.error);
              } else if (state is DownloadSuccessState) {
                hideLoading();
                showUploadedDialog(
                    title: "Download successfully", message: state.message);
              } else {
                showLoading();
              }
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: AppColors.white,
            title: const Text("Attachments"),
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: BackButtonWidget(),
            ),
            leadingWidth: 100,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: PopupMenuButton<UploadFileType>(
                  elevation: 0.2,
                  color: AppColors.white,
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
                            AppAssets.icons.iconFile.svg(),
                            const SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                "Attach file",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    fontSize: 17,
                                    color: AppColors.eerieBlack,
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
                            AppAssets.icons.iconImage.svg(),
                            const SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                "Attach picture",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    fontSize: 17,
                                    color: AppColors.eerieBlack,
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
                            AppAssets.icons.iconCamera.svg(),
                            const SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                "Take picture",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    fontSize: 17,
                                    color: AppColors.eerieBlack,
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
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: AppAssets.icons.iconAddAttachment.svg(),
                  ),
                ),
              ),
            ],
          ),
          body: BlocBuilder<TaskDetailBloc, TaskDetailState>(
            builder: (context, state) {
              if (state is TaskDetailSuccessState) {
                task = state.task;
              }
              return documentLength != 0
                  ? SlidableAutoCloseBehavior(
                      child: ListView.separated(
                        itemCount: task.caseTask?.documents.length ?? 0,
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
                                              task.caseTask!.documents[index]
                                                  .id));
                                    },
                                    backgroundColor: const Color(0xFFFE4A49),
                                    foregroundColor: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppAssets.icons.iconDelete.svg(),
                                        const Text(
                                          "Delete",
                                          style: TextStyle(fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              child: AppListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 0),
                                onTap: () {
                                  _downloadFileBloc.add(
                                      DownloadFileEvent.downloadFile(
                                          task.caseTask!.documents[index].name,
                                          task.caseTask!.documents[index].url));
                                },
                                leading: task.caseTask!.documents[index].name
                                        .isContainImage
                                    ? AppAssets.icons.iconImage.svg()
                                    : AppAssets.icons.iconFile.svg(),
                                title:
                                    Text(task.caseTask!.documents[index].name),
                                trailing: AppAssets.icons.iconArrowRight.svg(),
                              ));
                        },
                        separatorBuilder: (context, index) => Divider(
                          height: 0,
                          endIndent: 20,
                          indent: 20,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                    )
                  : DataEmptyWidget(
                      icon: AppAssets.images.iconPaperclipEmpty
                          .image(width: 62, height: 65),
                      message:
                          "You don’t have any document attached yet. Click on “+” to add your first document.",
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
  });

  @override
  Widget build(BuildContext context) {
    // ListTile Background Color Appears outside of ListView bounds
    // Preffered URL: https://github.com/flutter/flutter/issues/94261
    return Card(
      color: AppColors.white,
      elevation: 0,
      child: ListTile(
        contentPadding: contentPadding,
        title: title,
        leading: leading,
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
