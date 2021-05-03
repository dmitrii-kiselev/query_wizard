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

  Future<QuerySchema> parseQuery(String query) async {
    final sources = await getSources();

    final List<QueryJoin> joins1 = [
      QueryJoin(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'Table1.Column1',
              logicalCompareType: '=',
              rightField: 'Table2.Column1',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'Table1.Column2',
              logicalCompareType: '=',
              rightField: 'Table2.Column2',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'Table1.Column3',
              logicalCompareType: '=',
              rightField: 'Table2.Column3',
              isCustom: false,
              customCondition: '')),
    ];

    final List<QueryJoin> joins2 = [
      QueryJoin(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'Table1.Column1',
              logicalCompareType: '=',
              rightField: 'Table2.Column1',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'Table1.Column2',
              logicalCompareType: '=',
              rightField: 'Table2.Column2',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'Table1.Column3',
              logicalCompareType: '=',
              rightField: 'Table2.Column3',
              isCustom: false,
              customCondition: '')),
    ];

    final List<QueryJoin> joins3 = [
      QueryJoin(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'Table1.Column1',
              logicalCompareType: '=',
              rightField: 'Table2.Column1',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'Table1.Column2',
              logicalCompareType: '=',
              rightField: 'Table2.Column2',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'Table1',
          isLeftAll: false,
          rightTable: 'Table2',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'Table1.Column3',
              logicalCompareType: '=',
              rightField: 'Table2.Column3',
              isCustom: false,
              customCondition: '')),
    ];

    final query1 = Query(
        name: 'Query 1',
        sources: sources,
        tables: sources,
        fields: sources,
        joins: joins1,
        groupings: [],
        aggregates: [],
        conditions: [],
        sortings: [],
        isTop: false,
        topCounter: 0,
        isDistinct: false);

    final query2 = Query(
        name: 'Query 2',
        sources: sources,
        tables: sources,
        fields: sources,
        joins: joins2,
        groupings: [],
        aggregates: [],
        conditions: [],
        sortings: [],
        isTop: false,
        topCounter: 0,
        isDistinct: false);

    final query3 = Query(
        name: 'Query 3',
        sources: sources,
        tables: sources,
        fields: sources,
        joins: joins3,
        groupings: [],
        aggregates: [],
        conditions: [],
        sortings: [],
        isTop: false,
        topCounter: 0,
        isDistinct: false);

    final batch1 = QueryBatch(
        name: 'Query batch 1',
        sources: sources,
        queries: [query1, query2, query3],
        aliases: Map.identity(),
        queryType: QueryType.selectQuery);
    final batch2 = QueryBatch(
        name: 'Query batch 2',
        sources: sources,
        queries: [query1, query2, query3],
        aliases: Map.identity(),
        queryType: QueryType.selectQuery);
    final batch3 = QueryBatch(
        name: 'Query batch 3',
        sources: sources,
        queries: [query1, query2, query3],
        aliases: Map.identity(),
        queryType: QueryType.selectQuery);

    final querySchema = new QuerySchema(queryBatches: [batch1, batch2, batch3]);

    return querySchema;
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
