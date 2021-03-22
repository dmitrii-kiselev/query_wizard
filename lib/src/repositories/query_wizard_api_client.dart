import 'package:query_wizard/src/models/models.dart';

class QueryWizardApiClient {
  Future<List<DbElement>> getSources() async {
    List<DbElement> columns1 = [
      DbElement(name: 'Table 1', nodeType: DbNodeType.table),
      DbElement(name: 'Table 2', nodeType: DbNodeType.table),
      DbElement(name: 'Table 3', nodeType: DbNodeType.table),
    ];

    List<DbElement> columns2 = [
      DbElement(name: 'Table 1', nodeType: DbNodeType.table),
      DbElement(name: 'Table 2', nodeType: DbNodeType.table),
      DbElement(name: 'Table 3', nodeType: DbNodeType.table),
    ];

    List<DbElement> columns3 = [
      DbElement(name: 'Table 1', nodeType: DbNodeType.table),
      DbElement(name: 'Table 2', nodeType: DbNodeType.table),
      DbElement(name: 'Table 3', nodeType: DbNodeType.table),
    ];

    return [
      DbElement.withElements(
          name: 'Table 1', nodeType: DbNodeType.table, elements: columns1),
      DbElement.withElements(
          name: 'Table 2', nodeType: DbNodeType.table, elements: columns2),
      DbElement.withElements(
          name: 'Table 3', nodeType: DbNodeType.table, elements: columns3),
    ];
  }
}
