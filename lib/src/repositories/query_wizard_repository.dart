import 'dart:async';

import 'package:query_wizard/models.dart';
import 'package:query_wizard/repositories.dart';

class QueryWizardRepository {
  final QueryWizardApiClient queryWizardApiClient;

  QueryWizardRepository({required this.queryWizardApiClient});

  Future<List<DbElement>> getSources() async {
    return await queryWizardApiClient.getSources();
  }
}
