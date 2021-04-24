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
      home: MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) =>
              QueryWizardBloc(queryWizardRepository: queryWizardRepository),
        ),
        BlocProvider(
          create: (context) =>
              QueryTablesAndFieldsTabBloc(QueryTablesAndFieldsInitial()),
        ),
        BlocProvider(
          create: (context) =>
              QuerySourcesBloc(queryWizardRepository: queryWizardRepository),
        ),
        BlocProvider(
          create: (context) => QueryTablesBloc(QueryTablesInitial(tables: [])),
        ),
        BlocProvider(
          create: (context) => QueryFieldsBloc(QueryFieldsInitial(fields: [])),
        ),
        BlocProvider(
          create: (context) => QueryJoinsTabBloc(QueryJoinsChanged(joins: [])),
        ),
        BlocProvider(
          create: (context) =>
              QueryBatchTabBloc(QueryBatchesChanged(queryBatches: [])),
        ),
      ], child: QueryWizardView(title: 'Query Wizard')),
    );
  }
}
