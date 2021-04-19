import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryJoinsTabState extends Equatable {
  final List<QueryJoin> joins;

  const QueryJoinsTabState({required this.joins});

  @override
  List<Object?> get props => [joins];
}

class QueryJoinsInitial extends QueryJoinsTabState {
  QueryJoinsInitial({List<QueryJoin>? joins}) : super(joins: joins ?? []);
}

class QueryJoinsChanged extends QueryJoinsTabState {
  QueryJoinsChanged({required List<QueryJoin> joins}) : super(joins: joins);
}
