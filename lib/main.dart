import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:query_wizard/src/repositories/repositories.dart';
import 'package:query_wizard/src/query_wizard_bloc_observer.dart';
import 'package:query_wizard/src/widgets/query_wizard.dart';

void main() {
  Bloc.observer = QueryWizardBlocObserver();

  final QueryWizardRepository queryWizardRepository = QueryWizardRepository(
    queryWizardApiClient: QueryWizardApiClient(),
  );

  runApp(QueryWizard(queryWizardRepository: queryWizardRepository));
}
