import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryOrderTabEvent extends Equatable {
  const QueryOrderTabEvent();
}

class QueryOrderTabInitialized extends QueryOrderTabEvent {
  const QueryOrderTabInitialized({required this.sortings});

  final List<QuerySorting> sortings;

  List<Object?> get props => [sortings];
}

class QuerySortingAdded extends QueryOrderTabEvent {
  const QuerySortingAdded({required this.sorting});

  final QuerySorting sorting;

  List<Object?> get props => [sorting];
}

class QuerySortingRemoved extends QueryOrderTabEvent {
  const QuerySortingRemoved({required this.index});

  final int index;

  List<Object?> get props => [index];
}

class QuerySortingOrderChanged extends QueryOrderTabEvent {
  const QuerySortingOrderChanged(
      {required this.oldIndex, required this.newIndex});

  final int oldIndex;
  final int newIndex;

  @override
  List<Object?> get props => [oldIndex, newIndex];
}
