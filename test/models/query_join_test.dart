import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryCondition initialized', () {
    const condition = QueryCondition(
      isCustom: false,
      leftField: '',
      logicalCompareType: '',
      rightField: '',
      customCondition: '',
    );

    expect(condition, QueryCondition.empty());
  });

  test('Empty QueryCondition initialized', () {
    final condition = QueryCondition.empty();
    const expected = QueryCondition(
      isCustom: false,
      leftField: '',
      logicalCompareType: '',
      rightField: '',
      customCondition: '',
    );

    expect(condition, expected);
  });
}
