import 'package:flutter_test/flutter_test.dart';

import 'package:query_wizard/models.dart';

void main() {
  test('DbElement initialized', () {
    final parentTable =
        DbElement(name: 'Parent table', nodeType: DbNodeType.column);
    final columns = [
      DbElement(name: 'Field 1', nodeType: DbNodeType.column),
      DbElement(name: 'Field 2', nodeType: DbNodeType.column),
      DbElement(name: 'Field 3', nodeType: DbNodeType.column),
    ];

    final element = DbElement.withElementsAndParent(
        name: 'Child table',
        nodeType: DbNodeType.table,
        elements: columns,
        parent: parentTable);

    expect(element.parent, parentTable);
    expect(element.hasElements, true);
    expect(
        element.props,
        equals([
          element.name,
          element.alias,
          element.nodeType,
          element.parent,
          element.elements
        ]));
  });
}
