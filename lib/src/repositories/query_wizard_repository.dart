import 'dart:async';

import 'package:query_wizard/src/models/models.dart';
import 'package:query_wizard/src/repositories/query_wizard_api_client.dart';

class QueryWizardRepository {
  final QueryWizardApiClient queryWizardApiClient;

  QueryWizardRepository({this.queryWizardApiClient});

  Future<List<DbElement>> getSources() async {
    return await queryWizardApiClient.getSources();
  }
}
