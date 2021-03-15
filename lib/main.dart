import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';

import 'package:query_wizard/tabs/tables_and_fields.dart';

void main() {
  runApp(QueryWizard());
}

class QueryWizard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'rootQueryWizard',
      title: 'Query Wizard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        ...QueryWizardLocalizations.localizationsDelegates,
      ],
      supportedLocales: QueryWizardLocalizations.supportedLocales,
      home: QueryWizardHomePage(title: 'Query Wizard'),
    );
  }
}

class QueryWizardHomePage extends StatefulWidget {
  QueryWizardHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _QueryWizardHomePageState createState() => _QueryWizardHomePageState();
}

class _QueryWizardHomePageState extends State<QueryWizardHomePage>
    with SingleTickerProviderStateMixin, RestorationMixin {
  TabController _tabController;

  final RestorableInt tabIndex = RestorableInt(0);

  @override
  String get restorationId => 'tab_scrollable_demo';

  @override
  void restoreState(RestorationBucket oldBucket, bool initialRestore) {
    registerForRestoration(tabIndex, 'tab_index');
    _tabController.index = tabIndex.value;
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 8,
      vsync: this,
    );
    _tabController.addListener(() {
      setState(() {
        tabIndex.value = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    tabIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        title: Text(widget.title),
        bottom: TabBar(
          controller: _tabController,
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
      body: TabBarView(
        controller: _tabController,
        children: [
          for (final tab in tabs)
            Center(
              child: tab.widget,
            ),
        ],
      ),
    );
  }
}

class _QueryWizardTab {
  String message;
  IconData icon;
  Widget widget;

  _QueryWizardTab(this.message, this.icon, this.widget);
}
