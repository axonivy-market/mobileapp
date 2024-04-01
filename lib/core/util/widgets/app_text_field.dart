import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../generated/colors.gen.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
      {super.key,
      this.title,
      this.hintText,
      this.autofocus,
      this.obscureText,
      this.keyboardType,
      this.controller,
      this.validator,
      this.inputFormatters,
      this.suffix,
      this.prefix,
      this.isRequired,
      this.focusNode,
      this.readOnly,
      this.onTap,
      this.fillColor = AppColors.white,
      this.onChanged,
      this.borderColor = Colors.transparent,
      this.textInputAction,
      this.onEditingComplete,
      this.autovalidateMode});

  final bool? isRequired;
  final bool? readOnly;
  final String? title;
  final String? hintText;
  final bool? autofocus;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;
  final Widget? prefix;
  final void Function()? onTap;
  final FocusNode? focusNode;
  final Color? fillColor;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;
  final Color borderColor;
  final void Function()? onEditingComplete;
  final AutovalidateMode? autovalidateMode;

  @override
  State<StatefulWidget> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isFocus = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (value) {
        isFocus = value;
        setState(() {});
      },
      child: TextFormField(
        autovalidateMode: widget.autovalidateMode,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: widget.textInputAction,
        focusNode: widget.focusNode,
        obscureText: widget.obscureText ?? false,
        readOnly: widget.readOnly ?? false,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        autofocus: widget.autofocus ?? false,
        style: GoogleFonts.inter(
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.surface),
        validator: widget.validator,
        inputFormatters: widget.inputFormatters,
        onTap: widget.onTap,
        onChanged: (value) {
          setState(() {});
          widget.onChanged?.call(value);
        },
        onEditingComplete: widget.onEditingComplete ??
            () {
              isFocus = false;
              FocusScope.of(context).unfocus();
              setState(() {});
            },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 16.0).r,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.outline, width: 2.0.w),
              borderRadius: BorderRadius.all(
                const Radius.circular(10).r,
              ),
            ),
            fillColor: Theme.of(context).colorScheme.onPrimaryContainer,
            hintText: widget.hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.secondary),
            suffixIcon: widget.prefix != null
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(14, 14, 7, 14).r,
                    child: widget.suffix,
                  )
                : _clearButton(),
            prefixIcon: widget.prefix != null
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(14, 14, 7, 14).r,
                    child: widget.prefix,
                  )
                : null,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.red, width: 1.2),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.outline),
              borderRadius: BorderRadius.all(const Radius.circular(10).r),
            )),
      ),
    );
  }

  Widget? _clearButton() {
    bool visible = false;
    if (isFocus) {
      visible = widget.controller?.text.isNotEmpty ?? false;
    }
    return visible
        ? IconButton(
            onPressed: () {
              widget.controller?.clear();
              widget.onChanged?.call('');
              setState(() {});
            },
            icon: Transform.rotate(
              angle: -math.pi / 4,
              child: Icon(
                Icons.add_circle_outlined,
                size: 22.h,
              ),
            ),
          )
        : null;
  }
}
