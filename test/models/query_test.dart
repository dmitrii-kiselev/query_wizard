import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/models.dart';

void main() {
  test('Query initialized', () {
    final query = Query(
        name: '1',
        sources: [],
        tables: [],
        fields: [],
        joins: [],
        groupings: [],
        aggregates: [],
        conditions: [],
        sortings: [],
        isTop: false,
        topCounter: 0,
        isDistinct: false);

    expect(
        query.props,
        equals([
          query.name,
          query.sources,
          query.tables,
          query.fields,
          query.joins,
          query.groupings,
          query.aggregates,
          query.conditions,
          query.sortings,
          query.isTop,
          query.topCounter,
          query.isDistinct
        ]));
  });
}
