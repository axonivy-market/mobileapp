import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/presentation/search/bloc/search_bloc.dart';
import 'package:axon_ivy/presentation/search/bloc/search_filter_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      builder: (_, state) => SizedBox(
        height: 40,
        child: TextField(
          controller: _textController,
          style: GoogleFonts.inter(
              color: AppColors.eerieBlack,
              fontWeight: FontWeight.w400,
              fontSize: 17),
          cursorColor: AppColors.tropicSea,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.bleachedSilk,
            hintText: "generalSearch".tr(),
            hintStyle: GoogleFonts.inter(
              color: AppColors.sonicSilver,
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
            contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.bleachedSilk),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.bleachedSilk),
            ),
            prefixIconConstraints: const BoxConstraints(minWidth: 40),
            prefixIcon: AppAssets.icons.icSearchText.svg(
              colorFilter: const ColorFilter.mode(
                AppColors.sonicSilver,
                BlendMode.srcIn,
              ),
            ),
            suffixIcon: _showClearIcon
                ? IconButton(
                    onPressed: _clearText,
                    icon: AppAssets.icons.icClose.svg(),
                  )
                : null,
          ),
          onChanged: (value) {
            context.read<SearchBloc>().add(SearchEvent.searchItem(
                value, context.read<SearchFilterCubit>().state.type));
          },
        ),
      ),
    );
  }
}
