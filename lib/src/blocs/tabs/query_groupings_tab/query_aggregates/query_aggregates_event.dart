import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryAggregatesEvent extends Equatable {
  const QueryAggregatesEvent();
}

class QueryAggregatesInitialized extends QueryAggregatesEvent {
  const QueryAggregatesInitialized({required this.aggregates});

  final List<QueryAggregate> aggregates;

  List<Object?> get props => [aggregates];
}

class QueryAggregateAdded extends QueryAggregatesEvent {
  const QueryAggregateAdded({required this.aggregate});

  final QueryAggregate aggregate;

  List<Object?> get props => [aggregate];
}

class QueryAggregateRemoved extends QueryAggregatesEvent {
  const QueryAggregateRemoved({required this.index});

  final int index;

  List<Object?> get props => [index];
}

class QueryAggregateOrderChanged extends QueryAggregatesEvent {
  const QueryAggregateOrderChanged(
      {required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
