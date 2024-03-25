import 'package:axon_ivy/core/util/widgets/bot_toast_helper.dart';
import 'package:axon_ivy/features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class BasePageScreen extends StatefulWidget {
  const BasePageScreen({super.key});
}

abstract class BasePageScreenState<Page extends BasePageScreen>
    extends State<Page> {
  Function()? loading;
  final TextEditingController _textFieldController = TextEditingController();
  String valueText = "";

  void showLoading() {
    loading ??= showAppLoading();
  }

  void hideLoading() {
    loading?.call();
    loading = null;
  }

  Future<void> displayTextInputDialog(
      BuildContext context, String fileName) async {
    final uploadFileBloc = context.read<UploadFileBloc>();
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "uploadFile.changeFileName".tr(),
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                color: Theme.of(context).colorScheme.surface,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500),
          ),
          content: TextField(
            onChanged: (value) {
              valueText = value;
            },
            controller: _textFieldController..text = fileName,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5)
                            .r,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20).r,
                      color: Theme.of(context).colorScheme.primaryContainer,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "dialog.cancel".tr(),
                        style: GoogleFonts.inter(
                          color: Theme.of(context).colorScheme.surface,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                20.horizontalSpace,
                GestureDetector(
                  onTap: () {
                    uploadFileBloc.add(UploadFileEvent.changeFileName(
                        valueText == "" ? fileName : valueText));
                    setState(() {
                      valueText = "";
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 35, vertical: 5)
                            .r,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        borderRadius: BorderRadius.circular(20).r,
                        color: Theme.of(context).colorScheme.primaryContainer),
                    child: Center(
                      child: Text(
                        "dialog.ok".tr(),
                        style: GoogleFonts.inter(
                            color: Theme.of(context).colorScheme.surface,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }

  void showMessageDialog(
      {required String message,
      Function()? onCancel,
      String? title,
      String? confirmTitle,
      Function()? onConfirm,
      bool barrierDismissible = true,
      bool needShowCancel = false}) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0.r))),
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Text(
            title ?? "",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                color: Theme.of(context).colorScheme.surface,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 17.sp),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                onConfirm?.call();
              },
              child: Center(
                child: Container(
                  height: 44.h,
                  padding: const EdgeInsets.symmetric(horizontal: 20).r,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8).r,
                      color: Theme.of(context).colorScheme.primaryContainer),
                  child: Center(
                    child: Text(
                      confirmTitle ?? "dialog.ok".tr(),
                      style: GoogleFonts.inter(
                          fontSize: 17.sp,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}