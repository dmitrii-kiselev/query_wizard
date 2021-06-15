import 'package:query_wizard/domain.dart';

abstract class QueryWizardRepository {
  Future<List<QueryElement>> getSources();

  Future<QuerySchema> parseQuery(String query);
}
