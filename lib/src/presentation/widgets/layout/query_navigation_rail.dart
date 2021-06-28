import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:query_wizard/application.dart';
import 'package:query_wizard/domain.dart';

class QueryNavigationRail extends HookWidget {
  const QueryNavigationRail({Key? key}) : super(key: key);

  List<NavigationRailDestination> _getQueries(List<Query> queries) {
    return <NavigationRailDestination>[
      for (var query in queries)
        NavigationRailDestination(
          icon: const Icon(Icons.query_builder_rounded),
          selectedIcon: const Icon(Icons.query_builder_rounded),
          label: Text(query.name),
        ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final selectedQueryIndex = useState(0);
    final bloc = BlocProvider.of<QueryWizardBloc>(context);

    return BlocBuilder<QueriesBloc, QueriesState>(
      builder: (context, state) {
        if (state is QueriesChanged) {
          return NavigationRail(
            selectedIndex: selectedQueryIndex.value,
            onDestinationSelected: (index) {
              final query = state.queries[index];

              selectedQueryIndex.value = index;
              bloc.changeQuery(query);
            },
            labelType: NavigationRailLabelType.selected,
            destinations: _getQueries(state.queries),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
