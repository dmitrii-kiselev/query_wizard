import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('Query initialized', () {
    const query = Query(
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
  });

  test('Empty query initialized', () {
    final query = Query.empty();
    const expected = Query(
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

    expect(query, expected);
  });

  test('Empty query copied', () {
    final query = Query.empty();
    final copiedQuery = query.copyWith();

    expect(query, copiedQuery);
  });
}
