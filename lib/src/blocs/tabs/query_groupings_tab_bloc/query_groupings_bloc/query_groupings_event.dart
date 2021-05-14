import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryGroupingsEvent extends Equatable {}

class QueryGroupingsInitialized extends QueryGroupingsEvent {
  final List<QueryGrouping> groupings;

  QueryGroupingsInitialized({required this.groupings});

  List<Object?> get props => [groupings];
}

class QueryGroupingAdded extends QueryGroupingsEvent {
  final QueryGrouping grouping;

  QueryGroupingAdded({required this.grouping});

  List<Object?> get props => [grouping];
}

class QueryGroupingRemoved extends QueryGroupingsEvent {
  final int index;

  QueryGroupingRemoved({required this.index});

  List<Object?> get props => [index];
}

class QueryGroupingOrderChanged extends QueryGroupingsEvent {
  final int oldIndex;
  final int newIndex;

  QueryGroupingOrderChanged({required this.oldIndex, required this.newIndex});

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
