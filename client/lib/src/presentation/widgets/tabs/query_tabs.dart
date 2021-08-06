import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/presentation.dart';

class QueryWizardTabs extends HookWidget {
  const QueryWizardTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 8);
    final localizations = QueryWizardLocalizations.of(context)!;
    final tabs = [
      _QueryWizardTab(
        message: localizations.tablesAndFieldsTab,
        icon: Icons.table_chart_rounded,
        widget: const QueryTablesAndFieldsTab(key: ValueKey('GroupingsTab')),
      ),
      _QueryWizardTab(
        message: localizations.joinsTab,
        icon: Icons.account_tree_rounded,
        widget: const QueryJoinsTab(key: ValueKey('GroupingsTab')),
      ),
      _QueryWizardTab(
        message: localizations.grouping,
        icon: Icons.group_work_rounded,
        widget: const QueryGroupingsTab(key: ValueKey('GroupingsTab')),
      ),
      _QueryWizardTab(
        message: localizations.conditionsTab,
        icon: Icons.filter_alt_rounded,
        widget: const QueryConditionsTab(key: ValueKey('ConditionsTab')),
      ),
      _QueryWizardTab(
        message: localizations.moreTab,
        icon: Icons.more_horiz_rounded,
        widget: QuerySettingsTab(key: const ValueKey('MoreTab')),
      ),
      _QueryWizardTab(
        message: localizations.unionsAliasesTab,
        icon: Icons.merge_type_rounded,
        widget: const QueryUnionsAliasesTab(key: ValueKey('GroupingsTab')),
      ),
      _QueryWizardTab(
        message: localizations.orderTab,
        icon: Icons.sort_rounded,
        widget: const QueryOrdersTab(key: ValueKey('GroupingsTab')),
      ),
      _QueryWizardTab(
        message: localizations.queryBatchTab,
        icon: Icons.batch_prediction,
        widget: const QueryBatchesTab(key: ValueKey('GroupingsTab')),
      ),
    ];

    BlocProvider.of<QuerySourcesBloc>(context).add(
      const QuerySourcesRequested(),
    );

    return Scaffold(
      appBar: TabBar(
        controller: tabController,
        tabs: [
          for (final tab in tabs)
            Tab(
              key: ValueKey(tab.message),
              child: Tooltip(
                message: tab.message,
                child: Icon(tab.icon),
              ),
            ),
        ],
      ),
      body: BlocBuilder<QuerySourcesBloc, QuerySourcesState>(
        builder: (
          context,
          state,
        ) {
          if (state is QuerySourcesInitial) {
            return Center(child: Text(localizations.queryWizard));
          }

          if (state is QuerySourcesLoadInProgress) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is QuerySourcesLoadSuccess ||
              state is QuerySourcesChanged) {
            return TabBarView(
              controller: tabController,
              children: [
                for (final tab in tabs) Center(child: tab.widget),
              ],
            );
          }

          if (state is QuerySourcesLoadFailure) {
            return Center(
              child: Text(
                localizations.somethingWentWrong,
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class _QueryWizardTab {
  String message;
  IconData icon;
  Widget widget;

  _QueryWizardTab({
    required this.message,
    required this.icon,
    required this.widget,
  });
}
