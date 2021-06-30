import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryGrouping initialized', () {
    final groupingSet = QueryGrouping(
      id: const Uuid().v1(),
      field: 'Parent table',
      type: QueryGroupingType.groupingSet,
      elements: List<QueryGrouping>.empty(growable: true),
    );
    final groupings = [
      QueryGrouping(
        id: const Uuid().v1(),
        field: 'Grouping 1',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        id: const Uuid().v1(),
        field: 'Grouping 2',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        id: const Uuid().v1(),
        field: 'Grouping 3',
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
    ];

    final grouping = QueryGrouping(
      id: const Uuid().v1(),
      field: 'Child Grouping',
      type: QueryGroupingType.grouping,
      elements: groupings,
      parent: groupingSet,
    );

    expect(grouping.parent, groupingSet);
    expect(grouping.elements.isNotEmpty, true);
    expect(
      grouping.props,
      equals([
        grouping.id,
        grouping.field,
        grouping.type,
        grouping.parent,
        grouping.elements,
      ]),
    );
  });
}
