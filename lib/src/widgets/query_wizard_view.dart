import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/widgets.dart';

class QueryWizardView extends HookWidget {
  final String title;

  QueryWizardView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedQueryIndex = useState(0);

    BlocProvider.of<QueryWizardBloc>(context).add(QuerySchemaRequested(''));

    final tablesAndFieldsTabBloc =
        BlocProvider.of<QueryTablesAndFieldsTabBloc>(context);
    final sourcesTabBloc = BlocProvider.of<QuerySourcesBloc>(context);
    final tablesTabBloc = BlocProvider.of<QueryTablesBloc>(context);
    final fieldsTabBloc = BlocProvider.of<QueryFieldsBloc>(context);
    final joinsTabBloc = BlocProvider.of<QueryJoinsTabBloc>(context);
    final queryBatchesTabBloc = BlocProvider.of<QueryBatchTabBloc>(context);
    final tabController = useTabController(initialLength: 8, initialIndex: 0);
    final localizations = QueryWizardLocalizations.of(context);
    final tabs = [
      _QueryWizardTab(
          message: localizations?.tablesAndFieldsTab ?? '',
          icon: Icons.table_chart_rounded,
          widget: QueryTablesAndFieldsTab()),
      _QueryWizardTab(
          message: localizations?.joinsTab ?? '',
          icon: Icons.account_tree_rounded,
          widget: QueryJoinsTab()),
      _QueryWizardTab(
          message: localizations?.groupTab ?? '',
          icon: Icons.group_work_rounded,
          widget: Text(localizations?.groupTab ?? '')),
      _QueryWizardTab(
          message: localizations?.conditionsTab ?? '',
          icon: Icons.filter_alt_rounded,
          widget: Text(localizations?.conditionsTab ?? '')),
      _QueryWizardTab(
          message: localizations?.moreTab ?? '',
          icon: Icons.more_horiz_rounded,
          widget: Text(localizations?.moreTab ?? '')),
      _QueryWizardTab(
          message: localizations?.unionsAliasesTab ?? '',
          icon: Icons.view_list_rounded,
          widget: Text(localizations?.unionsAliasesTab ?? '')),
      _QueryWizardTab(
          message: localizations?.orderTab ?? '',
          icon: Icons.sort_rounded,
          widget: Text(localizations?.orderTab ?? '')),
      _QueryWizardTab(
          message: localizations?.queryBatchTab ?? '',
          icon: Icons.batch_prediction,
          widget: QueryBatchTab()),
    ];

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
          final data = currentQuery.sources.map((s) => s.name).toList();

          tablesAndFieldsTabBloc.add(QueryTablesAndFieldsTabInitialized(
              sources: currentQuery.sources,
              tables: currentQuery.tables,
              fields: currentQuery.fields));

          sourcesTabBloc
              .add(QuerySourcesInitialized(sources: currentQuery.sources));
          tablesTabBloc.add(QueryTablesInitialized(tables: data));
          fieldsTabBloc.add(QueryFieldsInitialized(fields: data));
          joinsTabBloc.add(QueryJoinsInitialized(joins: currentQuery.joins));
          queryBatchesTabBloc
              .add(QueryBatchesInitialized(queryBatches: queryBatches));

          final drawerHeader = UserAccountsDrawerHeader(
            accountName: Text(
              'Query Batches',
            ),
            accountEmail: Text(
              '',
            ),
            currentAccountPicture: const CircleAvatar(
              child: FlutterLogo(size: 42.0),
            ),
          );
          final drawerItems = ListView(
            children: [
              drawerHeader,
              ..._queryBatches(queryBatches),
            ],
          );

          return Scaffold(
            appBar: AppBar(
              title: Text(
                title,
              ),
              bottom: TabBar(
                controller: tabController,
                isScrollable: false,
                tabs: [
                  for (final tab in tabs)
                    Tab(
                        key: ValueKey(tab.message),
                        child: Tooltip(
                          message: tab.message,
                          child: Icon(
                            tab.icon,
                            color: Colors.white,
                          ),
                        )),
                ],
              ),
            ),
            body: Center(
              child: Row(
                children: [
                  NavigationRail(
                    selectedIndex: _selectedQueryIndex.value,
                    onDestinationSelected: (index) {
                      _selectedQueryIndex.value = index;
                    },
                    labelType: NavigationRailLabelType.selected,
                    destinations: [..._queries(currentQueryButch.queries)],
                  ),
                  const VerticalDivider(thickness: 1, width: 1),
                  Expanded(
                    child: Center(
                      child: QueryWizardTabs(
                          tabController: tabController,
                          tabs: tabs.map((t) => t.widget).toList()),
                    ),
                  ),
                ],
              ),
            ),
            drawer: Drawer(
              child: drawerItems,
            ),
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

List<ListTile> _queryBatches(List<QueryBatch> queryBatches) {
  return <ListTile>[
    for (int index = 0; index < queryBatches.length; index++)
      ListTile(
        title: Text(
          queryBatches[index].name,
        ),
        leading: const Icon(Icons.batch_prediction_rounded),
        onTap: () {},
      )
  ];
}

List<NavigationRailDestination> _queries(List<Query> queries) {
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

class _QueryWizardTab {
  String message;
  IconData icon;
  Widget widget;

  _QueryWizardTab(
      {required this.message, required this.icon, required this.widget});
}
