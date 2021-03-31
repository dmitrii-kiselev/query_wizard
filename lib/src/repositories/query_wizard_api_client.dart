import 'package:query_wizard/models.dart';

class QueryWizardApiClient {
  Future<List<DbElement>> getSources() async {
    List<DbElement> columns1 = [
      DbElement(name: 'Table1.Field1', nodeType: DbNodeType.column),
      DbElement(name: 'Table1.Field2', nodeType: DbNodeType.column),
      DbElement(name: 'Table1.Field3', nodeType: DbNodeType.column),
    ];

    List<DbElement> columns2 = [
      DbElement(name: 'Table2.Field1', nodeType: DbNodeType.column),
      DbElement(name: 'Table2.Field2', nodeType: DbNodeType.column),
      DbElement(name: 'Table2.Field3', nodeType: DbNodeType.column),
    ];

    List<DbElement> columns3 = [
      DbElement(name: 'Table3.Field1', nodeType: DbNodeType.column),
      DbElement(name: 'Table3.Field2', nodeType: DbNodeType.column),
      DbElement(name: 'Table3.Field3', nodeType: DbNodeType.column),
    ];

    return [
      DbElement.withElements(
          name: 'Table1', nodeType: DbNodeType.table, elements: columns1),
      DbElement.withElements(
          name: 'Table2', nodeType: DbNodeType.table, elements: columns2),
      DbElement.withElements(
          name: 'Table3', nodeType: DbNodeType.table, elements: columns3),
    ];
  }
}

class FakeQueryWizardApiClient extends QueryWizardApiClient {
  @override
  Future<List<DbElement>> getSources() async {
    return await new Future.delayed(new Duration(milliseconds: 1000), () {
      throw new Exception();
    });
  }
}
