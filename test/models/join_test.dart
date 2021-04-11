import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/models.dart';

void main() {
  test('Condition initialized', () {
    final condition = Condition(
        isCustom: false,
        leftField: '',
        logicalCompareType: '',
        rightField: '',
        customCondition: '');

    expect(condition, Condition.empty());
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

  test('Empty condition initialized', () {
    final condition = Condition.empty();
    final expected = Condition(
        isCustom: false,
        leftField: '',
        logicalCompareType: '',
        rightField: '',
        customCondition: '');

    expect(condition, expected);
  });
}
