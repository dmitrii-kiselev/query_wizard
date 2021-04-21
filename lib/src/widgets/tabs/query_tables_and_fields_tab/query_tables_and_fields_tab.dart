import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:query_wizard/blocs.dart';

class QueryTablesAndFieldsTab extends HookWidget {
  QueryTablesAndFieldsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3, initialIndex: 0);
    final localizations = QueryWizardLocalizations.of(context);
    final tabs = [
      _QueryTablesAndFieldsTab(
          message: localizations?.database ?? 'Database',
          icon: Icons.source_rounded,
          widget: Text(localizations?.database ?? 'Database')),
      _QueryTablesAndFieldsTab(
          message: localizations?.tables ?? 'Tables',
          icon: Icons.table_rows_rounded,
          widget: Text('Tables')),
      _QueryTablesAndFieldsTab(
          message: localizations?.fields ?? 'Fields',
          icon: Icons.horizontal_rule_rounded,
          widget: Text(localizations?.fields ?? 'Fields')),
    ];

    return Scaffold(
      appBar: AppBar(
        title: TabBar(
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
      body: BlocBuilder<QueryTablesAndFieldsTabBloc,
          QueryTablesAndFieldsTabState>(builder: (context, state) {
        if (state is QueryTablesAndFieldsTabChanged) {
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

        return Center(child: CircularProgressIndicator());
      }),
    );
  }
}

class _QueryTablesAndFieldsTab {
  String message;
  IconData icon;
  Widget widget;

  _QueryTablesAndFieldsTab(
      {required this.message, required this.icon, required this.widget});
}
