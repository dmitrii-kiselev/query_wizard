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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        ...QueryWizardLocalizations.localizationsDelegates,
      ],
      supportedLocales: QueryWizardLocalizations.supportedLocales,
      home: buildBlocs(queryWizardRepository),
    );
  }
}

Widget buildBlocs(QueryWizardRepository queryWizardRepository) {
  final sourcesBloc =
      QuerySourcesBloc(queryWizardRepository: queryWizardRepository);

  final tablesBloc = QueryTablesBloc();
  final fieldsBloc = QueryFieldsBloc();
  final joinsBloc = QueryJoinsBloc();
  final aggregatesBloc = QueryAggregatesBloc();
  final groupingsBloc = QueryGroupingsBloc();
  final conditionsBloc = QueryConditionsBloc();
  final queriesBloc = QueriesBloc();
  final ordersBloc = QueryOrdersBloc();
  final batchesBloc = QueryBatchesBloc();
  final queryWizardBloc = QueryWizardBloc(
      sourcesBloc: sourcesBloc,
      tablesBloc: tablesBloc,
      fieldsBloc: fieldsBloc,
      joinsBloc: joinsBloc,
      aggregatesBloc: aggregatesBloc,
      groupingsBloc: groupingsBloc,
      conditionsBloc: conditionsBloc,
      queriesBloc: queriesBloc,
      ordersBloc: ordersBloc,
      batchesBloc: batchesBloc,
      queryWizardRepository: queryWizardRepository);

  return MultiBlocProvider(providers: [
    BlocProvider(create: (context) => queryWizardBloc),
    BlocProvider(create: (context) => sourcesBloc),
    BlocProvider(create: (context) => tablesBloc),
    BlocProvider(create: (context) => fieldsBloc),
    BlocProvider(create: (context) => joinsBloc),
    BlocProvider(create: (context) => aggregatesBloc),
    BlocProvider(create: (context) => groupingsBloc),
    BlocProvider(create: (context) => conditionsBloc),
    BlocProvider(create: (context) => queriesBloc),
    BlocProvider(create: (context) => ordersBloc),
    BlocProvider(create: (context) => batchesBloc),
  ], child: QueryWizardLayout(title: 'Query Wizard'));
}
