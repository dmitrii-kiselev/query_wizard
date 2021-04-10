import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/models.dart';

void main() {
  test('Join initialized', () {
    final join = Join(
        leftTableAlias: '',
        isLeftAll: false,
        rightTableAlias: '',
        isRightAll: false,
        condition: Condition.empty());

    expect(join, Join.empty());
    expect(
        join.props,
        equals([
          join.leftTableAlias,
          join.isLeftAll,
          join.rightTableAlias,
          join.isRightAll,
          join.condition
        ]));
  });

  test('Empty join initialized', () {
    final join = Join.empty();
    final expected = Join(
        leftTableAlias: '',
        isLeftAll: false,
        rightTableAlias: '',
        isRightAll: false,
        condition: Condition.empty());

    expect(join, expected);
  });
}
