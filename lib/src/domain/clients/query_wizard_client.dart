import 'package:query_wizard/domain.dart';

abstract class IQueryWizardClient {
  Future<List<QueryElement>> getSources();

  Future<QuerySchema> parseQuery(String query);
}
