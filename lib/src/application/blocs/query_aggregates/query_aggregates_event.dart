part of 'query_aggregates_bloc.dart';

@freezed
class QueryAggregatesEvent with _$QueryAggregatesEvent {
  const factory QueryAggregatesEvent.initialized({
    required List<QueryAggregate> aggregates,
  }) = _Initialized;

  const factory QueryAggregatesEvent.aggregateAdded({
    required QueryAggregate aggregate,
  }) = _AggregateAdded;

  const factory QueryAggregatesEvent.aggregateUpdated({
    required int index,
    required QueryAggregate aggregate,
  }) = _AggregateCopied;

  const factory QueryAggregatesEvent.aggregateDeleted({
    required int index,
  }) = _AggregateDeleted;

  const factory QueryAggregatesEvent.aggregateOrderChanged({
    required int oldIndex,
    required int newIndex,
  }) = _AggregateOrderChanged;
}
