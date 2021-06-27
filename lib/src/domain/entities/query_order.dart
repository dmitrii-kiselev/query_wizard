import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryOrder extends Equatable implements IEntity {
  const QueryOrder({
    required this.id,
    required this.field,
    required this.type,
  });

  @override
  final String id;
  final String field;
  final QuerySortingType type;

  @override
  List<Object?> get props => [id, field, type];

  @override
  String toString() => '$field $type';
}
