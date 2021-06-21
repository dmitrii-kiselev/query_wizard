import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryGrouping initialized', () {
    const groupingSet = QueryGrouping(
      name: 'Parent table',
      type: QueryGroupingType.groupingSet,
      elements: [],
    );
    const groupings = [
      QueryGrouping(
        name: 'Grouping 1',
        type: QueryGroupingType.grouping,
        elements: [],
      ),
      QueryGrouping(
        name: 'Grouping 2',
        type: QueryGroupingType.grouping,
        elements: [],
      ),
      QueryGrouping(
        name: 'Grouping 3',
        type: QueryGroupingType.grouping,
        elements: [],
      ),
    ];

    const grouping = QueryGrouping(
      name: 'Child Grouping',
      type: QueryGroupingType.grouping,
      elements: groupings,
      parent: groupingSet,
    );

    expect(grouping.parent, groupingSet);
  });
}
