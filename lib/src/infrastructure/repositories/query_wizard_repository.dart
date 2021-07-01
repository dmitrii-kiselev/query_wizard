import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

@LazySingleton(as: IQueryWizardRepository)
class QueryWizardRepository implements IQueryWizardRepository {
  final IQueryWizardClient queryWizardClient;

  QueryWizardRepository({required this.queryWizardClient});

  @override
  Future<List<QueryElement>> getSources() async {
    return queryWizardClient.getSources();
  }

  @override
  Future<QuerySchema> parseQuery(String query) async {
    return queryWizardClient.parseQuery(query);
  }
}
