import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';
import 'package:query_wizard/application.dart';
import 'package:query_wizard/infrastructure.dart';
import 'package:query_wizard/presentation.dart';

class QueryWizard extends StatelessWidget {
  QueryWizard({Key? key}) : super(key: key);

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
      home: buildHome(),
    );
  }
}

Widget buildHome() {
  return MultiBlocProvider(providers: [
    BlocProvider(create: (context) => getIt<QuerySourcesBloc>()),
    BlocProvider(create: (context) => getIt<QueryTablesBloc>()),
    BlocProvider(create: (context) => getIt<QueryFieldsBloc>()),
    BlocProvider(create: (context) => getIt<QueryJoinsBloc>()),
    BlocProvider(create: (context) => getIt<QueryAggregatesBloc>()),
    BlocProvider(create: (context) => getIt<QueryGroupingsBloc>()),
    BlocProvider(create: (context) => getIt<QueryConditionsBloc>()),
    BlocProvider(create: (context) => getIt<QueriesBloc>()),
    BlocProvider(create: (context) => getIt<QueryOrdersBloc>()),
    BlocProvider(create: (context) => getIt<QueryBatchesBloc>()),
    BlocProvider(create: (context) => getIt<QueryWizardBloc>()),
  ], child: QueryWizardLayout(title: 'Query Wizard'));
}
