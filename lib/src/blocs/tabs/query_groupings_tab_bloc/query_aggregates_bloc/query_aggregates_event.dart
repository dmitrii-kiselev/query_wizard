import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryAggregatesEvent extends Equatable {}

class QueryAggregatesInitialized extends QueryAggregatesEvent {
  final List<QueryAggregate> aggregates;

  QueryAggregatesInitialized({required this.aggregates});

  List<Object?> get props => [aggregates];
}

class QueryAggregateAdded extends QueryAggregatesEvent {
  final QueryAggregate aggregate;

  QueryAggregateAdded({required this.aggregate});

  List<Object?> get props => [aggregate];
}

class QueryAggregateRemoved extends QueryAggregatesEvent {
  final int index;

  QueryAggregateRemoved({required this.index});

  List<Object?> get props => [index];
}

class QueryAggregateOrderChanged extends QueryAggregatesEvent {
  final int oldIndex;
  final int newIndex;

  QueryAggregateOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
