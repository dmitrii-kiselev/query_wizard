import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/repositories.dart';
import 'package:query_wizard/widgets.dart';

class QueryWizard extends StatelessWidget {
  final QueryWizardRepository queryWizardRepository;

  QueryWizard({Key? key, required this.queryWizardRepository})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'rootQueryWizard',
      title: 'Query Wizard',
      theme: ThemeData(primarySwatch: Colors.blue),
      localizationsDelegates: const [
        ...QueryWizardLocalizations.localizationsDelegates,
      ],
      supportedLocales: QueryWizardLocalizations.supportedLocales,
      home: buildBlocs(queryWizardRepository),
    );
  }
}

Widget buildBlocs(QueryWizardRepository queryWizardRepository) {
  final sourcesBloc = QuerySourcesBloc(
      queryWizardRepository: queryWizardRepository,
      initialState: QuerySourcesInitial());
  final tablesBloc = QueryTablesBloc(QueryTablesInitial());
  final fieldsBloc = QueryFieldsBloc(QueryFieldsInitial());
  final tablesAndFieldsTabBloc =
      QueryTablesAndFieldsTabBloc(QueryTablesAndFieldsInitial());
  final joinsTabBloc = QueryJoinsTabBloc(QueryJoinsInitial());
  final aggregatesTabBloc = QueryAggregatesBloc(QueryAggregatesInitial());
  final groupingsTabBloc = QueryGroupingsBloc(QueryGroupingsInitial());
  final queriesBloc = QueriesBloc(QueriesInitial());
  final batchTabBloc = QueryBatchTabBloc(QueryBatchesInitial());
  final queryWizardBloc = QueryWizardBloc(
      sourcesBloc: sourcesBloc,
      tablesBloc: tablesBloc,
      fieldsBloc: fieldsBloc,
      tablesAndFieldsTabBloc: tablesAndFieldsTabBloc,
      joinsTabBloc: joinsTabBloc,
      aggregatesBloc: aggregatesTabBloc,
      groupingsBloc: groupingsTabBloc,
      queriesBloc: queriesBloc,
      batchTabBloc: batchTabBloc,
      queryWizardRepository: queryWizardRepository);

  return MultiBlocProvider(providers: [
    BlocProvider(create: (context) => queryWizardBloc),
    BlocProvider(create: (context) => tablesAndFieldsTabBloc),
    BlocProvider(create: (context) => sourcesBloc),
    BlocProvider(create: (context) => tablesBloc),
    BlocProvider(create: (context) => fieldsBloc),
    BlocProvider(create: (context) => joinsTabBloc),
    BlocProvider(create: (context) => aggregatesTabBloc),
    BlocProvider(create: (context) => groupingsTabBloc),
    BlocProvider(create: (context) => queriesBloc),
    BlocProvider(create: (context) => batchTabBloc),
  ], child: QueryWizardLayout(title: 'Query Wizard'));
}
