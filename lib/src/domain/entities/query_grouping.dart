import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryGrouping extends Equatable implements IEntity {
  const QueryGrouping({
    required this.id,
    required this.field,
    required this.type,
    this.parent,
    required this.elements,
  });

  @override
  final String id;
  final QueryElement field;
  final QueryGroupingType type;
  final QueryGrouping? parent;
  final List<QueryGrouping> elements;

  @override
  List<Object> get props => [
        id,
        field,
        type,
        parent ?? '',
        elements,
      ];
}
