import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';
import 'package:query_wizard/infrastructure.dart';

@lazySingleton
class QueryWizardRepository {
  final QueryWizardClient queryWizardClient;

  QueryWizardRepository({required this.queryWizardClient});

  Future<List<QueryElement>> getSources() async {
    return await queryWizardClient.getSources();
  }

  Future<QuerySchema> parseQuery(String query) async {
    return await queryWizardClient.parseQuery(query);
  }
}
