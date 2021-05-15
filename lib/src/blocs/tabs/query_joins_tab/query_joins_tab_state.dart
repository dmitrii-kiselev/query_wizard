import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryJoinsTabState extends Equatable {
  const QueryJoinsTabState({required this.joins});

  final List<QueryJoin> joins;

  @override
  List<Object?> get props => [joins];
}

class QueryJoinsInitial extends QueryJoinsTabState {
  QueryJoinsInitial({List<QueryJoin>? joins}) : super(joins: joins ?? []);
}

class QueryJoinsChanged extends QueryJoinsTabState {
  const QueryJoinsChanged({required List<QueryJoin> joins})
      : super(joins: joins);
}
