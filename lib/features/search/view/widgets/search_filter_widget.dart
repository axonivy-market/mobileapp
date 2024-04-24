import 'package:axon_ivy/core/util/widgets/widgets.dart';
import 'package:axon_ivy/data/models/entity/entity.dart';
import 'package:axon_ivy/data/models/enums/search_type.dart';
import 'package:axon_ivy/features/search/bloc/search_bloc/search_bloc.dart';
import 'package:axon_ivy/features/search/bloc/search_filter_cubit/search_filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFilterWidget extends StatelessWidget {
  const SearchFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchFilterCubit, SearchFilterState>(
      builder: (_, state) {
        return Row(
          children: [
            Expanded(
              child: FilterTextButton(
                onPressed: () {
                  context.read<SearchFilterCubit>().selectTab(SearchType.all);
                  context.read<SearchBloc>().add(
                        SearchEvent.searchItem(
                            context.read<SearchBloc>().query, SearchType.all),
                      );
                },
                filterButtonStyle: state.type == SearchType.all
                    ? TabSelected(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        name: "generalAll",
                        radius: BorderRadius.only(
                          topLeft: const Radius.circular(10.0).r,
                          bottomLeft: const Radius.circular(10.0).r,
                        ),
                        context: context,
                      )
                    : TabUnSelected(
                        name: "generalAll",
                        radius: BorderRadius.only(
                          topLeft: const Radius.circular(10.0).r,
                          bottomLeft: const Radius.circular(10.0).r,
                        ),
                        context: context,
                        border: Border(
                          left: BorderSide(
                              color: Theme.of(context).colorScheme.outline),
                          top: BorderSide(
                              color: Theme.of(context).colorScheme.outline),
                          bottom: BorderSide(
                              color: Theme.of(context).colorScheme.outline),
                        ),
                      ),
              ),
            ),
            Expanded(
              child: FilterTextButton(
                onPressed: () {
                  context.read<SearchFilterCubit>().selectTab(SearchType.tasks);
                  context.read<SearchBloc>().add(
                        SearchEvent.searchItem(
                            context.read<SearchBloc>().query, SearchType.tasks),
                      );
                },
                filterButtonStyle: state.type == SearchType.tasks
                    ? TabSelected(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        name: "generalTasks",
                        radius: BorderRadius.zero,
                        context: context,
                      )
                    : TabUnSelected(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        name: "generalTasks",
                        radius: BorderRadius.zero,
                        context: context,
                      ),
              ),
            ),
            Expanded(
              child: FilterTextButton(
                onPressed: () {
                  context
                      .read<SearchFilterCubit>()
                      .selectTab(SearchType.processes);
                  context.read<SearchBloc>().add(
                        SearchEvent.searchItem(context.read<SearchBloc>().query,
                            SearchType.processes),
                      );
                },
                filterButtonStyle: state.type == SearchType.processes
                    ? TabSelected(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        name: "generalProcesses",
                        radius: BorderRadius.only(
                          topRight: const Radius.circular(10.0).r,
                          bottomRight: const Radius.circular(10.0).r,
                        ),
                        context: context,
                      )
                    : TabUnSelected(
                        name: "generalProcesses",
                        radius: BorderRadius.only(
                          topRight: const Radius.circular(10.0).r,
                          bottomRight: const Radius.circular(10.0).r,
                        ),
                        context: context,
                        border: Border(
                          top: BorderSide(
                              color: Theme.of(context).colorScheme.outline),
                          right: BorderSide(
                              color: Theme.of(context).colorScheme.outline),
                          bottom: BorderSide(
                              color: Theme.of(context).colorScheme.outline),
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
