import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryGrouping extends Equatable {
  const QueryGrouping({
    required this.name,
    required this.type,
    this.parent,
    required this.elements,
  });

  final String name;
  final QueryGroupingType type;
  final QueryGrouping? parent;
  final List<QueryGrouping> elements;

  @override
  List<Object> get props => [
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
