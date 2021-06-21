import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryBatch initialized', () {
    final batch = QueryBatch(
      name: '',
      sources: [...[]],
      queries: [...[]],
      aliases: Map.identity(),
      queryType: QueryType.selectQuery,
    );

    expect(batch, QueryBatch.empty());
  });

  test('Empty query batch initialized', () {
    final batch = QueryBatch.empty();
    final expected = QueryBatch(
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
    final copiedBatch = batch.copyWith();

    expect(batch, copiedBatch);
  });
}
