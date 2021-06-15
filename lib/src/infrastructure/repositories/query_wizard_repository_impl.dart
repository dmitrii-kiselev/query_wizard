import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

@LazySingleton(as: QueryWizardRepository)
class QueryWizardRepositoryImpl implements QueryWizardRepository {
  final QueryWizardClient queryWizardClient;

  QueryWizardRepositoryImpl({required this.queryWizardClient});

  @override
  Future<List<QueryElement>> getSources() async {
    return queryWizardClient.getSources();
  }

  @override
  Future<QuerySchema> parseQuery(String query) async {
    return queryWizardClient.parseQuery(query);
  }
}
