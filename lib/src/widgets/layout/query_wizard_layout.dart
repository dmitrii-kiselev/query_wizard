import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/widgets.dart';

class QueryWizardLayout extends HookWidget {
  final String title;

  QueryWizardLayout({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 8, initialIndex: 0);
    final localizations = QueryWizardLocalizations.of(context);
    final tabs = [
      _QueryWizardTab(
          message: localizations?.tablesAndFieldsTab ?? 'Tables and fields',
          icon: Icons.table_chart_rounded,
          widget: QueryTablesAndFieldsTab()),
      _QueryWizardTab(
          message: localizations?.joinsTab ?? 'Joins',
          icon: Icons.account_tree_rounded,
          widget: QueryJoinsTab()),
      _QueryWizardTab(
          message: localizations?.grouping ?? 'Grouping',
          icon: Icons.group_work_rounded,
          widget: QueryGroupingsTab(
            key: ValueKey('GroupingsTab'),
          )),
      _QueryWizardTab(
          message: localizations?.conditionsTab ?? 'Conditions',
          icon: Icons.filter_alt_rounded,
          widget: QueryConditionsTab(
            key: ValueKey('ConditionsTab'),
          )),
      _QueryWizardTab(
          message: localizations?.moreTab ?? 'More',
          icon: Icons.more_horiz_rounded,
          widget: QueryMoreTab(
            key: ValueKey('MoreTab'),
          )),
      _QueryWizardTab(
          message: localizations?.unionsAliasesTab ?? 'Unions/Aliases',
          icon: Icons.merge_type_rounded,
          widget: QueryUnionsAliasesTab()),
      _QueryWizardTab(
          message: localizations?.orderTab ?? 'Order',
          icon: Icons.sort_rounded,
          widget: QueryOrdersTab()),
      _QueryWizardTab(
          message: localizations?.queryBatchTab ?? 'Query batch',
          icon: Icons.batch_prediction,
          widget: QueryBatchesTab()),
    ];

    final bloc = BlocProvider.of<QueryWizardBloc>(context);

    bloc.add(QuerySchemaRequested('query'));

    return Scaffold(
      body: BlocBuilder<QueryWizardBloc, QueryWizardState>(
          builder: (context, state) {
        if (state is QueryWizardLoadInProgress) {
          return Center(child: CircularProgressIndicator());
        }

        if (state is QueryWizardLoadSuccess) {
          return Scaffold(
            appBar: AppBar(
              title: Text(title),
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
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.update_rounded,
                  ),
                  onPressed: () {
                    bloc.add(QuerySchemaRequested('query'));
                  },
                ),
              ],
            ),
            body: Center(
              child: Row(
                children: [
                  QueryNavigationRail(),
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
            drawer: QueryBatchDrawer(),
          );
        }

        if (state is QueryWizardLoadFailure) {
          return Center(
            child: Text(
              localizations?.somethingWentWrong ?? 'Something went wrong!',
              style: TextStyle(color: Colors.red),
            ),
          );
        }

        return Center(child: CircularProgressIndicator());
      }),
    );
  }
}

class _QueryWizardTab {
  String message;
  IconData icon;
  Widget widget;

  _QueryWizardTab(
      {required this.message, required this.icon, required this.widget});
}
