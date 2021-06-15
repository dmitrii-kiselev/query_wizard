import 'package:query_wizard/domain.dart';

abstract class QueryWizardClient {
  Future<List<QueryElement>> getSources();

  Future<QuerySchema> parseQuery(String query);
}
