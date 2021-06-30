import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

extension CopyQueryElement on QueryElement {
  QueryElement copy() => QueryElement(
        id: const Uuid().v1(),
        name: name,
        alias: alias,
        type: type,
        parent: parent,
        elements: elements,
      );

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
