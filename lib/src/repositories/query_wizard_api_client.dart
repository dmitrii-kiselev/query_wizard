import 'package:query_wizard/src/models/models.dart';

class QueryWizardApiClient {
  Future<List<DbElement>> getSources() async {
    List<DbElement> columns1 = [
      DbElement(name: 'Field 1', nodeType: DbNodeType.column),
      DbElement(name: 'Field 2', nodeType: DbNodeType.column),
      DbElement(name: 'Field 3', nodeType: DbNodeType.column),
    ];

    List<DbElement> columns2 = [
      DbElement(name: 'Field 1', nodeType: DbNodeType.column),
      DbElement(name: 'Field 2', nodeType: DbNodeType.column),
      DbElement(name: 'Field 3', nodeType: DbNodeType.column),
    ];

    List<DbElement> columns3 = [
      DbElement(name: 'Field 1', nodeType: DbNodeType.column),
      DbElement(name: 'Field 2', nodeType: DbNodeType.column),
      DbElement(name: 'Field 3', nodeType: DbNodeType.column),
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
