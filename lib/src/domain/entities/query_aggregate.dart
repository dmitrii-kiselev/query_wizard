import 'package:equatable/equatable.dart';

import 'package:query_wizard/domain.dart';

class QueryAggregate extends Equatable implements IEntity {
  const QueryAggregate({
    required this.id,
    required this.field,
    required this.function,
  });

  @override
  final String id;
  final String field;
  final String function;

  @override
  List<Object?> get props => [id, field, function];

  @override
  String toString() {
    return '$field $function';
  }
}
