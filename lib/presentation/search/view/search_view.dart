import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/core/generated/assets.gen.dart';
import 'package:axon_ivy/data/models/search/search.dart';
import 'package:axon_ivy/presentation/search/bloc/search_bloc.dart';
import 'package:axon_ivy/presentation/search/bloc/search_filter_cubit.dart';
import 'package:axon_ivy/presentation/search/view/widgets/widgets.dart';
import 'package:axon_ivy/presentation/task/view/widgets/task_item_widget.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/generated/colors.gen.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late SearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _searchBloc = getIt<SearchBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              _searchBloc..add(const SearchEvent.getTaskProcess()),
        ),
        BlocProvider<SearchFilterCubit>(
          create: (context) => getIt<SearchFilterCubit>(),
        ),
      ],
      child: Scaffold(
        appBar: const HomeAppBar(
          scrolledUnderElevation: 0,
        ),
        body: Column(
          children: [
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchTextField(),
            ),
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (_, state) {
                  if (state is SearchResultState) {
                    return Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 16, right: 16, top: 20),
                          child: SearchFilterWidget(),
                        ),
                        Expanded(
                            child: state.items.isEmpty
                                ? DataEmptyWidget(
                                    message: 'search.noMatchingResults'.tr(),
                                    icon:
                                        AppAssets.icons.icSearchNotFound.svg(),
                                  )
                                : searchItemList(state)),
                      ],
                    );
                  } else {
                    return DataEmptyWidget(
                      message: 'search.nothingThereYet'.tr(),
                      icon: AppAssets.icons.icSearchInitial.svg(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchItemList(SearchResultState state) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          toolbarHeight: 20,
          pinned: true,
          scrolledUnderElevation: 1,
          shadowColor: AppColors.mercury,
          surfaceTintColor: Colors.white,
          elevation: 0,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final item = state.items[index];
              if (item is SectionHeader) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  child: Text(
                    item.title.tr(),
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.eerieBlack,
                    ),
                  ),
                );
              } else if (item is TaskItem) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TaskItemWidget(
                    name: item.task.name,
                    description: item.task.description,
                    priority: item.task.priority,
                    expiryTimeStamp: item.task.expiryTimeStamp,
                    query: state.query.trim(),
                  ),
                );
              }
              return null;
            },
            childCount: state.items.length,
          ),
        ),
      ],
    );
  }
}
