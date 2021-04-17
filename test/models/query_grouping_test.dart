import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/models.dart';

void main() {
  test('QueryGrouping initialized', () {
    final groupingSet =
        QueryGrouping(name: 'Parent table', type: GroupingType.groupingSet);
    final groupings = [
      QueryGrouping(name: 'Grouping 1', type: GroupingType.grouping),
      QueryGrouping(name: 'Grouping 2', type: GroupingType.grouping),
      QueryGrouping(name: 'Grouping 3', type: GroupingType.grouping),
    ];

    final grouping = QueryGrouping.withElementsAndParent(
        name: 'Child Grouping',
        type: GroupingType.grouping,
        elements: groupings,
        parent: groupingSet);

    expect(grouping.parent, groupingSet);
    expect(grouping.hasElements, true);
    expect(
        grouping.props,
        equals([
          grouping.name,
          grouping.type,
          grouping.parent,
          grouping.elements
        ]));
  });
}
