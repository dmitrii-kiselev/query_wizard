import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryElement extends Equatable {
  const QueryElement({
    required this.name,
    this.alias,
    required this.type,
    this.parent,
    required this.elements,
  });

  final String name;
  final String? alias;
  final QueryElementType type;
  final QueryElement? parent;
  final List<QueryElement> elements;

  @override
  List<Object> get props => [
        name,
        alias ?? '',
        type,
        parent ?? '',
        elements,
      ];
}
