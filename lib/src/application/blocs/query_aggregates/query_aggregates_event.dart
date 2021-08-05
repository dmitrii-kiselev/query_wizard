part of 'query_aggregates_bloc.dart';

abstract class QueryAggregatesEvent extends Equatable {
  const QueryAggregatesEvent();
}

class QueryAggregatesInitialized extends QueryAggregatesEvent {
  const QueryAggregatesInitialized({required this.aggregates});

  final List<QueryAggregate> aggregates;

  @override
  List<Object?> get props => [aggregates];
}

class QueryAggregateAdded extends QueryAggregatesEvent {
  const QueryAggregateAdded({required this.aggregate});

  final QueryAggregate aggregate;

  @override
  List<Object?> get props => [aggregate];
}

class QueryAggregateUpdated extends QueryAggregatesEvent {
  const QueryAggregateUpdated({required this.aggregate});

  final QueryAggregate aggregate;

  @override
  List<Object?> get props => [aggregate];
}

class QueryAggregateDeleted extends QueryAggregatesEvent {
  const QueryAggregateDeleted({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryAggregateOrderChanged extends QueryAggregatesEvent {
  const QueryAggregateOrderChanged({
    required this.oldIndex,
    required this.newIndex,
  });

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}

class QueryAggregatesRemoveByTableId extends QueryAggregatesEvent {
  const QueryAggregatesRemoveByTableId({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}
