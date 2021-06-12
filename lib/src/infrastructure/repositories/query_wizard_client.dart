import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

abstract class QueryWizardClient {
  Future<List<QueryElement>> getSources();

  Future<QuerySchema> parseQuery(String query);
}

@dev
@LazySingleton(as: QueryWizardClient)
class DesignTimeQueryWizardClient implements QueryWizardClient {
  Future<List<QueryElement>> getSources() async {
    return [
      QueryElement.withElements(
          name: 'CONTACTS',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'CONTACT_ID', type: QueryElementType.column),
            QueryElement(name: 'FIRST_NAME', type: QueryElementType.column),
            QueryElement(name: 'LAST_NAME', type: QueryElementType.column),
            QueryElement(name: 'EMAIL', type: QueryElementType.column),
            QueryElement(name: 'PHONE', type: QueryElementType.column),
            QueryElement(name: 'CUSTOMER_ID', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'COUNTRIES',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'COUNTRY_ID', type: QueryElementType.column),
            QueryElement(name: 'COUNTRY_NAME', type: QueryElementType.column),
            QueryElement(name: 'REGION_ID', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'CUSTOMERS',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'CUSTOMER_ID', type: QueryElementType.column),
            QueryElement(name: 'NAME', type: QueryElementType.column),
            QueryElement(name: 'ADDRESS', type: QueryElementType.column),
            QueryElement(name: 'WEBSITE', type: QueryElementType.column),
            QueryElement(name: 'CREDIT_LIMIT', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'EMPLOYEES',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'EMPLOYEE_ID', type: QueryElementType.column),
            QueryElement(name: 'FIRST_NAME', type: QueryElementType.column),
            QueryElement(name: 'LAST_NAME', type: QueryElementType.column),
            QueryElement(name: 'EMAIL', type: QueryElementType.column),
            QueryElement(name: 'PHONE', type: QueryElementType.column),
            QueryElement(name: 'HIRE_DATE', type: QueryElementType.column),
            QueryElement(name: 'MANAGER_ID', type: QueryElementType.column),
            QueryElement(name: 'JOB_TITLE', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'INVENTORIES',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'PRODUCT_ID', type: QueryElementType.column),
            QueryElement(name: 'WAREHOUSE_ID', type: QueryElementType.column),
            QueryElement(name: 'QUANTITY', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'LOCATIONS',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'LOCATION_ID', type: QueryElementType.column),
            QueryElement(name: 'ADDRESS', type: QueryElementType.column),
            QueryElement(name: 'POSTAL_CODE', type: QueryElementType.column),
            QueryElement(name: 'CITY', type: QueryElementType.column),
            QueryElement(name: 'STATE', type: QueryElementType.column),
            QueryElement(name: 'COUNTRY_ID', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'ORDERS',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'ORDER_ID', type: QueryElementType.column),
            QueryElement(name: 'CUSTOMER_ID', type: QueryElementType.column),
            QueryElement(name: 'STATUS', type: QueryElementType.column),
            QueryElement(name: 'SALESMAN_ID', type: QueryElementType.column),
            QueryElement(name: 'ORDER_DATE', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'ORDER_ITEMS',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'ORDER_ID', type: QueryElementType.column),
            QueryElement(name: 'ITEM_ID', type: QueryElementType.column),
            QueryElement(name: 'PRODUCT_ID', type: QueryElementType.column),
            QueryElement(name: 'QUANTITY', type: QueryElementType.column),
            QueryElement(name: 'UNIT_PRICE', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'PRODUCT_CATEGORIES',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'CATEGORY_ID', type: QueryElementType.column),
            QueryElement(name: 'CATEGORY_NAME', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'PRODUCTS',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'PRODUCT_ID', type: QueryElementType.column),
            QueryElement(name: 'PRODUCT_NAME', type: QueryElementType.column),
            QueryElement(name: 'DESCRIPTION', type: QueryElementType.column),
            QueryElement(name: 'STANDARD_COST', type: QueryElementType.column),
            QueryElement(name: 'LIST_PRICE', type: QueryElementType.column),
            QueryElement(name: 'CATEGORY_I', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'REGIONS',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'REGION_ID', type: QueryElementType.column),
            QueryElement(name: 'REGION_NAME', type: QueryElementType.column),
          ]),
      QueryElement.withElements(
          name: 'WAREHOUSES',
          type: QueryElementType.table,
          elements: [
            QueryElement(name: 'WAREHOUSE_ID', type: QueryElementType.column),
            QueryElement(name: 'WAREHOUSE_NAME', type: QueryElementType.column),
            QueryElement(name: 'LOCATION_ID', type: QueryElementType.column),
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

@test
@LazySingleton(as: QueryWizardClient)
class FakeQueryWizardApiClient extends QueryWizardClient {
  @override
  Future<List<QueryElement>> getSources() async {
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
