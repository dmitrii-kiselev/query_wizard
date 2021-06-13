import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryCondition initialized', () {
    const condition = QueryCondition(
        isCustom: false,
        leftField: '',
        logicalCompareType: '',
        rightField: '',
        customCondition: '');

    expect(condition, const QueryCondition.empty());
    expect(
        condition.props,
        equals([
          condition.isCustom,
          condition.leftField,
          condition.logicalCompareType,
          condition.rightField,
          condition.customCondition
        ]));
  });

  test('Empty QueryCondition initialized', () {
    const condition = QueryCondition.empty();
    const expected = QueryCondition(
        isCustom: false,
        leftField: '',
        logicalCompareType: '',
        rightField: '',
        customCondition: '');

    expect(condition, expected);
  });
}
