import 'package:query_wizard/models.dart';

abstract class QueryWizardClient {
  Future<List<DbElement>> getSources();

  Future<QuerySchema> parseQuery(String query);
}

class DesignTimeQueryWizardClient implements QueryWizardClient {
  Future<List<DbElement>> getSources() async {
    return [
      DbElement.withElements(
          name: 'CONTACTS',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'CONTACT_ID', nodeType: DbNodeType.column),
            DbElement(name: 'FIRST_NAME', nodeType: DbNodeType.column),
            DbElement(name: 'LAST_NAME', nodeType: DbNodeType.column),
            DbElement(name: 'EMAIL', nodeType: DbNodeType.column),
            DbElement(name: 'PHONE', nodeType: DbNodeType.column),
            DbElement(name: 'CUSTOMER_ID', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'COUNTRIES',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'COUNTRY_ID', nodeType: DbNodeType.column),
            DbElement(name: 'COUNTRY_NAME', nodeType: DbNodeType.column),
            DbElement(name: 'REGION_ID', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'CUSTOMERS',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'CUSTOMER_ID', nodeType: DbNodeType.column),
            DbElement(name: 'NAME', nodeType: DbNodeType.column),
            DbElement(name: 'ADDRESS', nodeType: DbNodeType.column),
            DbElement(name: 'WEBSITE', nodeType: DbNodeType.column),
            DbElement(name: 'CREDIT_LIMIT', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'EMPLOYEES',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'EMPLOYEE_ID', nodeType: DbNodeType.column),
            DbElement(name: 'FIRST_NAME', nodeType: DbNodeType.column),
            DbElement(name: 'LAST_NAME', nodeType: DbNodeType.column),
            DbElement(name: 'EMAIL', nodeType: DbNodeType.column),
            DbElement(name: 'PHONE', nodeType: DbNodeType.column),
            DbElement(name: 'HIRE_DATE', nodeType: DbNodeType.column),
            DbElement(name: 'MANAGER_ID', nodeType: DbNodeType.column),
            DbElement(name: 'JOB_TITLE', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'INVENTORIES',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'PRODUCT_ID', nodeType: DbNodeType.column),
            DbElement(name: 'WAREHOUSE_ID', nodeType: DbNodeType.column),
            DbElement(name: 'QUANTITY', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'LOCATIONS',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'LOCATION_ID', nodeType: DbNodeType.column),
            DbElement(name: 'ADDRESS', nodeType: DbNodeType.column),
            DbElement(name: 'POSTAL_CODE', nodeType: DbNodeType.column),
            DbElement(name: 'CITY', nodeType: DbNodeType.column),
            DbElement(name: 'STATE', nodeType: DbNodeType.column),
            DbElement(name: 'COUNTRY_ID', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'ORDERS',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'ORDER_ID', nodeType: DbNodeType.column),
            DbElement(name: 'CUSTOMER_ID', nodeType: DbNodeType.column),
            DbElement(name: 'STATUS', nodeType: DbNodeType.column),
            DbElement(name: 'SALESMAN_ID', nodeType: DbNodeType.column),
            DbElement(name: 'ORDER_DATE', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'ORDER_ITEMS',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'ORDER_ID', nodeType: DbNodeType.column),
            DbElement(name: 'ITEM_ID', nodeType: DbNodeType.column),
            DbElement(name: 'PRODUCT_ID', nodeType: DbNodeType.column),
            DbElement(name: 'QUANTITY', nodeType: DbNodeType.column),
            DbElement(name: 'UNIT_PRICE', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'PRODUCT_CATEGORIES',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'CATEGORY_ID', nodeType: DbNodeType.column),
            DbElement(name: 'CATEGORY_NAME', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'PRODUCTS',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'PRODUCT_ID', nodeType: DbNodeType.column),
            DbElement(name: 'PRODUCT_NAME', nodeType: DbNodeType.column),
            DbElement(name: 'DESCRIPTION', nodeType: DbNodeType.column),
            DbElement(name: 'STANDARD_COST', nodeType: DbNodeType.column),
            DbElement(name: 'LIST_PRICE', nodeType: DbNodeType.column),
            DbElement(name: 'CATEGORY_I', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'REGIONS',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'REGION_ID', nodeType: DbNodeType.column),
            DbElement(name: 'REGION_NAME', nodeType: DbNodeType.column),
          ]),
      DbElement.withElements(
          name: 'WAREHOUSES',
          nodeType: DbNodeType.table,
          elements: [
            DbElement(name: 'WAREHOUSE_ID', nodeType: DbNodeType.column),
            DbElement(name: 'WAREHOUSE_NAME', nodeType: DbNodeType.column),
            DbElement(name: 'LOCATION_ID', nodeType: DbNodeType.column),
          ]),
    ];
  }

  Future<QuerySchema> parseQuery(String query) async {
    final sources1 = await getSources();
    final sources2 = await getSources();
    final sources3 = await getSources();

    final List<QueryJoin> joins1 = [
      QueryJoin(
          leftTable: 'CUSTOMERS',
          isLeftAll: true,
          rightTable: 'ORDERS',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'CUSTOMER_ID',
              logicalCompareType: '=',
              rightField: 'CUSTOMER_ID',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'ORDERS',
          isLeftAll: true,
          rightTable: 'ORDER_ITEMS',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'ORDER_ID',
              logicalCompareType: '=',
              rightField: 'ORDER_ID',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'ORDER_ITEMS',
          isLeftAll: true,
          rightTable: 'PRODUCTS',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'PRODUCT_ID',
              logicalCompareType: '=',
              rightField: 'PRODUCT_ID',
              isCustom: false,
              customCondition: '')),
    ];

    final List<QueryJoin> joins2 = [
      QueryJoin(
          leftTable: 'CUSTOMERS',
          isLeftAll: true,
          rightTable: 'ORDERS',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'CUSTOMER_ID',
              logicalCompareType: '=',
              rightField: 'CUSTOMER_ID',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'ORDERS',
          isLeftAll: true,
          rightTable: 'ORDER_ITEMS',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'ORDER_ID',
              logicalCompareType: '=',
              rightField: 'ORDER_ID',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'ORDER_ITEMS',
          isLeftAll: true,
          rightTable: 'PRODUCTS',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'PRODUCT_ID',
              logicalCompareType: '=',
              rightField: 'PRODUCT_ID',
              isCustom: false,
              customCondition: '')),
    ];

    final List<QueryJoin> joins3 = [
      QueryJoin(
          leftTable: 'CUSTOMERS',
          isLeftAll: true,
          rightTable: 'ORDERS',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'CUSTOMER_ID',
              logicalCompareType: '=',
              rightField: 'CUSTOMER_ID',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'ORDERS',
          isLeftAll: true,
          rightTable: 'ORDER_ITEMS',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'ORDER_ID',
              logicalCompareType: '=',
              rightField: 'ORDER_ID',
              isCustom: false,
              customCondition: '')),
      QueryJoin(
          leftTable: 'ORDER_ITEMS',
          isLeftAll: true,
          rightTable: 'PRODUCTS',
          isRightAll: false,
          condition: QueryCondition(
              leftField: 'PRODUCT_ID',
              logicalCompareType: '=',
              rightField: 'PRODUCT_ID',
              isCustom: false,
              customCondition: '')),
    ];

    final groupings1 = [
      QueryGrouping(name: 'ORDERS.CUSTOMER_ID', type: GroupingType.grouping),
      QueryGrouping(name: 'ORDER_ITEMS.ORDER_ID', type: GroupingType.grouping),
      QueryGrouping(name: 'PRODUCT_ID.PRODUCT_ID', type: GroupingType.grouping),
    ];

    final groupings2 = [
      QueryGrouping(name: 'ORDERS.CUSTOMER_ID', type: GroupingType.grouping),
      QueryGrouping(name: 'ORDER_ITEMS.ORDER_ID', type: GroupingType.grouping),
      QueryGrouping(name: 'PRODUCT_ID.PRODUCT_ID', type: GroupingType.grouping),
    ];

    final groupings3 = [
      QueryGrouping(name: 'ORDERS.CUSTOMER_ID', type: GroupingType.grouping),
      QueryGrouping(name: 'ORDER_ITEMS.ORDER_ID', type: GroupingType.grouping),
      QueryGrouping(name: 'PRODUCT_ID.PRODUCT_ID', type: GroupingType.grouping),
    ];

    final aggregates1 = [
      QueryAggregate(field: 'ORDER_ITEMS.UNIT_PRICE', function: 'Sum'),
    ];

    final aggregates2 = [
      QueryAggregate(field: 'ORDER_ITEMS.UNIT_PRICE', function: 'Sum'),
    ];

    final aggregates3 = [
      QueryAggregate(field: 'ORDER_ITEMS.UNIT_PRICE', function: 'Sum'),
    ];

    final conditions1 = [
      QueryCondition(
          isCustom: false,
          leftField: 'ORDERS.CUSTOMER_ID',
          logicalCompareType: '=',
          rightField: ':CUSTOMER_ID',
          customCondition: ''),
    ];

    final conditions2 = [
      QueryCondition(
          isCustom: false,
          leftField: 'ORDERS.CUSTOMER_ID',
          logicalCompareType: '=',
          rightField: ':CUSTOMER_ID',
          customCondition: ''),
    ];

    final conditions3 = [
      QueryCondition(
          isCustom: false,
          leftField: 'ORDERS.CUSTOMER_ID',
          logicalCompareType: '=',
          rightField: ':CUSTOMER_ID',
          customCondition: ''),
    ];

    final orders1 = [
      QueryOrder(
          field: 'ORDER_ITEMS.UNIT_PRICE', type: QuerySortingType.ascending),
    ];

    final orders2 = [
      QueryOrder(
          field: 'ORDER_ITEMS.UNIT_PRICE', type: QuerySortingType.ascending),
    ];

    final orders3 = [
      QueryOrder(
          field: 'ORDER_ITEMS.UNIT_PRICE', type: QuerySortingType.ascending),
    ];

    final query1 = Query(
        name: 'Query 1',
        sources: sources1,
        tables: [...sources1],
        fields: [],
        joins: joins1,
        groupings: groupings1,
        aggregates: aggregates1,
        conditions: conditions1,
        orders: orders1,
        isTop: false,
        topCounter: 0,
        isDistinct: false);

    final query2 = Query(
        name: 'Query 2',
        sources: sources2,
        tables: [...sources2],
        fields: [],
        joins: joins2,
        groupings: groupings2,
        aggregates: aggregates2,
        conditions: conditions2,
        orders: orders2,
        isTop: false,
        topCounter: 0,
        isDistinct: false);

    final query3 = Query(
        name: 'Query 3',
        sources: sources3,
        tables: [...sources3],
        fields: [],
        joins: joins3,
        groupings: groupings3,
        aggregates: aggregates3,
        conditions: conditions3,
        orders: orders3,
        isTop: false,
        topCounter: 0,
        isDistinct: false);

    final batch1 = QueryBatch(
        name: 'Query batch 1',
        sources: [],
        queries: [query1, query2, query3],
        aliases: Map.identity(),
        queryType: QueryType.selectQuery);
    final batch2 = QueryBatch(
        name: 'Query batch 2',
        sources: [],
        queries: [query1, query2, query3],
        aliases: Map.identity(),
        queryType: QueryType.selectQuery);
    final batch3 = QueryBatch(
        name: 'Query batch 3',
        sources: [],
        queries: [query1, query2, query3],
        aliases: Map.identity(),
        queryType: QueryType.selectQuery);

    final querySchema = new QuerySchema(queryBatches: [batch1, batch2, batch3]);

    return querySchema;
  }
}

class FakeQueryWizardApiClient extends QueryWizardClient {
  @override
  Future<List<DbElement>> getSources() async {
    return await new Future.delayed(new Duration(milliseconds: 1000), () {
      throw new Exception();
    });
  }

  @override
  Future<QuerySchema> parseQuery(String query) {
    // TODO: implement parseQuery
    throw UnimplementedError();
  }
}