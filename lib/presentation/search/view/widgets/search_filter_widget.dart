import 'package:axon_ivy/data/models/entity/entity.dart';
import 'package:axon_ivy/data/models/enums/search_type.dart';
import 'package:axon_ivy/presentation/search/bloc/search_bloc.dart';
import 'package:axon_ivy/presentation/search/bloc/search_filter_cubit.dart';
import 'package:axon_ivy/util/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                        radius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        context: context,
                      )
                    : TabUnSelected(
                        name: "generalAll",
                        radius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        context: context,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.outline)),
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
                        radius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        context: context,
                      )
                    : TabUnSelected(
                        name: "generalProcesses",
                        radius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        context: context,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.outline)),
              ),
            ),
          ],
        );
      },
    );
  }
}
