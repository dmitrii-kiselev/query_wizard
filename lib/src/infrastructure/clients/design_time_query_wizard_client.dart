import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

@dev
@LazySingleton(as: QueryWizardClient)
class DesignTimeQueryWizardClient implements QueryWizardClient {
  @override
  Future<List<QueryElement>> getSources() async {
    // CONTACTS
    final contacts = QueryElement(
      name: 'CONTACTS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    contacts.elements.addAll([
      QueryElement(
        name: 'CONTACT_ID',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'FIRST_NAME',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'LAST_NAME',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'EMAIL',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'PHONE',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'CUSTOMER_ID',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // COUNTRIES
    final countries = QueryElement(
      name: 'COUNTRIES',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    countries.elements.addAll([
      QueryElement(
        name: 'COUNTRY_ID',
        type: QueryElementType.column,
        parent: countries,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'COUNTRY_NAME',
        type: QueryElementType.column,
        parent: countries,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'REGION_ID',
        type: QueryElementType.column,
        parent: countries,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // CUSTOMERS
    final customers = QueryElement(
      name: 'CUSTOMERS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    customers.elements.addAll([
      QueryElement(
        name: 'CUSTOMER_ID',
        type: QueryElementType.column,
        parent: customers,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'NAME',
        type: QueryElementType.column,
        parent: customers,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'ADDRESS',
        type: QueryElementType.column,
        parent: customers,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'WEBSITE',
        type: QueryElementType.column,
        parent: customers,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'CREDIT_LIMIT',
        type: QueryElementType.column,
        parent: customers,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // EMPLOYEES
    final employees = QueryElement(
      name: 'EMPLOYEES',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    employees.elements.addAll([
      QueryElement(
        name: 'EMPLOYEE_ID',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'FIRST_NAME',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'LAST_NAME',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'EMAIL',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'PHONE',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'HIRE_DATE',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'MANAGER_ID',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'JOB_TITLE',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // INVENTORIES
    final inventories = QueryElement(
      name: 'INVENTORIES',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    inventories.elements.addAll([
      QueryElement(
        name: 'PRODUCT_ID',
        type: QueryElementType.column,
        parent: inventories,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'WAREHOUSE_ID',
        type: QueryElementType.column,
        parent: inventories,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'QUANTITY',
        type: QueryElementType.column,
        parent: inventories,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // LOCATIONS
    final locations = QueryElement(
      name: 'LOCATIONS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    locations.elements.addAll([
      QueryElement(
        name: 'LOCATION_ID',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'ADDRESS',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'POSTAL_CODE',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'CITY',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'STATE',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'COUNTRY_ID',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // ORDERS
    final orders = QueryElement(
      name: 'ORDERS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    orders.elements.addAll([
      QueryElement(
        name: 'ORDER_ID',
        type: QueryElementType.column,
        parent: orders,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'CUSTOMER_ID',
        type: QueryElementType.column,
        parent: orders,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'STATUS',
        type: QueryElementType.column,
        parent: orders,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'SALESMAN_ID',
        type: QueryElementType.column,
        parent: orders,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'ORDER_DATE',
        type: QueryElementType.column,
        parent: orders,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // ORDER_ITEMS
    final orderItems = QueryElement(
      name: 'ORDERS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    orderItems.elements.addAll([
      QueryElement(
        name: 'ORDER_ID',
        type: QueryElementType.column,
        parent: orderItems,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'ITEM_ID',
        type: QueryElementType.column,
        parent: orderItems,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'PRODUCT_ID',
        type: QueryElementType.column,
        parent: orderItems,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'QUANTITY',
        type: QueryElementType.column,
        parent: orderItems,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'UNIT_PRICE',
        type: QueryElementType.column,
        parent: orderItems,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // PRODUCT_CATEGORIES
    final productCategories = QueryElement(
      name: 'PRODUCT_CATEGORIES',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    productCategories.elements.addAll([
      QueryElement(
        name: 'CATEGORY_ID',
        type: QueryElementType.column,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'CATEGORY_NAME',
        type: QueryElementType.column,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // PRODUCTS
    final products = QueryElement(
      name: 'PRODUCTS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    products.elements.addAll([
      QueryElement(
        name: 'PRODUCT_ID',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'PRODUCT_NAME',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'DESCRIPTION',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'STANDARD_COST',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'LIST_PRICE',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'CATEGORY_I',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // REGIONS
    final regions = QueryElement(
      name: 'REGIONS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    regions.elements.addAll([
      QueryElement(
        name: 'REGION_ID',
        type: QueryElementType.column,
        parent: regions,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'REGION_NAME',
        type: QueryElementType.column,
        parent: regions,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // WAREHOUSES
    final warehouse = QueryElement(
      name: 'WAREHOUSES',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    warehouse.elements.addAll([
      QueryElement(
        name: 'WAREHOUSE_ID',
        type: QueryElementType.column,
        parent: warehouse,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'WAREHOUSE_NAME',
        type: QueryElementType.column,
        parent: warehouse,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        name: 'LOCATION_ID',
        type: QueryElementType.column,
        parent: warehouse,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    return [
      contacts,
      countries,
      customers,
      employees,
      inventories,
      locations,
      orders,
      orderItems,
      productCategories,
      regions,
      warehouse,
    ];
  }

  @override
  Future<QuerySchema> parseQuery(String query) async {
    final sources1 = await getSources();
    final sources2 = await getSources();
    final sources3 = await getSources();

    final List<QueryJoin> joins1 = [
      const QueryJoin(
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
      const QueryJoin(
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
      const QueryJoin(
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
      const QueryJoin(
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
      const QueryJoin(
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
      const QueryJoin(
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
      const QueryJoin(
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
      const QueryJoin(
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
      const QueryJoin(
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
      QueryGrouping(
        name: 'ORDERS.CUSTOMER_ID',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        name: 'ORDER_ITEMS.ORDER_ID',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        name: 'PRODUCT_ID.PRODUCT_ID',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
    ];

    final groupings2 = [
      QueryGrouping(
        name: 'ORDERS.CUSTOMER_ID',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        name: 'ORDER_ITEMS.ORDER_ID',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        name: 'PRODUCT_ID.PRODUCT_ID',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
    ];

    final groupings3 = [
      QueryGrouping(
        name: 'ORDERS.CUSTOMER_ID',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        name: 'ORDER_ITEMS.ORDER_ID',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        name: 'PRODUCT_ID.PRODUCT_ID',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
    ];

    final aggregates1 = [
      const QueryAggregate(field: 'ORDER_ITEMS.UNIT_PRICE', function: 'Sum'),
    ];

    final aggregates2 = [
      const QueryAggregate(field: 'ORDER_ITEMS.UNIT_PRICE', function: 'Sum'),
    ];

    final aggregates3 = [
      const QueryAggregate(field: 'ORDER_ITEMS.UNIT_PRICE', function: 'Sum'),
    ];

    final conditions1 = [
      const QueryCondition(
          isCustom: false,
          leftField: 'ORDERS.CUSTOMER_ID',
          logicalCompareType: '=',
          rightField: ':CUSTOMER_ID',
          customCondition: ''),
    ];

    final conditions2 = [
      const QueryCondition(
          isCustom: false,
          leftField: 'ORDERS.CUSTOMER_ID',
          logicalCompareType: '=',
          rightField: ':CUSTOMER_ID',
          customCondition: ''),
    ];

    final conditions3 = [
      const QueryCondition(
          isCustom: false,
          leftField: 'ORDERS.CUSTOMER_ID',
          logicalCompareType: '=',
          rightField: ':CUSTOMER_ID',
          customCondition: ''),
    ];

    final orders1 = [
      const QueryOrder(
          field: 'ORDER_ITEMS.UNIT_PRICE', type: QuerySortingType.ascending),
    ];

    final orders2 = [
      const QueryOrder(
          field: 'ORDER_ITEMS.UNIT_PRICE', type: QuerySortingType.ascending),
    ];

    final orders3 = [
      const QueryOrder(
          field: 'ORDER_ITEMS.UNIT_PRICE', type: QuerySortingType.ascending),
    ];

    final query1 = Query(
        name: 'Query 1',
        sources: sources1,
        tables: [...sources1],
        fields: [...List<QueryElement>.empty(growable: true)],
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
        fields: [...List<QueryElement>.empty(growable: true)],
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
        fields: [...List<QueryElement>.empty(growable: true)],
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
        sources: [...List<QueryElement>.empty(growable: true)],
        queries: [query1, query2, query3],
        aliases: Map.identity(),
        queryType: QueryType.selectQuery);
    final batch2 = QueryBatch(
        name: 'Query batch 2',
        sources: [...List<QueryElement>.empty(growable: true)],
        queries: [query1, query2, query3],
        aliases: Map.identity(),
        queryType: QueryType.selectQuery);
    final batch3 = QueryBatch(
        name: 'Query batch 3',
        sources: [...List<QueryElement>.empty(growable: true)],
        queries: [query1, query2, query3],
        aliases: Map.identity(),
        queryType: QueryType.selectQuery);

    final querySchema = QuerySchema(queryBatches: [batch1, batch2, batch3]);

    return querySchema;
  }
}
