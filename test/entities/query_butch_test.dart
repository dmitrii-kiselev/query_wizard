import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryBatch initialized', () {
    final batch = QueryBatch(
      id: '',
      name: '',
      sources: [...[]],
      queries: [...[]],
      aliases: Map.identity(),
      queryType: QueryType.selectQuery,
    );

    expect(batch, QueryBatch.empty());
    expect(
      batch.props,
      equals([
        batch.id,
        batch.name,
        batch.sources,
        batch.queries,
        batch.aliases,
        batch.queryType,
      ]),
    );
  });

  test('Empty query batch initialized', () {
    final batch = QueryBatch.empty();
    final expected = QueryBatch(
      id: '',
      name: '',
      sources: [...[]],
      queries: [...[]],
      aliases: Map.identity(),
      queryType: QueryType.selectQuery,
    );

    expect(batch, expected);
  });

  test('Empty query batch copied', () {
    final batch = QueryBatch.empty();
    final copiedBatch = batch.copy();

    expect(batch.name, copiedBatch.name);
    expect(batch.sources, copiedBatch.sources);
    expect(batch.queries, copiedBatch.queries);
    expect(batch.aliases, copiedBatch.aliases);
    expect(batch.queryType, copiedBatch.queryType);
  });
}
