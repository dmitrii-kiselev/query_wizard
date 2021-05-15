import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';

class QueryNavigationRail extends HookWidget {
  const QueryNavigationRail({Key? key, this.child}) : super(key: key);

  final Widget? child;

  List<NavigationRailDestination> _getQueries(List<Query> queries) {
    return <NavigationRailDestination>[
      for (int index = 0; index < queries.length; index++)
        NavigationRailDestination(
          icon: const Icon(
            Icons.query_builder_rounded,
          ),
          selectedIcon: const Icon(
            Icons.query_builder_rounded,
          ),
          label: Text(
            queries[index].name,
          ),
        ),
    ];
  }

  Widget build(BuildContext context) {
    final selectedQueryIndex = useState(0);
    final bloc = BlocProvider.of<QueryWizardBloc>(context);

    return BlocBuilder<QueriesBloc, QueriesState>(builder: (context, state) {
      if (state is QueriesChanged) {
        return Center(
          child: Row(
            children: [
              NavigationRail(
                selectedIndex: selectedQueryIndex.value,
                onDestinationSelected: (index) {
                  selectedQueryIndex.value = index;
                  bloc.changeQuery(state.queries[index]);
                },
                labelType: NavigationRailLabelType.selected,
                destinations: _getQueries(state.queries),
              ),
              const VerticalDivider(thickness: 1, width: 1),
              Expanded(
                child: Center(
                  child: child,
                ),
              ),
            ],
          ),
        );
      }

      return Center(child: CircularProgressIndicator());
    });
  }
}
