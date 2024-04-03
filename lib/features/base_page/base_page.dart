import 'package:axon_ivy/core/util/widgets/bot_toast_helper.dart';
import 'package:axon_ivy/features/task/presentation/bloc/upload_file_bloc/upload_file_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class BasePage extends StatefulWidget {
  const BasePage({super.key});
}

abstract class BasePageState<Page extends BasePage> extends State<Page> {
  Function()? loading;
  final TextEditingController _textFieldController = TextEditingController();
  String valueText = "";

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  showLoading() {
    loading ??= showAppLoading();
  }

  hideLoading() {
    loading?.call();
    loading = null;
  }

  Future displayTextInputDialog({
    required BuildContext context,
    required String fileName,
    bool barrierDismissible = false,
  }) async {
    final uploadFileBloc = context.read<UploadFileBloc>();
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0.r))),
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Text(
            "uploadFile.changeFileName".tr(),
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Theme.of(context).colorScheme.surface,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                    RegExp(r"[a-zA-ZäöüÄÖÜß\d\s]")),
              ],
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
              onChanged: (value) {
                valueText = value;
              },
              controller: _textFieldController..text = fileName,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
                filled: true,
                fillColor: Theme.of(context).colorScheme.onPrimaryContainer,
                hintStyle: GoogleFonts.inter(
                  fontSize: 17.sp,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                hintText: 'My Image Name',
              ),
            ),
          ),
          actions: [
            SizedBox(
              height: 44.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0.0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        foregroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.primary,
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.primaryContainer,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "dialog.cancel".tr(),
                        style: GoogleFonts.inter(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  20.horizontalSpace,
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0.0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        foregroundColor: MaterialStatePropertyAll(
                            Theme.of(context).colorScheme.background),
                        backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      onPressed: () {
                        uploadFileBloc.add(UploadFileEvent.changeFileName(
                            valueText == "" ? fileName : valueText));
                        setState(() {
                          valueText = "";
                        });
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Save',
                        style: GoogleFonts.inter(
                          color: Theme.of(context).colorScheme.background,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  showConfirmDialog({
    Function()? onCancel,
    required String? title,
    String? confirmTitle,
    Function()? onConfirm,
    bool barrierDismissible = false,
    bool needShowCancel = false,
  }) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0.r))),
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Text(
            title ?? "",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Theme.of(context).colorScheme.surface,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            SizedBox(
              height: 44.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0.0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        foregroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.primary,
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.primaryContainer,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "dialog.cancel".tr(),
                        style: GoogleFonts.inter(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  20.horizontalSpace,
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0.0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        foregroundColor: MaterialStatePropertyAll(
                            Theme.of(context).colorScheme.background),
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xFFEE4A52)),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        onConfirm?.call();
                      },
                      child: Text(
                        'Delete',
                        style: GoogleFonts.inter(
                          color: Theme.of(context).colorScheme.background,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  showMessageDialog({
    required String message,
    Function()? onCancel,
    String? title,
    String? confirmTitle,
    Function()? onConfirm,
    bool barrierDismissible = true,
    bool needShowCancel = false,
  }) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0.r))),
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Text(
            title ?? "",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Theme.of(context).colorScheme.surface,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
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
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  child: Center(
                    child: Text(
                      confirmTitle ?? "dialog.ok".tr(),
                      style: GoogleFonts.inter(
                        fontSize: 17.sp,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
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
