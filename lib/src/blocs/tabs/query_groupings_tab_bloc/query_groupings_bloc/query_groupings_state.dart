import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryGroupingsState extends Equatable {
  final List<QueryGrouping> groupings;

  const QueryGroupingsState({required this.groupings});

  @override
  List<Object?> get props => [groupings];
}

class QueryGroupingsInitial extends QueryGroupingsState {
  QueryGroupingsInitial({List<QueryGrouping>? groupings})
      : super(groupings: groupings ?? []);
}

class QueryGroupingsChanged extends QueryGroupingsState {
  QueryGroupingsChanged({required List<QueryGrouping> groupings})
      : super(groupings: groupings);
}
