import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

extension CopyQueryElement on QueryElement {
  QueryElement copy() {
    final newElement = QueryElement(
      id: const Uuid().v1(),
      name: name,
      alias: alias,
      type: type,
      parent: parent,
      elements: List<QueryElement>.empty(growable: true),
    );

    final newElements = elements
        .map(
          (e) => QueryElement(
            id: const Uuid().v1(),
            name: e.name,
            type: e.type,
            parent: newElement,
            elements: e.elements,
          ),
        )
        .toList();

    newElement.elements.addAll(newElements);

    return newElement;
  }

  QueryElement copyWith({
    String? id,
    String? name,
    String? alias,
    QueryElementType? type,
    QueryElement? parent,
    List<QueryElement>? elements,
  }) =>
      QueryElement(
        id: id ?? const Uuid().v1(),
        name: name ?? this.name,
        alias: alias ?? this.alias,
        type: type ?? this.type,
        parent: parent ?? this.parent,
        elements: elements ?? this.elements,
      );
}
