import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryElement initialized', () {
    const parentTable = QueryElement(
      name: 'Parent table',
      type: QueryElementType.column,
      elements: [],
    );
    const columns = [
      QueryElement(
        name: 'Field 1',
        type: QueryElementType.column,
        elements: [],
      ),
      QueryElement(
        name: 'Field 2',
        type: QueryElementType.column,
        elements: [],
      ),
      QueryElement(
        name: 'Field 3',
        type: QueryElementType.column,
        elements: [],
      ),
    ];

    const element = QueryElement(
      name: 'Child table',
      type: QueryElementType.table,
      elements: columns,
      parent: parentTable,
    );

    expect(element.parent, parentTable);
  });
}
