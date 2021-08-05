import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryCondition initialized', () {
    const condition = QueryCondition(
      id: '',
      isCustom: false,
      logicalCompareType: LogicalCompareType.equal,
      customCondition: '',
    );

    expect(condition, const QueryCondition.empty());
    expect(
      condition.props,
      equals([
        condition.id,
        condition.isCustom,
        condition.leftField,
        condition.logicalCompareType,
        condition.rightField,
        condition.customCondition,
      ]),
    );
  });

  test('Empty QueryCondition initialized', () {
    const condition = QueryCondition.empty();
    const expected = QueryCondition(
      id: '',
      isCustom: false,
      logicalCompareType: LogicalCompareType.equal,
      customCondition: '',
    );

    expect(condition, expected);
  });
}
