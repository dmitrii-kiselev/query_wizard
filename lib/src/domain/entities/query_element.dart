import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

//ignore: must_be_immutable
class QueryElement extends Equatable implements IEntity {
  QueryElement({
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
  String? alias;
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
