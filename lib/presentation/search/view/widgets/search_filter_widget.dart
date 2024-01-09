import 'package:axon_ivy/core/generated/colors.gen.dart';
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
                        name: "generalAll",
                        radius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                      )
                    : TabUnSelected(
                        name: "generalAll",
                        radius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        border: state.type == SearchType.processes
                            ? const Border(
                                right: BorderSide(
                                    color: AppColors.kinglyCloud, width: 0.5),
                              )
                            : null),
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
                        name: "generalTasks",
                        radius: BorderRadius.zero,
                      )
                    : TabUnSelected(
                        name: "generalTasks",
                        radius: BorderRadius.zero,
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
                        name: "generalProcesses",
                        radius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      )
                    : TabUnSelected(
                        name: "generalProcesses",
                        radius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        border: state.type == SearchType.all
                            ? const Border(
                                left: BorderSide(
                                    color: AppColors.kinglyCloud, width: 0.5),
                              )
                            : null),
              ),
            ),
          ],
        );
      },
    );
  }
}
