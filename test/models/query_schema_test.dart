import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/models.dart';

void main() {
  test('QuerySchema initialized', () {
    final schema = QuerySchema(queryBatches: []);

    expect(schema.queryBatches, []);
    expect(schema.props, equals([schema.queryBatches]));
  });
}
