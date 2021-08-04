import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

@dev
@LazySingleton(as: IQueryWizardClient)
class DesignTimeQueryWizardClient implements IQueryWizardClient {
  @override
  Future<List<QueryElement>> getSources() async {
    // CONTACTS
    final contacts = QueryElement(
      id: const Uuid().v1(),
      name: 'CONTACTS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    contacts.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'CONTACT_ID',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'FIRST_NAME',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'LAST_NAME',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'EMAIL',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'PHONE',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'CUSTOMER_ID',
        type: QueryElementType.column,
        parent: contacts,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // COUNTRIES
    final countries = QueryElement(
      id: const Uuid().v1(),
      name: 'COUNTRIES',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    countries.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'COUNTRY_ID',
        type: QueryElementType.column,
        parent: countries,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'COUNTRY_NAME',
        type: QueryElementType.column,
        parent: countries,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'REGION_ID',
        type: QueryElementType.column,
        parent: countries,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // CUSTOMERS
    final customers = QueryElement(
      id: const Uuid().v1(),
      name: 'CUSTOMERS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    customers.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'CUSTOMER_ID',
        type: QueryElementType.column,
        parent: customers,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'NAME',
        type: QueryElementType.column,
        parent: customers,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'ADDRESS',
        type: QueryElementType.column,
        parent: customers,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'WEBSITE',
        type: QueryElementType.column,
        parent: customers,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'CREDIT_LIMIT',
        type: QueryElementType.column,
        parent: customers,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // EMPLOYEES
    final employees = QueryElement(
      id: const Uuid().v1(),
      name: 'EMPLOYEES',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    employees.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'EMPLOYEE_ID',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'FIRST_NAME',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'LAST_NAME',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'EMAIL',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'PHONE',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'HIRE_DATE',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'MANAGER_ID',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'JOB_TITLE',
        type: QueryElementType.column,
        parent: employees,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // INVENTORIES
    final inventories = QueryElement(
      id: const Uuid().v1(),
      name: 'INVENTORIES',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    inventories.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'PRODUCT_ID',
        type: QueryElementType.column,
        parent: inventories,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'WAREHOUSE_ID',
        type: QueryElementType.column,
        parent: inventories,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'QUANTITY',
        type: QueryElementType.column,
        parent: inventories,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // LOCATIONS
    final locations = QueryElement(
      id: const Uuid().v1(),
      name: 'LOCATIONS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    locations.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'LOCATION_ID',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'ADDRESS',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'POSTAL_CODE',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'CITY',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'STATE',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'COUNTRY_ID',
        type: QueryElementType.column,
        parent: locations,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // ORDERS
    final orders = QueryElement(
      id: const Uuid().v1(),
      name: 'ORDERS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    orders.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'ORDER_ID',
        type: QueryElementType.column,
        parent: orders,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'CUSTOMER_ID',
        type: QueryElementType.column,
        parent: orders,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'STATUS',
        type: QueryElementType.column,
        parent: orders,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'SALESMAN_ID',
        type: QueryElementType.column,
        parent: orders,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'ORDER_DATE',
        type: QueryElementType.column,
        parent: orders,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // ORDER_ITEMS
    final orderItems = QueryElement(
      id: const Uuid().v1(),
      name: 'ORDER_ITEMS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    orderItems.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'ORDER_ID',
        type: QueryElementType.column,
        parent: orderItems,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'ITEM_ID',
        type: QueryElementType.column,
        parent: orderItems,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'PRODUCT_ID',
        type: QueryElementType.column,
        parent: orderItems,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'QUANTITY',
        type: QueryElementType.column,
        parent: orderItems,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'UNIT_PRICE',
        type: QueryElementType.column,
        parent: orderItems,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // PRODUCT_CATEGORIES
    final productCategories = QueryElement(
      id: const Uuid().v1(),
      name: 'PRODUCT_CATEGORIES',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    productCategories.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'CATEGORY_ID',
        type: QueryElementType.column,
        parent: productCategories,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'CATEGORY_NAME',
        type: QueryElementType.column,
        parent: productCategories,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // PRODUCTS
    final products = QueryElement(
      id: const Uuid().v1(),
      name: 'PRODUCTS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    products.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'PRODUCT_ID',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'PRODUCT_NAME',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'DESCRIPTION',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'STANDARD_COST',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'LIST_PRICE',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'CATEGORY_ID',
        type: QueryElementType.column,
        parent: products,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // REGIONS
    final regions = QueryElement(
      id: const Uuid().v1(),
      name: 'REGIONS',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    regions.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'REGION_ID',
        type: QueryElementType.column,
        parent: regions,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'REGION_NAME',
        type: QueryElementType.column,
        parent: regions,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ]);

    // WAREHOUSES
    final warehouse = QueryElement(
      id: const Uuid().v1(),
      name: 'WAREHOUSES',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(growable: true),
    );

    warehouse.elements.addAll([
      QueryElement(
        id: const Uuid().v1(),
        name: 'WAREHOUSE_ID',
        type: QueryElementType.column,
        parent: warehouse,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'WAREHOUSE_NAME',
        type: QueryElementType.column,
        parent: warehouse,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
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
      products,
      productCategories,
      regions,
      warehouse,
    ];
  }

  @override
  Future<QuerySchema> parseQuery(String query) async {
    final sources = await getSources();
    final query1 = Query(
      id: const Uuid().v1(),
      name: 'Query 1',
      sources: sources,
      tables: [...[]],
      fields: [...[]],
      joins: [...[]],
      groupings: [...[]],
      aggregates: [...[]],
      conditions: [...[]],
      orders: [...[]],
      isTop: false,
      topCounter: 0,
      isDistinct: false,
    );

    final query2 = Query(
      id: const Uuid().v1(),
      name: 'Query 2',
      sources: sources,
      tables: [...[]],
      fields: [...[]],
      joins: [...[]],
      groupings: [...[]],
      aggregates: [...[]],
      conditions: [...[]],
      orders: [...[]],
      isTop: false,
      topCounter: 0,
      isDistinct: false,
    );

    final batch = QueryBatch(
      id: const Uuid().v1(),
      name: 'Query batch 1',
      sources: [...[]],
      queries: [query1, query2],
      aliases: Map.identity(),
      queryType: QueryType.selectQuery,
      tempTableName: '',
    );

    final querySchema = QuerySchema(queryBatches: [batch]);

    return querySchema;
  }
}
