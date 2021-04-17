import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/models.dart';

void main() {
  test('QueryBatch initialized', () {
    final batch = QueryBatch(
        name: '',
        sources: [],
        queries: [],
        aliases: Map.identity(),
        queryType: QueryType.selectQuery);

    expect(batch.name, '');
    expect(batch.sources, []);
    expect(batch.queries, []);
    expect(batch.aliases, Map.identity());
    expect(batch.queryType, QueryType.selectQuery);
    expect(
        batch.props,
        equals([
          batch.name,
          batch.sources,
          batch.queries,
          batch.aliases,
          batch.queryType
        ]));
  });
}
