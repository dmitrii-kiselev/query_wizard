import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('Query initialized', () {
    const query = Query(
      id: '',
      name: 'Query',
      sources: [],
      tables: [],
      fields: [],
      joins: [],
      groupings: [],
      aggregates: [],
      conditions: [],
      orders: [],
      isTop: false,
      topCounter: 0,
      isDistinct: false,
    );

    expect(query, Query.empty());
    expect(
      query.props,
      equals([
        query.id,
        query.name,
        query.sources,
        query.tables,
        query.fields,
        query.joins,
        query.groupings,
        query.aggregates,
        query.conditions,
        query.orders,
        query.isTop,
        query.topCounter,
        query.isDistinct,
      ]),
    );
  });

  test('Empty query initialized', () {
    final query = Query.empty();
    const expected = Query(
      id: '',
      name: 'Query',
      sources: [],
      tables: [],
      fields: [],
      joins: [],
      groupings: [],
      aggregates: [],
      conditions: [],
      orders: [],
      isTop: false,
      topCounter: 0,
      isDistinct: false,
    );

    expect(query.name, expected.name);
    expect(query.sources, expected.sources);
    expect(query.tables, expected.tables);
    expect(query.fields, expected.fields);
    expect(query.joins, expected.joins);
    expect(query.groupings, expected.groupings);
    expect(query.aggregates, expected.aggregates);
    expect(query.conditions, expected.conditions);
    expect(query.orders, expected.orders);
    expect(query.isTop, expected.isTop);
    expect(query.topCounter, expected.topCounter);
    expect(query.isDistinct, expected.isDistinct);
  });

  test('Empty query copied', () {
    final query = Query.empty();
    final copiedQuery = query.copy();

    expect(query.name, copiedQuery.name);
    expect(query.sources, copiedQuery.sources);
    expect(query.tables, copiedQuery.tables);
    expect(query.fields, copiedQuery.fields);
    expect(query.joins, copiedQuery.joins);
    expect(query.groupings, copiedQuery.groupings);
    expect(query.aggregates, copiedQuery.aggregates);
    expect(query.conditions, copiedQuery.conditions);
    expect(query.orders, copiedQuery.orders);
    expect(query.isTop, copiedQuery.isTop);
    expect(query.topCounter, copiedQuery.topCounter);
    expect(query.isDistinct, copiedQuery.isDistinct);
  });
}
