import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryGrouping initialized', () {
    final groupingSet = QueryGrouping(
      name: 'Parent table',
      type: QueryGroupingType.groupingSet,
      elements: List<QueryGrouping>.empty(growable: true),
    );
    final groupings = [
      QueryGrouping(
        name: 'Grouping 1',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        name: 'Grouping 2',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        name: 'Grouping 3',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
    ];

    final grouping = QueryGrouping(
      name: 'Child Grouping',
      type: QueryGroupingType.grouping,
      elements: groupings,
      parent: groupingSet,
    );

    expect(grouping.parent, groupingSet);
    expect(grouping.elements.isNotEmpty, true);
    expect(
      grouping.props,
      equals([
        grouping.name,
        grouping.type,
        grouping.parent,
        grouping.elements,
      ]),
    );
  });
}
