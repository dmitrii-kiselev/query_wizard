import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QuerySchema initialized', () {
    const schema = QuerySchema(queryBatches: []);

    expect(schema.queryBatches, []);
  });
}
