import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/models.dart';

void main() {
  test('Join initialized', () {
    final join = Join(
        leftTable: '',
        isLeftAll: false,
        rightTable: '',
        isRightAll: false,
        condition: Condition.empty());

    expect(join, Join.empty());
    expect(
        join.props,
        equals([
          join.leftTable,
          join.isLeftAll,
          join.rightTable,
          join.isRightAll,
          join.condition
        ]));
  });

  test('Empty join initialized', () {
    final join = Join.empty();
    final expected = Join(
        leftTable: '',
        isLeftAll: false,
        rightTable: '',
        isRightAll: false,
        condition: Condition.empty());

    expect(join, expected);
  });
}
