import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';

void main() {
  runApp(QueryWizard());
}

class QueryWizard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    final tabs = [
      QueryWizardLocalizations.of(context).tablesAndFieldsTab,
      QueryWizardLocalizations.of(context).joinsTab,
      QueryWizardLocalizations.of(context).groupTab,
      QueryWizardLocalizations.of(context).conditionsTab,
      QueryWizardLocalizations.of(context).moreTab,
      QueryWizardLocalizations.of(context).unionsAliasesTab,
      QueryWizardLocalizations.of(context).orderTab,
      QueryWizardLocalizations.of(context).queryBatchTab
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: false,
          tabs: [
            for (final tab in tabs) Tab(text: tab),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          for (final tab in tabs)
            Center(
              child: Text(tab),
            ),
        ],
      ),
    );
  }
}
