import 'package:query_wizard/domain.dart';

abstract class IQueryWizardRepository {
  Future<List<QueryElement>> getSources();

  Future<QuerySchema> parseQuery(String query);
}
