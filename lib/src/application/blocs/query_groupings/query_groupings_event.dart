part of 'query_groupings_bloc.dart';

abstract class QueryGroupingsEvent extends Equatable {
  const QueryGroupingsEvent();
}

class QueryGroupingsInitialized extends QueryGroupingsEvent {
  const QueryGroupingsInitialized({required this.groupings});

  final List<QueryGrouping> groupings;

  @override
  List<Object?> get props => [groupings];
}

class QueryGroupingAdded extends QueryGroupingsEvent {
  const QueryGroupingAdded({required this.grouping});

  final QueryGrouping grouping;

  @override
  List<Object?> get props => [grouping];
}

class QueryGroupingDeleted extends QueryGroupingsEvent {
  const QueryGroupingDeleted({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class QueryGroupingOrderChanged extends QueryGroupingsEvent {
  const QueryGroupingOrderChanged({
    required this.oldIndex,
    required this.newIndex,
  });

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
