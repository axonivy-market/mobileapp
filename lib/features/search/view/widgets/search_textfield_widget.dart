import 'package:axon_ivy/features/search/bloc/search_bloc/search_bloc.dart';
import 'package:axon_ivy/features/search/bloc/search_filter_cubit/search_filter_cubit.dart';
import 'package:axon_ivy/features/tabbar/bloc/tabbar_cubit.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController _textController = TextEditingController();
  bool _showClearIcon = false;

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {
        _showClearIcon = _textController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _clearText() {
    _textController.clear();
    context.read<SearchBloc>().add(SearchEvent.searchItem(
        '', context.read<SearchFilterCubit>().state.type));
    setState(() {
      _showClearIcon = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (_, state) => BlocListener<TabBarCubit, TabBarState>(
        listener: (_, state) {
          if (state is NavigateTasksState) {
            _clearText();
          }
        },
        child: SizedBox(
          height: 44.h,
          child: TextField(
            controller: _textController,
            style: GoogleFonts.inter(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.w400,
                fontSize: 17.sp),
            cursorColor: Theme.of(context).colorScheme.primary,
            decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.onPrimaryContainer,
              hintText: "generalSearch".tr(),
              hintStyle: GoogleFonts.inter(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w400,
                fontSize: 17.sp,
              ),
              contentPadding: const EdgeInsets.only(right: 16.0).r,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: BorderRadius.circular(10).r,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10).r,
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              prefixIconConstraints: BoxConstraints(minWidth: 40.w),
              prefixIcon: AppAssets.icons.icSearchText.svg(
                width: 21.h,
                height: 21.h,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.secondary,
                  BlendMode.srcIn,
                ),
              ),
              suffixIcon: _showClearIcon
                  ? IconButton(
                      onPressed: _clearText,
                      icon: AppAssets.icons.icClose.svg(
                        width: 21.h,
                        height: 21.h,
                      ),
                    )
                  : null,
            ),
            onChanged: (value) {
              context.read<SearchBloc>().add(SearchEvent.searchItem(
                  value, context.read<SearchFilterCubit>().state.type));
            },
          ),
        ),
      ),
    );
  }
}
