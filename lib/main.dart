import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:query_wizard/infrastructure.dart';
import 'package:query_wizard/repositories.dart';
import 'package:query_wizard/widgets.dart';

void main() {
  Bloc.observer = QueryWizardBlocObserver();

  final QueryWizardRepository queryWizardRepository = QueryWizardRepository(
    queryWizardClient: DesignTimeQueryWizardClient(),
  );

  runApp(QueryWizard(queryWizardRepository: queryWizardRepository));
}
