import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryGroupingsEvent extends Equatable {
  const QueryGroupingsEvent();
}

class QueryGroupingsInitialized extends QueryGroupingsEvent {
  const QueryGroupingsInitialized({required this.groupings});

  final List<QueryGrouping> groupings;

  List<Object?> get props => [groupings];
}

class QueryGroupingAdded extends QueryGroupingsEvent {
  const QueryGroupingAdded({required this.grouping});

  final QueryGrouping grouping;

  List<Object?> get props => [grouping];
}

class QueryGroupingDeleted extends QueryGroupingsEvent {
  const QueryGroupingDeleted({required this.index});

  final int index;

  List<Object?> get props => [index];
}

class QueryGroupingOrderChanged extends QueryGroupingsEvent {
  const QueryGroupingOrderChanged(
      {required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
