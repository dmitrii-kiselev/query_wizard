import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/query_wizard_localizations.dart';

class QueryAggregates extends StatelessWidget {
  QueryAggregates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = QueryWizardLocalizations.of(context);
    return Text(localizations?.aggregates ?? 'Aggregates');
  }
}
