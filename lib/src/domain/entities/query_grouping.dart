import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryGrouping extends Equatable implements IEntity {
  const QueryGrouping({
    required this.id,
    required this.name,
    required this.type,
    this.parent,
    required this.elements,
  });

  @override
  final String id;
  final String name;
  final QueryGroupingType type;
  final QueryGrouping? parent;
  final List<QueryGrouping> elements;

  @override
  List<Object> get props => [
        id,
        name,
        type,
        parent ?? '',
        elements,
      ];

  @override
  String toString() {
    return '$name $type';
  }
}
