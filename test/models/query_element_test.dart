import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryElement initialized', () {
    final parentTable =
        QueryElement(name: 'Parent table', type: QueryElementType.column);
    final columns = [
      QueryElement(name: 'Field 1', type: QueryElementType.column),
      QueryElement(name: 'Field 2', type: QueryElementType.column),
      QueryElement(name: 'Field 3', type: QueryElementType.column),
    ];

    final element = QueryElement.withElementsAndParent(
        name: 'Child table',
        type: QueryElementType.table,
        elements: columns,
        parent: parentTable);

    expect(element.parent, parentTable);
    expect(element.hasElements, true);
    expect(
        element.props,
        equals([
          element.name,
          '',
          element.type,
          element.parent,
          element.elements
        ]));
  });
}
