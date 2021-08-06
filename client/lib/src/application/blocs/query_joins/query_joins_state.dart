part of 'query_joins_bloc.dart';

abstract class QueryJoinsState extends Equatable {
  const QueryJoinsState({required this.joins});

  final List<QueryJoin> joins;

  @override
  List<Object?> get props => [joins];
}

class QueryJoinsInitial extends QueryJoinsState {
  QueryJoinsInitial({List<QueryJoin>? joins}) : super(joins: joins ?? []);
}

class QueryJoinsChanged extends QueryJoinsState {
  const QueryJoinsChanged({required List<QueryJoin> joins})
      : super(joins: joins);
}
