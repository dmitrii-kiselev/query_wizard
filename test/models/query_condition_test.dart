import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryJoin initialized', () {
    final join = QueryJoin(
      leftTable: '',
      isLeftAll: false,
      rightTable: '',
      isRightAll: false,
      condition: QueryCondition.empty(),
    );

    expect(join, QueryJoin.empty());
  });

  test('Empty join initialized', () {
    final join = QueryJoin.empty();
    final expected = QueryJoin(
      leftTable: '',
      isLeftAll: false,
      rightTable: '',
      isRightAll: false,
      condition: QueryCondition.empty(),
    );

    expect(join, expected);
  });
}
