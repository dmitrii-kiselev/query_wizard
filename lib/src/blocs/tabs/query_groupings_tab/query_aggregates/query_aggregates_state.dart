import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryAggregatesState extends Equatable {
  const QueryAggregatesState({required this.aggregates});

  final List<QueryAggregate> aggregates;

  @override
  List<Object?> get props => [aggregates];
}

class QueryAggregatesInitial extends QueryAggregatesState {
  QueryAggregatesInitial({List<QueryAggregate>? aggregates})
      : super(aggregates: aggregates ?? []);
}

class QueryAggregatesChanged extends QueryAggregatesState {
  const QueryAggregatesChanged({required List<QueryAggregate> aggregates})
      : super(aggregates: aggregates);
}
