part of 'query_aggregates_bloc.dart';

@freezed
class QueryAggregatesState with _$QueryAggregatesState {
  const factory QueryAggregatesState({
    required List<QueryAggregate> aggregates,
  }) = _QueryAggregatesState;

  factory QueryAggregatesState.initial() => QueryAggregatesState(
        aggregates: List<QueryAggregate>.empty(growable: true),
      );
}
