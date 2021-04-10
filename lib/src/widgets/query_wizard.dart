import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';

import 'package:query_wizard/blocs.dart';
import 'package:query_wizard/models.dart';
import 'package:query_wizard/repositories.dart';
import 'package:query_wizard/src/models/condition.dart';
import 'package:query_wizard/widgets.dart';

class QueryWizard extends StatelessWidget {
  final QueryWizardRepository queryWizardRepository;

  QueryWizard({Key? key, required this.queryWizardRepository})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Join> joins = [
      Join(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: Condition(
              leftField: 'Table1.Column1',
              logicalCompareType: '=',
              rightField: 'Table2.Column1',
              isCustom: false,
              customCondition: '')),
      Join(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: Condition(
              leftField: 'Table1.Column2',
              logicalCompareType: '=',
              rightField: 'Table2.Column2',
              isCustom: false,
              customCondition: '')),
      Join(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: Condition(
              leftField: 'Table1.Column3',
              logicalCompareType: '=',
              rightField: 'Table2.Column3',
              isCustom: false,
              customCondition: '')),
    ];

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
          create: (context) => JoinsTabBloc(JoinsChanged(joins: joins)),
        ),
      ], child: QueryWizardView(title: 'Query Wizard')),
    );
  }
}
