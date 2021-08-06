import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryGrouping initialized', () {
    final field = QueryElement(
      id: const Uuid().v1(),
      name: 'table',
      type: QueryElementType.table,
      elements: List<QueryElement>.empty(),
    );
    final groupingSet = QueryGrouping(
      id: const Uuid().v1(),
      field: field,
      type: QueryGroupingType.groupingSet,
      elements: List<QueryGrouping>.empty(growable: true),
    );
    final groupings = [
      QueryGrouping(
        id: const Uuid().v1(),
        field: field,
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        id: const Uuid().v1(),
        field: field,
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
      QueryGrouping(
        id: const Uuid().v1(),
        field: field,
        type: QueryGroupingType.grouping,
        elements: List<QueryGrouping>.empty(growable: true),
      ),
    ];

    final grouping = QueryGrouping(
      id: const Uuid().v1(),
      field: field,
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
