import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/widgets.dart';

class QueryWizardView extends HookWidget {
  final String title;

  QueryWizardView({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<QueryWizardBloc>(context).add(SourcesRequested());

    final tabController = useTabController(initialLength: 8, initialIndex: 0);
    final localizations = QueryWizardLocalizations.of(context);
    final tabs = [
      _QueryWizardTab(localizations.tablesAndFieldsTab,
          Icons.table_chart_rounded, TablesAndFields()),
      _QueryWizardTab(localizations.joinsTab, Icons.account_tree_rounded,
          Text(localizations.joinsTab)),
      _QueryWizardTab(localizations.groupTab, Icons.group_work_rounded,
          Text(localizations.groupTab)),
      _QueryWizardTab(localizations.conditionsTab, Icons.filter_alt_rounded,
          Text(localizations.conditionsTab)),
      _QueryWizardTab(localizations.moreTab, Icons.more_horiz_rounded,
          Text(localizations.moreTab)),
      _QueryWizardTab(localizations.unionsAliasesTab, Icons.view_list_rounded,
          Text(localizations.unionsAliasesTab)),
      _QueryWizardTab(localizations.orderTab, Icons.sort_rounded,
          Text(localizations.orderTab)),
      _QueryWizardTab(localizations.queryBatchTab, Icons.batch_prediction,
          Text(localizations.queryBatchTab)),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      ),
      body: BlocBuilder<QueryWizardBloc, QueryWizardState>(
          builder: (context, state) {
        if (state is QueryWizardInitial) {
          return Center(child: Text(localizations.queryWizard));
        }

        if (state is QueryWizardLoadInProgress) {
          return Center(child: CircularProgressIndicator());
        }

        if (state is QueryWizardLoadSuccess) {
          return TabBarView(
            controller: tabController,
            children: [
              for (final tab in tabs)
                Center(
                  child: tab.widget,
                ),
            ],
          );
        }

        if (state is QueryWizardLoadFailure) {
          return Center(
            child: Text(
              localizations.somethingWentWrong,
              style: TextStyle(color: Colors.red),
            ),
          );
        }

        return build(context);
      }),
    );
  }
}

class _QueryWizardTab {
  String message;
  IconData icon;
  Widget widget;

  _QueryWizardTab(this.message, this.icon, this.widget);
}
