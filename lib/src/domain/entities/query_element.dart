import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

import 'package:query_wizard/domain.dart';

class QueryElement extends Equatable implements IEntity {
  const QueryElement({
    required this.id,
    required this.name,
    this.alias,
    required this.type,
    this.parent,
    required this.elements,
  });

  @override
  final String id;
  final String name;
  final String? alias;
  final QueryElementType type;
  final QueryElement? parent;
  final List<QueryElement> elements;

  @override
  List<Object> get props => [
        id,
        name,
        alias ?? '',
        type,
        parent ?? '',
        elements,
      ];
}

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
