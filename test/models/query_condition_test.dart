import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryJoin initialized', () {
    const join = QueryJoin(
      leftTable: '',
      isLeftAll: false,
      rightTable: '',
      isRightAll: false,
      condition: QueryCondition.empty(),
    );

    expect(join, const QueryJoin.empty());
    expect(
      join.props,
      equals([
        join.leftTable,
        join.isLeftAll,
        join.rightTable,
        join.isRightAll,
        join.condition,
      ]),
    );
  });

  test('Empty join initialized', () {
    const join = QueryJoin.empty();
    const expected = QueryJoin(
      leftTable: '',
      isLeftAll: false,
      rightTable: '',
      isRightAll: false,
      condition: QueryCondition.empty(),
    );

    expect(join, expected);
  });
}
