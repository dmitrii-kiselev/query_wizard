import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryOrderTabState extends Equatable {
  const QueryOrderTabState({required this.sortings});

  final List<QuerySorting> sortings;

  @override
  List<Object?> get props => [sortings];
}

class QueryOrderTabInitial extends QueryOrderTabState {
  QueryOrderTabInitial({List<QuerySorting>? sortings})
      : super(sortings: sortings ?? []);
}

class QuerySortingsChanged extends QueryOrderTabState {
  const QuerySortingsChanged({required List<QuerySorting> sortings})
      : super(sortings: sortings);
}
