import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/widgets.dart';

class QueryWizardView extends StatefulWidget {
  final String title;

  const QueryWizardView({Key? key, required this.title}) : super(key: key);

  @override
  _QueryWizardView createState() => _QueryWizardView();
}

class _QueryWizardView extends State<QueryWizardView> with RestorationMixin {
  final RestorableInt _selectedQueryButchIndex = RestorableInt(0);
  final RestorableInt _selectedQueryIndex = RestorableInt(0);

  @override
  String get restorationId => 'query_wizard_view';

  @override
  void initState() {
    super.initState();
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(
        _selectedQueryButchIndex, 'selected_query_butch_index');
    registerForRestoration(_selectedQueryIndex, 'selected_query_index');
  }

  @override
  void dispose() {
    _selectedQueryButchIndex.dispose();
    _selectedQueryIndex.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<QueryWizardBloc>(context).add(QuerySchemaRequested(''));

    final tablesAndFieldsTabBloc =
        BlocProvider.of<QueryTablesAndFieldsTabBloc>(context);
    final joinsTabBloc = BlocProvider.of<QueryJoinsTabBloc>(context);
    final queryBatchesTabBloc = BlocProvider.of<QueryBatchTabBloc>(context);
    final localizations = QueryWizardLocalizations.of(context);

    return Scaffold(
      body: BlocBuilder<QueryWizardBloc, QueryWizardState>(
          builder: (context, state) {
        if (state is QueryWizardInitial) {
          return Center(child: Text(localizations?.queryWizard ?? ''));
        }

        if (state is QueryWizardLoadInProgress) {
          return Center(child: CircularProgressIndicator());
        }

        if (state is QueryWizardLoadSuccess) {
          final queryBatches = state.querySchema.queryBatches;
          final currentQueryButch = queryBatches.first;
          final currentQuery = currentQueryButch.queries.first;

          tablesAndFieldsTabBloc.add(QueryTablesAndFieldsTabInitialized(
              sources: currentQuery.sources,
              tables: currentQuery.tables,
              fields: currentQuery.fields));
          joinsTabBloc.add(QueryJoinsInitialized(joins: currentQuery.joins));
          queryBatchesTabBloc
              .add(QueryBatchesInitialized(queryBatches: queryBatches));

          return Row(
            children: [
              NavigationRail(
                selectedIndex: _selectedQueryButchIndex.value,
                onDestinationSelected: (index) {
                  setState(() {
                    _selectedQueryButchIndex.value = index;
                  });
                },
                labelType: NavigationRailLabelType.selected,
                destinations: [..._queryButches(queryBatches)],
              ),
              const VerticalDivider(thickness: 1, width: 1),
              Expanded(
                child: Center(
                  child: Row(
                    children: [
                      NavigationRail(
                        selectedIndex: _selectedQueryIndex.value,
                        onDestinationSelected: (index) {
                          setState(() {
                            _selectedQueryIndex.value = index;
                          });
                        },
                        labelType: NavigationRailLabelType.selected,
                        destinations: [..._queries(currentQueryButch.queries)],
                      ),
                      const VerticalDivider(thickness: 1, width: 1),
                      Expanded(
                        child: Center(
                          child: QueryWizardTabs(title: widget.title),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }

        if (state is QueryWizardLoadFailure) {
          return Center(
            child: Text(
              localizations?.somethingWentWrong ?? '',
              style: TextStyle(color: Colors.red),
            ),
          );
        }

        return build(context);
      }),
    );
  }
}

List<NavigationRailDestination> _queryButches(List<QueryBatch> queryButches) {
  return <NavigationRailDestination>[
    for (int index = 0; index < queryButches.length; index++)
      NavigationRailDestination(
        icon: const Icon(
          Icons.batch_prediction_rounded,
        ),
        selectedIcon: const Icon(
          Icons.batch_prediction_rounded,
        ),
        label: Text(
          queryButches[index].name,
        ),
      ),
  ];
}

List<NavigationRailDestination> _queries(List<Query> queries) {
  return <NavigationRailDestination>[
    for (int index = 0; index < queries.length; index++)
      NavigationRailDestination(
        icon: const Icon(
          Icons.batch_prediction_rounded,
        ),
        selectedIcon: const Icon(
          Icons.batch_prediction_rounded,
        ),
        label: Text(
          queries[index].name,
        ),
      ),
  ];
}
