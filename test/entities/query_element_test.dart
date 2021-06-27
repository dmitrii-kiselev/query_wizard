import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

void main() {
  test('QueryElement initialized', () {
    final parentTable = QueryElement(
      id: const Uuid().v1(),
      name: 'Parent table',
      type: QueryElementType.column,
      elements: List<QueryElement>.empty(growable: true),
    );
    final columns = [
      QueryElement(
        id: const Uuid().v1(),
        name: 'Field 1',
        type: QueryElementType.column,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'Field 2',
        type: QueryElementType.column,
        elements: List<QueryElement>.empty(growable: true),
      ),
      QueryElement(
        id: const Uuid().v1(),
        name: 'Field 3',
        type: QueryElementType.column,
        elements: List<QueryElement>.empty(growable: true),
      ),
    ];

    final element = QueryElement(
      id: const Uuid().v1(),
      name: 'Child table',
      type: QueryElementType.table,
      elements: columns,
      parent: parentTable,
    );

    expect(element.parent, parentTable);
    expect(element.elements.isNotEmpty, true);
    expect(
      element.props,
      equals([
        element.id,
        element.name,
        '',
        element.type,
        element.parent,
        element.elements,
      ]),
    );
  });
}
